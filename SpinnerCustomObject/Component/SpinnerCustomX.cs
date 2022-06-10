using Android.Content;
using Android.OS;
using Android.Views;
using Android.Widget;
using SpinnerCustomObject.Adapter;
using System;
using System.Collections;

namespace SpinnerCustomObject.Component
{
    public class SpinnerCustomX : AndroidX.Fragment.App.DialogFragment
    {
        private IList ObjData;
        private LinearLayout ContentSpinner;
        private ListView Lista;
        private SearchView search;
        private AdapterSpinner adapter;
        private Android.Graphics.Color TextColorSpinner;
        private Android.Graphics.Color BackGroundColorSpinner;
        public SpinnerCustomX(IList ObjData, Android.Graphics.Color BackGroundColorSpinner, Android.Graphics.Color TextColorSpinner)
        {
            this.ObjData = ObjData;
            this.BackGroundColorSpinner = BackGroundColorSpinner;
            this.TextColorSpinner = TextColorSpinner;
        }
        public SpinnerCustomX()
        {

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
            ContentSpinner = View.FindViewById<LinearLayout>(Resource.Id.ContentSpinner);
            adapter = new AdapterSpinner(Context, ObjData, TextColorSpinner);
            Lista = View.FindViewById<ListView>(Resource.Id.listItems);
            search = View.FindViewById<SearchView>(Resource.Id.search);
            Lista.Adapter = adapter;
            Lista.ItemClick += Lista_ItemClick;
            search.QueryTextChange += Search_QueryTextChange;

            var id = search.Context.Resources.GetIdentifier("search_src_text", "id", "android");
            var searchEditText = search.FindViewById<EditText>(id);
            var id2 = search.Context.Resources.GetIdentifier("search_mag_icon", "id", "android");
            var IconColorsearch = search.FindViewById<ImageView>(id2);

            IconColorsearch.SetColorFilter(TextColorSpinner);
            searchEditText.SetTextColor(TextColorSpinner);
            ContentSpinner.SetBackgroundColor(BackGroundColorSpinner);
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