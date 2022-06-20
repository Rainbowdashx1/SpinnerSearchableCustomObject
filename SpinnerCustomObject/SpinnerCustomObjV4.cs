﻿using Android.Views;
using Android.Widget;
using SpinnerCustomObject.Component;
using System;
using System.Collections;
using System.Reflection;

namespace SpinnerCustomObject
{
    public class SpinnerCustomObjV4 : EditText
    {
        private SpinnerCustomV4 sc;
        private Android.Support.V4.App.FragmentManager fg;
        private object ResultData;
        private Android.Graphics.Color TextColorSpinner;
        private Android.Graphics.Color BackGroundColorSpinner;
        public SpinnerCustomObjV4(Android.Content.Context con, Android.Util.IAttributeSet attr) : base(con, attr)
        {
            var Attributes = con.ObtainStyledAttributes(attr, Resource.Styleable.SpinnerSearchableCustomObject);
            TextColorSpinner = Attributes.GetColor(Resource.Styleable.SpinnerSearchableCustomObject_TextColorSpinner, Resource.Color.DefaultTextColorSpinner);
            BackGroundColorSpinner = Attributes.GetColor(Resource.Styleable.SpinnerSearchableCustomObject_BackGroundColorSpinner, Resource.Color.DefaultBackGroundSpinner);
        }
        public delegate void EventHandler(object sender, object ResultData);
        public event EventHandler GetDataEvent;
        /// <summary>
        /// initialize the plugin by assigning data and its fragmentmanager
        /// </summary>
        public void SetData(Android.Support.V4.App.FragmentManager fg, IList Data)
        {
            sc = new SpinnerCustomV4(Data, BackGroundColorSpinner, TextColorSpinner);
            sc.EventClickSpinner += Sc_EventClickSpinner;
            this.fg = fg;
        }
        private void Sc_EventClickSpinner(object sender, SpinnerCustomV4.DialogEventArgs args)
        {
            ResultData = args.SpinnerModel;

            foreach (PropertyInfo Property in ResultData.GetType().GetProperties())
            {
                var AttributeProperty = ResultData.GetType().GetProperty(Property.Name).GetCustomAttributesData();
                if (AttributeProperty.Count > 0)
                {
                    foreach (CustomAttributeData cad in AttributeProperty)
                    {
                        if (cad.AttributeType.Name == "TextoAttribute")
                        {
                            this.Text = ResultData.GetType().GetProperty(Property.Name).GetValue(ResultData, null).ToString();
                            if (GetDataEvent != null)
                                GetDataEvent(this, ResultData);
                            break;
                        }
                    }
                }
            }
            sc.Dismiss();
        }
        /// <summary>
        /// Returns the selected object in the touch event(reflection is recommended)
        /// </summary>
        public object GetDataClick()
        {
            return ResultData;
        }
        /// <summary>
        /// event that raises the spinner selection window
        /// </summary>
        public override bool OnTouchEvent(MotionEvent e)
        {
            try
            {
                if (e.Action == Android.Views.MotionEventActions.Down)
                {
                    if (!sc.IsVisible)
                    {
                        sc.Show(fg, "SpinnerCustomObj");
                    }
                }
            }
            catch (Exception ex) { }
            return false; //se devuelve false para que no aparezca el teclado en pantalla
        }
    }
}