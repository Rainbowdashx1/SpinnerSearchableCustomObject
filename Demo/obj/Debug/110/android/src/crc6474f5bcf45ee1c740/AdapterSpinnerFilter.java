package crc6474f5bcf45ee1c740;


public class AdapterSpinnerFilter
	extends android.widget.Filter
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_performFiltering:(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;:GetPerformFiltering_Ljava_lang_CharSequence_Handler\n" +
			"n_publishResults:(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V:GetPublishResults_Ljava_lang_CharSequence_Landroid_widget_Filter_FilterResults_Handler\n" +
			"";
		mono.android.Runtime.register ("SpinnerCustomObject.Adapter.AdapterSpinnerFilter, SpinnerCustomObject", AdapterSpinnerFilter.class, __md_methods);
	}


	public AdapterSpinnerFilter ()
	{
		super ();
		if (getClass () == AdapterSpinnerFilter.class)
			mono.android.TypeManager.Activate ("SpinnerCustomObject.Adapter.AdapterSpinnerFilter, SpinnerCustomObject", "", this, new java.lang.Object[] {  });
	}

	public AdapterSpinnerFilter (crc6474f5bcf45ee1c740.AdapterSpinner p0, java.lang.String p1)
	{
		super ();
		if (getClass () == AdapterSpinnerFilter.class)
			mono.android.TypeManager.Activate ("SpinnerCustomObject.Adapter.AdapterSpinnerFilter, SpinnerCustomObject", "SpinnerCustomObject.Adapter.AdapterSpinner, SpinnerCustomObject:System.String, mscorlib", this, new java.lang.Object[] { p0, p1 });
	}


	public android.widget.Filter.FilterResults performFiltering (java.lang.CharSequence p0)
	{
		return n_performFiltering (p0);
	}

	private native android.widget.Filter.FilterResults n_performFiltering (java.lang.CharSequence p0);


	public void publishResults (java.lang.CharSequence p0, android.widget.Filter.FilterResults p1)
	{
		n_publishResults (p0, p1);
	}

	private native void n_publishResults (java.lang.CharSequence p0, android.widget.Filter.FilterResults p1);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
