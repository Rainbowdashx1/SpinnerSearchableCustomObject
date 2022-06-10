using System;
using System.Collections;
using System.Reflection;
using Android.Views;
using Android.Widget;

namespace SpinnerCustomObject.Adapter
{
    public class AdapterSpinner : BaseAdapter<object>, IFilterable
    {
        private Android.Content.Context context;
        public IList modelsArrayListparam;
        public IList OrimodelsArrayListparam;
        private TextView Texto;
        private Filter modelFilter;
        private string TextoView;
        private string TextColor;
        private Android.Graphics.Color TextColorSpinner;
        public AdapterSpinner(Android.Content.Context context, IList modelsArrayListparam, Android.Graphics.Color TextColorSpinner, string TextColor = "#000000")
        {
            this.context = context;
            this.modelsArrayListparam = modelsArrayListparam;
            this.OrimodelsArrayListparam = modelsArrayListparam;
            this.TextColor = TextColor;
            this.TextColorSpinner = TextColorSpinner;
            foreach (object obj in modelsArrayListparam)
            {
                foreach (PropertyInfo Property in obj.GetType().GetProperties())
                {
                    var AttributeProperty = obj.GetType().GetProperty(Property.Name).GetCustomAttributesData();
                    if (AttributeProperty.Count > 0)
                    {
                        foreach (CustomAttributeData cad in AttributeProperty)
                        {
                            if (cad.AttributeType.Name == "TextoAttribute")
                            {
                                TextoView = Property.Name;
                                break;
                            }
                        }
                    }
                }
                break;
            }
        }
        public override object this[int position] => throw new NotImplementedException();
        public Filter Filter
        {
            get
            {
                if (modelFilter == null)
                {
                    modelFilter = new AdapterSpinnerFilter(this, TextoView);
                }
                return modelFilter;
            }
        }
        public void resetData()
        {
            this.modelsArrayListparam = OrimodelsArrayListparam;
        }
        public object getObject(int posicion)
        {
            return modelsArrayListparam[posicion];
        }
        public override int Count
        {
            get
            {
                return this.modelsArrayListparam.Count;
            }
        }
        public override long GetItemId(int position)
        {
            return modelsArrayListparam[position].GetHashCode();
        }
        public override View GetView(int position, View convertView, ViewGroup parent)
        {
            View rowView = convertView;
            LayoutInflater inflater = (LayoutInflater)context.GetSystemService(Android.Content.Context.LayoutInflaterService);
            rowView = inflater.Inflate(Resource.Layout.SpinnerElement, parent, false);

            Texto = rowView.FindViewById<TextView>(Resource.Id.TextoSpinnerElement);
            Texto.SetTextColor(Android.Graphics.Color.ParseColor(TextColor));
            Texto.Text = modelsArrayListparam[position].GetType().GetProperty(TextoView).GetValue(modelsArrayListparam[position], null).ToString();
            Texto.SetTextColor(TextColorSpinner);
            return rowView;
        }
    }
}