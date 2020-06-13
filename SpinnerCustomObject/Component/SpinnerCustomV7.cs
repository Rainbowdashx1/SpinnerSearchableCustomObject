using System;
using System.Collections;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Views;
using Android.Widget;
using SpinnerCustomObject.Adapter;

namespace SpinnerCustomObject.Component
{
    public class SpinnerCustomV7 : DialogFragment
    {
        private IList ObjData;
        private ListView Lista;
        private SearchView search;
        private AdapterSpinner adapter;
        public SpinnerCustomV7(IList ObjData)
        {
            this.ObjData = ObjData;
        }
        public class DialogEventArgs : EventArgs
        {
            public object SpinnerModel { get; set; }
        }

        public delegate void DialogEventHandler(object sender, DialogEventArgs args);

        public event DialogEventHandler EventClickSpinner;
        public override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
        }
        public override void OnActivityCreated(Bundle savedInstanceState)
        {
            base.OnActivityCreated(savedInstanceState);
            Elementos();
        }
        public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {
            return inflater.Inflate(Resource.Layout.Spinner, container, false);
        }
        public void Elementos()
        {
            adapter = new AdapterSpinner(base.Context, ObjData);
            Lista = View.FindViewById<ListView>(Resource.Id.listItems);
            search = View.FindViewById<SearchView>(Resource.Id.search);
            Lista.Adapter = adapter;
            Lista.ItemClick += Lista_ItemClick;
            search.QueryTextChange += Search_QueryTextChange;
        }
        private void Search_QueryTextChange(object sender, SearchView.QueryTextChangeEventArgs e)
        {
            if (e.NewText.Length == 0)
            {
                adapter.resetData();
            }
            adapter.Filter.InvokeFilter(e.NewText);
        }
        public override void OnDismiss(IDialogInterface dialog)
        {
            search.SetQuery("", false);
            base.OnDismiss(dialog);
        }
        private void Lista_ItemClick(object sender, AdapterView.ItemClickEventArgs e)
        {
            ListView listaInterna = sender as ListView;
            object SpinerModel = ((AdapterSpinner)listaInterna.Adapter).getObject(e.Position);
            if (null != EventClickSpinner)
                EventClickSpinner(this, new DialogEventArgs { SpinnerModel = SpinerModel });
        }
    }
}