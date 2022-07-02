using Android.Views;
using Android.Widget;
using SpinnerCustomObject.Component;
using System;
using System.Collections;

using System.Reflection;

namespace SpinnerCustomObject
{
    public class SpinnerCustomObj : EditText
    {
        private SpinnerCustomX  scx;
        private SpinnerCustomV4 scv4;
        private SpinnerCustomV7 scv7;
        private AndroidX.Fragment.App.FragmentManager fgx;
        private Android.Support.V4.App.FragmentManager fgv4;
        private Android.App.FragmentManager fgv7;
        private string Version = "";
        private object ResultData;
        private Android.Graphics.Color TextColorSpinner;
        private Android.Graphics.Color BackGroundColorSpinner;
        public SpinnerCustomObj(Android.Content.Context con, Android.Util.IAttributeSet attr) : base(con, attr)
        {
            var Attributes = con.ObtainStyledAttributes(attr, Resource.Styleable.SpinnerSearchableCustomObject);
            TextColorSpinner = Attributes.GetColor(Resource.Styleable.SpinnerSearchableCustomObject_TextColorSpinner, con.GetColor(Resource.Color.DefaultTextColorSpinner));
            BackGroundColorSpinner = Attributes.GetColor(Resource.Styleable.SpinnerSearchableCustomObject_BackGroundColorSpinner, con.GetColor(Resource.Color.DefaultBackGroundSpinner));
        }
        public delegate void EventHandler(object sender, object ResultData);
        public event EventHandler GetDataEvent;
        /// <summary>
        /// initialize the plugin by assigning data and its fragmentmanager ex AndroidX
        /// </summary>
        public void SetData(AndroidX.Fragment.App.FragmentManager fg, IList Data)
        {
            scx = new SpinnerCustomX(Data, BackGroundColorSpinner, TextColorSpinner);
            scx.EventClickSpinner += Sc_EventClickSpinnerSCX;
            Version = "X";
            this.fgx = fg;
        }
        /// <summary>
        /// initialize the plugin by assigning data and its fragmentmanager ex V4
        /// </summary>
        public void SetData(Android.Support.V4.App.FragmentManager fg, IList Data)
        {
            scv4 = new SpinnerCustomV4(Data, BackGroundColorSpinner, TextColorSpinner);
            scv4.EventClickSpinner += Sc_EventClickSpinnerV4;
            Version = "V4";
            this.fgv4 = fg;
        }
        /// <summary>
        /// initialize the plugin by assigning data and its fragmentmanager ex V7
        /// </summary>
        public void SetData(Android.App.FragmentManager fg, IList Data)
        {
            scv7 = new SpinnerCustomV7(Data, BackGroundColorSpinner, TextColorSpinner);
            scv7.EventClickSpinner += Sc_EventClickSpinnerV7;
            Version = "V7";
            this.fgv7 = fg;
        }
        private void Sc_EventClickSpinnerSCX(object sender, SpinnerCustomX.DialogEventArgs args)
        {
            MethodEventSpinner(args.SpinnerModel);
            scx.Dismiss();
        }
        private void Sc_EventClickSpinnerV4(object sender, SpinnerCustomV4.DialogEventArgs args)
        {
            MethodEventSpinner(args.SpinnerModel);
            scv4.Dismiss();
        }
        private void Sc_EventClickSpinnerV7(object sender, SpinnerCustomV7.DialogEventArgs args)
        {
            MethodEventSpinner(args.SpinnerModel);
            scv7.Dismiss();
        }
        private void MethodEventSpinner(object DataArgs) 
        {
            ResultData = DataArgs;
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
                    switch (Version)
                    {
                        case "X":
                            if (!scx.IsVisible)
                            {
                                scx.Show(fgx, "SpinnerCustomObj");
                            }
                            break;
                        case "V4":
                            if (!scv4.IsVisible)
                            {
                                scv4.Show(fgv4, "SpinnerCustomObj");
                            }
                            break;
                        case "V7":
                            if (!scv7.IsVisible)
                            {
                                scv7.Show(fgv7, "SpinnerCustomObj");
                            }
                            break;
                    }
                }
            }

            catch (Exception ex) 
            {

            }
            return false; //se devuelve false para que no aparezca el teclado en pantalla
        }
    }
}