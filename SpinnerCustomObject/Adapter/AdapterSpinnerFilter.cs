using System.Collections;
using System.Collections.Generic;
using Android.Widget;
using Java.Lang;

namespace SpinnerCustomObject.Adapter
{
    public class AdapterSpinnerFilter : Filter
    {
        private AdapterSpinner SpinnerAdapter;
        private string TextoView;
        private List<object> ListObj;
        public IList SpinnerObj;
        public AdapterSpinnerFilter(AdapterSpinner SpinnerAdapter, string TextoView)
        {
            this.TextoView = TextoView;
            this.SpinnerAdapter = SpinnerAdapter;
            ListObj = new List<object>();
        }
        protected override FilterResults PerformFiltering(ICharSequence constraint)
        {
            FilterResults results = new FilterResults();
            if (constraint == null || constraint.Length() == 0)
            {
                foreach (object Obj in SpinnerAdapter.OrimodelsArrayListparam)
                {
                    if (Obj.GetType().GetProperty(TextoView).GetValue(Obj, null).ToString().Contains(constraint.ToString()))
                    {
                        ListObj.Add(Obj);
                    }
                }
                Java.Lang.Object[] matchObjects = new Java.Lang.Object[ListObj.Count];
                int i = 0;
                foreach (object SO in ListObj)
                {
                    matchObjects[i] = new Java.Lang.String((SO.ToString()));
                    i++;
                }
                results.Count = ListObj.Count;
                results.Values = matchObjects;
            }
            else
            {

                foreach (object SO in SpinnerAdapter.OrimodelsArrayListparam)
                {
                    if (SO.GetType().GetProperty(TextoView).GetValue(SO, null).ToString().ToUpper().Contains(constraint.ToString().ToUpper()))
                    {
                        ListObj.Add(SO);
                    }
                }
                Java.Lang.Object[] matchObjects = new Java.Lang.Object[ListObj.Count];
                int i = 0;
                foreach (object SO in ListObj)
                {
                    matchObjects[i] = new Java.Lang.String((SO.ToString()));
                    i++;
                }
                results.Count = ListObj.Count;
                results.Values = matchObjects;
            }
            return results;
        }
        protected override void PublishResults(ICharSequence constraint, FilterResults results)
        {
            SpinnerObj = ListObj;
            SpinnerAdapter.modelsArrayListparam = SpinnerObj;
            SpinnerAdapter.NotifyDataSetChanged();
            ListObj = new List<object>();
        }
    }
}