	.arch	armv8-a
	.file	"typemaps.arm64-v8a.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",@progbits
	.type	map_module_count, @object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.word	18
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",@progbits
	.type	java_type_count, @object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.word	398
/* java_type_count: END */

	.include	"typemaps.shared.inc"
	.include	"typemaps.arm64-v8a-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",@progbits
	.type	map_modules, @object
	.p2align	3
	.global	map_modules
map_modules:
	/* module_uuid: 8c81d503-ba08-4e9e-955b-8e3f46e6259d */
	.byte	0x03, 0xd5, 0x81, 0x8c, 0x08, 0xba, 0x9e, 0x4e, 0x95, 0x5b, 0x8e, 0x3f, 0x46, 0xe6, 0x25, 0x9d
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module0_managed_to_java
	/* duplicate_map */
	.xword	module0_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.DrawerLayout */
	.xword	.L.map_aname.0
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 1d973306-500c-45bc-a7d7-f86648aa18d4 */
	.byte	0x06, 0x33, 0x97, 0x1d, 0x0c, 0x50, 0xbc, 0x45, 0xa7, 0xd7, 0xf8, 0x66, 0x48, 0xaa, 0x18, 0xd4
	/* entry_count */
	.word	4
	/* duplicate_count */
	.word	3
	/* map */
	.xword	module1_managed_to_java
	/* duplicate_map */
	.xword	module1_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Lifecycle.Common */
	.xword	.L.map_aname.1
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 972fff0b-ebb0-452d-b81b-441068f3622b */
	.byte	0x0b, 0xff, 0x2f, 0x97, 0xb0, 0xeb, 0x2d, 0x45, 0xb8, 0x1b, 0x44, 0x10, 0x68, 0xf3, 0x62, 0x2b
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module2_managed_to_java
	/* duplicate_map */
	.xword	module2_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.CoordinatorLayout */
	.xword	.L.map_aname.2
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: c76ff11b-7138-4abb-8c41-f6ce0b2c9f68 */
	.byte	0x1b, 0xf1, 0x6f, 0xc7, 0x38, 0x71, 0xbb, 0x4a, 0x8c, 0x41, 0xf6, 0xce, 0x0b, 0x2c, 0x9f, 0x68
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module3_managed_to_java
	/* duplicate_map */
	.xword	module3_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.SavedState */
	.xword	.L.map_aname.3
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 4a57e04e-671f-44d6-9b86-768371acd147 */
	.byte	0x4e, 0xe0, 0x57, 0x4a, 0x1f, 0x67, 0xd6, 0x44, 0x9b, 0x86, 0x76, 0x83, 0x71, 0xac, 0xd1, 0x47
	/* entry_count */
	.word	8
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module4_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: SpinnerCustomObject */
	.xword	.L.map_aname.4
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: d2b01d5a-b81d-4f62-80e2-c362d81d9cd9 */
	.byte	0x5a, 0x1d, 0xb0, 0xd2, 0x1d, 0xb8, 0x62, 0x4f, 0x80, 0xe2, 0xc3, 0x62, 0xd8, 0x1d, 0x9c, 0xd9
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module5_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Essentials */
	.xword	.L.map_aname.5
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 7c867d62-a2b9-46e8-9b8a-2925fc70ef7e */
	.byte	0x62, 0x7d, 0x86, 0x7c, 0xb9, 0xa2, 0xe8, 0x46, 0x9b, 0x8a, 0x29, 0x25, 0xfc, 0x70, 0xef, 0x7e
	/* entry_count */
	.word	11
	/* duplicate_count */
	.word	5
	/* map */
	.xword	module6_managed_to_java
	/* duplicate_map */
	.xword	module6_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Fragment */
	.xword	.L.map_aname.6
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 75be9d69-45e0-46ae-8e9c-1f0bc2d6284f */
	.byte	0x69, 0x9d, 0xbe, 0x75, 0xe0, 0x45, 0xae, 0x46, 0x8e, 0x9c, 0x1f, 0x0b, 0xc2, 0xd6, 0x28, 0x4f
	/* entry_count */
	.word	269
	/* duplicate_count */
	.word	143
	/* map */
	.xword	module7_managed_to_java
	/* duplicate_map */
	.xword	module7_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.xword	.L.map_aname.7
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 39474576-1024-4319-8815-86282e2971d8 */
	.byte	0x76, 0x45, 0x47, 0x39, 0x24, 0x10, 0x19, 0x43, 0x88, 0x15, 0x86, 0x28, 0x2e, 0x29, 0x71, 0xd8
	/* entry_count */
	.word	5
	/* duplicate_count */
	.word	4
	/* map */
	.xword	module8_managed_to_java
	/* duplicate_map */
	.xword	module8_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Loader */
	.xword	.L.map_aname.8
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: b034fa80-29bd-4559-8354-26a743f74253 */
	.byte	0x80, 0xfa, 0x34, 0xb0, 0xbd, 0x29, 0x59, 0x45, 0x83, 0x54, 0x26, 0xa7, 0x43, 0xf7, 0x42, 0x53
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module9_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.AndroidX.Activity */
	.xword	.L.map_aname.9
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 25a01486-d791-4298-bd90-18582392ef33 */
	.byte	0x86, 0x14, 0xa0, 0x25, 0x91, 0xd7, 0x98, 0x42, 0xbd, 0x90, 0x18, 0x58, 0x23, 0x92, 0xef, 0x33
	/* entry_count */
	.word	33
	/* duplicate_count */
	.word	19
	/* map */
	.xword	module10_managed_to_java
	/* duplicate_map */
	.xword	module10_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Core */
	.xword	.L.map_aname.10
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 9ac1089a-eef9-4b98-b18e-ecbbdf857cee */
	.byte	0x9a, 0x08, 0xc1, 0x9a, 0xf9, 0xee, 0x98, 0x4b, 0xb1, 0x8e, 0xec, 0xbb, 0xdf, 0x85, 0x7c, 0xee
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module11_managed_to_java
	/* duplicate_map */
	.xword	module11_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Lifecycle.LiveData.Core */
	.xword	.L.map_aname.11
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 5d71c2a3-54dd-4890-8b03-0874d6551eff */
	.byte	0xa3, 0xc2, 0x71, 0x5d, 0xdd, 0x54, 0x90, 0x48, 0x8b, 0x03, 0x08, 0x74, 0xd6, 0x55, 0x1e, 0xff
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module12_managed_to_java
	/* duplicate_map */
	.xword	module12_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.CustomView */
	.xword	.L.map_aname.12
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 8c0dc5ad-a74b-451e-a484-da0f4d1b1832 */
	.byte	0xad, 0xc5, 0x0d, 0x8c, 0x4b, 0xa7, 0x1e, 0x45, 0xa4, 0x84, 0xda, 0x0f, 0x4d, 0x1b, 0x18, 0x32
	/* entry_count */
	.word	17
	/* duplicate_count */
	.word	7
	/* map */
	.xword	module13_managed_to_java
	/* duplicate_map */
	.xword	module13_managed_to_java_duplicates
	/* assembly_name: Xamarin.Google.Android.Material */
	.xword	.L.map_aname.13
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: aea5a8ba-e206-42bf-8c70-dc764d4cdc93 */
	.byte	0xba, 0xa8, 0xa5, 0xae, 0x06, 0xe2, 0xbf, 0x42, 0x8c, 0x70, 0xdc, 0x76, 0x4d, 0x4c, 0xdc, 0x93
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module14_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Demo */
	.xword	.L.map_aname.14
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 379d77c4-cf8a-4445-860b-68af3453eb4e */
	.byte	0xc4, 0x77, 0x9d, 0x37, 0x8a, 0xcf, 0x45, 0x44, 0x86, 0x0b, 0x68, 0xaf, 0x34, 0x53, 0xeb, 0x4e
	/* entry_count */
	.word	30
	/* duplicate_count */
	.word	17
	/* map */
	.xword	module15_managed_to_java
	/* duplicate_map */
	.xword	module15_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.AppCompat */
	.xword	.L.map_aname.15
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 22ab85d9-c40c-4739-b6fe-c7ac6cfd022e */
	.byte	0xd9, 0x85, 0xab, 0x22, 0x0c, 0xc4, 0x39, 0x47, 0xb6, 0xfe, 0xc7, 0xac, 0x6c, 0xfd, 0x02, 0x2e
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module16_managed_to_java
	/* duplicate_map */
	.xword	module16_managed_to_java_duplicates
	/* assembly_name: Xamarin.Google.Guava.ListenableFuture */
	.xword	.L.map_aname.16
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 965ee4e5-b5e4-4fc6-9599-a10985f821f3 */
	.byte	0xe5, 0xe4, 0x5e, 0x96, 0xe4, 0xb5, 0xc6, 0x4f, 0x95, 0x99, 0xa1, 0x09, 0x85, 0xf8, 0x21, 0xf3
	/* entry_count */
	.word	5
	/* duplicate_count */
	.word	3
	/* map */
	.xword	module17_managed_to_java
	/* duplicate_map */
	.xword	module17_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Lifecycle.ViewModel */
	.xword	.L.map_aname.17
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	.size	map_modules, 1296
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",@progbits
	.type	map_java, @object
	.p2align	2
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554790
	/* java_name */
	.ascii	"android/animation/Animator"
	.zero	72
	.zero	2

	/* #1 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorListener"
	.zero	55
	.zero	2

	/* #2 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorPauseListener"
	.zero	50
	.zero	2

	/* #3 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554796
	/* java_name */
	.ascii	"android/animation/AnimatorListenerAdapter"
	.zero	57
	.zero	2

	/* #4 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/animation/TimeInterpolator"
	.zero	64
	.zero	2

	/* #5 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554801
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	78
	.zero	2

	/* #6 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554802
	/* java_name */
	.ascii	"android/app/Application"
	.zero	75
	.zero	2

	/* #7 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/app/Application$ActivityLifecycleCallbacks"
	.zero	48
	.zero	2

	/* #8 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554805
	/* java_name */
	.ascii	"android/app/Dialog"
	.zero	80
	.zero	2

	/* #9 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554806
	/* java_name */
	.ascii	"android/app/DialogFragment"
	.zero	72
	.zero	2

	/* #10 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554807
	/* java_name */
	.ascii	"android/app/Fragment"
	.zero	78
	.zero	2

	/* #11 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554808
	/* java_name */
	.ascii	"android/app/FragmentManager"
	.zero	71
	.zero	2

	/* #12 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554810
	/* java_name */
	.ascii	"android/app/PendingIntent"
	.zero	73
	.zero	2

	/* #13 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	64
	.zero	2

	/* #14 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	63
	.zero	2

	/* #15 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554814
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	69
	.zero	2

	/* #16 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554815
	/* java_name */
	.ascii	"android/content/Context"
	.zero	75
	.zero	2

	/* #17 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554817
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	68
	.zero	2

	/* #18 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/DialogInterface"
	.zero	67
	.zero	2

	/* #19 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/DialogInterface$OnCancelListener"
	.zero	50
	.zero	2

	/* #20 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/DialogInterface$OnDismissListener"
	.zero	49
	.zero	2

	/* #21 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554828
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	76
	.zero	2

	/* #22 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554829
	/* java_name */
	.ascii	"android/content/IntentSender"
	.zero	70
	.zero	2

	/* #23 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/SharedPreferences"
	.zero	65
	.zero	2

	/* #24 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/SharedPreferences$Editor"
	.zero	58
	.zero	2

	/* #25 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"
	.zero	32
	.zero	2

	/* #26 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554842
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	68
	.zero	2

	/* #27 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554843
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	65
	.zero	2

	/* #28 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554838
	/* java_name */
	.ascii	"android/content/res/ColorStateList"
	.zero	64
	.zero	2

	/* #29 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554839
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	65
	.zero	2

	/* #30 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554840
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	69
	.zero	2

	/* #31 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554841
	/* java_name */
	.ascii	"android/content/res/TypedArray"
	.zero	68
	.zero	2

	/* #32 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554788
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	66
	.zero	2

	/* #33 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554770
	/* java_name */
	.ascii	"android/graphics/BlendMode"
	.zero	72
	.zero	2

	/* #34 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554771
	/* java_name */
	.ascii	"android/graphics/Canvas"
	.zero	75
	.zero	2

	/* #35 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554773
	/* java_name */
	.ascii	"android/graphics/Color"
	.zero	76
	.zero	2

	/* #36 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554772
	/* java_name */
	.ascii	"android/graphics/ColorFilter"
	.zero	70
	.zero	2

	/* #37 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554774
	/* java_name */
	.ascii	"android/graphics/Matrix"
	.zero	75
	.zero	2

	/* #38 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554775
	/* java_name */
	.ascii	"android/graphics/Paint"
	.zero	76
	.zero	2

	/* #39 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554776
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	76
	.zero	2

	/* #40 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554777
	/* java_name */
	.ascii	"android/graphics/PorterDuff"
	.zero	71
	.zero	2

	/* #41 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554778
	/* java_name */
	.ascii	"android/graphics/PorterDuff$Mode"
	.zero	66
	.zero	2

	/* #42 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554779
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	77
	.zero	2

	/* #43 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554780
	/* java_name */
	.ascii	"android/graphics/RectF"
	.zero	76
	.zero	2

	/* #44 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554784
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	64
	.zero	2

	/* #45 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	55
	.zero	2

	/* #46 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554768
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	83
	.zero	2

	/* #47 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554755
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	77
	.zero	2

	/* #48 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554756
	/* java_name */
	.ascii	"android/os/Build"
	.zero	82
	.zero	2

	/* #49 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554757
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	74
	.zero	2

	/* #50 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554758
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	81
	.zero	2

	/* #51 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554759
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	80
	.zero	2

	/* #52 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554764
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	81
	.zero	2

	/* #53 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554765
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	81
	.zero	2

	/* #54 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	77
	.zero	2

	/* #55 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/os/Parcelable$Creator"
	.zero	69
	.zero	2

	/* #56 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554754
	/* java_name */
	.ascii	"android/preference/PreferenceManager"
	.zero	62
	.zero	2

	/* #57 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554892
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	64
	.zero	2

	/* #58 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/Editable"
	.zero	77
	.zero	2

	/* #59 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/GetChars"
	.zero	77
	.zero	2

	/* #60 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/InputFilter"
	.zero	74
	.zero	2

	/* #61 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/NoCopySpan"
	.zero	75
	.zero	2

	/* #62 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/Spannable"
	.zero	76
	.zero	2

	/* #63 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/Spanned"
	.zero	78
	.zero	2

	/* #64 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/text/TextWatcher"
	.zero	74
	.zero	2

	/* #65 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	73
	.zero	2

	/* #66 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554731
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	71
	.zero	2

	/* #67 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554734
	/* java_name */
	.ascii	"android/util/SparseArray"
	.zero	74
	.zero	2

	/* #68 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554635
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	75
	.zero	2

	/* #69 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	66
	.zero	2

	/* #70 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554639
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	71
	.zero	2

	/* #71 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/CollapsibleActionView"
	.zero	64
	.zero	2

	/* #72 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	74
	.zero	2

	/* #73 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	58
	.zero	2

	/* #74 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554641
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	66
	.zero	2

	/* #75 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554642
	/* java_name */
	.ascii	"android/view/Display"
	.zero	78
	.zero	2

	/* #76 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554643
	/* java_name */
	.ascii	"android/view/DragEvent"
	.zero	76
	.zero	2

	/* #77 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554658
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	75
	.zero	2

	/* #78 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554670
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	77
	.zero	2

	/* #79 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	68
	.zero	2

	/* #80 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554669
	/* java_name */
	.ascii	"android/view/KeyboardShortcutGroup"
	.zero	64
	.zero	2

	/* #81 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554673
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	71
	.zero	2

	/* #82 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	63
	.zero	2

	/* #83 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	62
	.zero	2

	/* #84 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	81
	.zero	2

	/* #85 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554679
	/* java_name */
	.ascii	"android/view/MenuInflater"
	.zero	73
	.zero	2

	/* #86 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	77
	.zero	2

	/* #87 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	54
	.zero	2

	/* #88 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	53
	.zero	2

	/* #89 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554680
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	74
	.zero	2

	/* #90 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554681
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	74
	.zero	2

	/* #91 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	78
	.zero	2

	/* #92 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554682
	/* java_name */
	.ascii	"android/view/View"
	.zero	81
	.zero	2

	/* #93 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/View$OnClickListener"
	.zero	65
	.zero	2

	/* #94 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	53
	.zero	2

	/* #95 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554690
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	76
	.zero	2

	/* #96 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554691
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	63
	.zero	2

	/* #97 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554692
	/* java_name */
	.ascii	"android/view/ViewGroup$MarginLayoutParams"
	.zero	57
	.zero	2

	/* #98 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	74
	.zero	2

	/* #99 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	75
	.zero	2

	/* #100 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554694
	/* java_name */
	.ascii	"android/view/ViewPropertyAnimator"
	.zero	65
	.zero	2

	/* #101 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554695
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	69
	.zero	2

	/* #102 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnGlobalLayoutListener"
	.zero	46
	.zero	2

	/* #103 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	51
	.zero	2

	/* #104 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnTouchModeChangeListener"
	.zero	43
	.zero	2

	/* #105 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554702
	/* java_name */
	.ascii	"android/view/Window"
	.zero	79
	.zero	2

	/* #106 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	70
	.zero	2

	/* #107 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554706
	/* java_name */
	.ascii	"android/view/WindowInsets"
	.zero	73
	.zero	2

	/* #108 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	72
	.zero	2

	/* #109 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554666
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	59
	.zero	2

	/* #110 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554707
	/* java_name */
	.ascii	"android/view/WindowMetrics"
	.zero	72
	.zero	2

	/* #111 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554724
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	53
	.zero	2

	/* #112 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	47
	.zero	2

	/* #113 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554725
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	52
	.zero	2

	/* #114 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554720
	/* java_name */
	.ascii	"android/view/animation/Animation"
	.zero	66
	.zero	2

	/* #115 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/view/animation/Interpolator"
	.zero	63
	.zero	2

	/* #116 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554590
	/* java_name */
	.ascii	"android/widget/AbsListView"
	.zero	72
	.zero	2

	/* #117 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/Adapter"
	.zero	76
	.zero	2

	/* #118 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554592
	/* java_name */
	.ascii	"android/widget/AdapterView"
	.zero	72
	.zero	2

	/* #119 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemClickListener"
	.zero	52
	.zero	2

	/* #120 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemSelectedListener"
	.zero	49
	.zero	2

	/* #121 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554602
	/* java_name */
	.ascii	"android/widget/BaseAdapter"
	.zero	72
	.zero	2

	/* #122 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554604
	/* java_name */
	.ascii	"android/widget/EditText"
	.zero	75
	.zero	2

	/* #123 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554605
	/* java_name */
	.ascii	"android/widget/Filter"
	.zero	77
	.zero	2

	/* #124 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/Filter$FilterListener"
	.zero	62
	.zero	2

	/* #125 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554608
	/* java_name */
	.ascii	"android/widget/Filter$FilterResults"
	.zero	63
	.zero	2

	/* #126 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/Filterable"
	.zero	73
	.zero	2

	/* #127 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554610
	/* java_name */
	.ascii	"android/widget/FrameLayout"
	.zero	72
	.zero	2

	/* #128 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554611
	/* java_name */
	.ascii	"android/widget/HorizontalScrollView"
	.zero	63
	.zero	2

	/* #129 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554618
	/* java_name */
	.ascii	"android/widget/ImageButton"
	.zero	72
	.zero	2

	/* #130 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554619
	/* java_name */
	.ascii	"android/widget/ImageView"
	.zero	74
	.zero	2

	/* #131 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554622
	/* java_name */
	.ascii	"android/widget/LinearLayout"
	.zero	71
	.zero	2

	/* #132 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/ListAdapter"
	.zero	72
	.zero	2

	/* #133 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554623
	/* java_name */
	.ascii	"android/widget/ListView"
	.zero	75
	.zero	2

	/* #134 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554624
	/* java_name */
	.ascii	"android/widget/SearchView"
	.zero	73
	.zero	2

	/* #135 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/SearchView$OnQueryTextListener"
	.zero	53
	.zero	2

	/* #136 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/SpinnerAdapter"
	.zero	69
	.zero	2

	/* #137 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554632
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	75
	.zero	2

	/* #138 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"androidx/activity/ComponentActivity"
	.zero	63
	.zero	2

	/* #139 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554474
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar"
	.zero	66
	.zero	2

	/* #140 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554475
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$LayoutParams"
	.zero	53
	.zero	2

	/* #141 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$OnMenuVisibilityListener"
	.zero	41
	.zero	2

	/* #142 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$OnNavigationListener"
	.zero	45
	.zero	2

	/* #143 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554482
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$Tab"
	.zero	62
	.zero	2

	/* #144 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$TabListener"
	.zero	54
	.zero	2

	/* #145 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554489
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBarDrawerToggle"
	.zero	54
	.zero	2

	/* #146 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBarDrawerToggle$Delegate"
	.zero	45
	.zero	2

	/* #147 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider"
	.zero	37
	.zero	2

	/* #148 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554494
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatActivity"
	.zero	58
	.zero	2

	/* #149 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatCallback"
	.zero	58
	.zero	2

	/* #150 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554495
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatDelegate"
	.zero	58
	.zero	2

	/* #151 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"androidx/appcompat/graphics/drawable/DrawerArrowDrawable"
	.zero	42
	.zero	2

	/* #152 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554512
	/* java_name */
	.ascii	"androidx/appcompat/view/ActionMode"
	.zero	64
	.zero	2

	/* #153 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/view/ActionMode$Callback"
	.zero	55
	.zero	2

	/* #154 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554516
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuBuilder"
	.zero	58
	.zero	2

	/* #155 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuBuilder$Callback"
	.zero	49
	.zero	2

	/* #156 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554525
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuItemImpl"
	.zero	57
	.zero	2

	/* #157 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuPresenter"
	.zero	56
	.zero	2

	/* #158 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuPresenter$Callback"
	.zero	47
	.zero	2

	/* #159 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuView"
	.zero	61
	.zero	2

	/* #160 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554526
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/SubMenuBuilder"
	.zero	55
	.zero	2

	/* #161 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/widget/DecorToolbar"
	.zero	60
	.zero	2

	/* #162 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554510
	/* java_name */
	.ascii	"androidx/appcompat/widget/ScrollingTabContainerView"
	.zero	47
	.zero	2

	/* #163 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554511
	/* java_name */
	.ascii	"androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener"
	.zero	24
	.zero	2

	/* #164 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554499
	/* java_name */
	.ascii	"androidx/appcompat/widget/Toolbar"
	.zero	65
	.zero	2

	/* #165 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/appcompat/widget/Toolbar$OnMenuItemClickListener"
	.zero	41
	.zero	2

	/* #166 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554500
	/* java_name */
	.ascii	"androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher"
	.zero	32
	.zero	2

	/* #167 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"androidx/coordinatorlayout/widget/CoordinatorLayout"
	.zero	47
	.zero	2

	/* #168 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior"
	.zero	38
	.zero	2

	/* #169 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams"
	.zero	34
	.zero	2

	/* #170 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554518
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat"
	.zero	66
	.zero	2

	/* #171 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback"
	.zero	31
	.zero	2

	/* #172 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat$PermissionCompatDelegate"
	.zero	41
	.zero	2

	/* #173 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator"
	.zero	27
	.zero	2

	/* #174 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554525
	/* java_name */
	.ascii	"androidx/core/app/ComponentActivity"
	.zero	63
	.zero	2

	/* #175 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554526
	/* java_name */
	.ascii	"androidx/core/app/ComponentActivity$ExtraData"
	.zero	53
	.zero	2

	/* #176 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554527
	/* java_name */
	.ascii	"androidx/core/app/SharedElementCallback"
	.zero	59
	.zero	2

	/* #177 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener"
	.zero	29
	.zero	2

	/* #178 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554531
	/* java_name */
	.ascii	"androidx/core/app/TaskStackBuilder"
	.zero	64
	.zero	2

	/* #179 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/app/TaskStackBuilder$SupportParentable"
	.zero	46
	.zero	2

	/* #180 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554516
	/* java_name */
	.ascii	"androidx/core/content/ContextCompat"
	.zero	63
	.zero	2

	/* #181 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554517
	/* java_name */
	.ascii	"androidx/core/content/pm/PackageInfoCompat"
	.zero	56
	.zero	2

	/* #182 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554515
	/* java_name */
	.ascii	"androidx/core/graphics/Insets"
	.zero	69
	.zero	2

	/* #183 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/internal/view/SupportMenu"
	.zero	59
	.zero	2

	/* #184 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/internal/view/SupportMenuItem"
	.zero	55
	.zero	2

	/* #185 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554478
	/* java_name */
	.ascii	"androidx/core/view/ActionProvider"
	.zero	65
	.zero	2

	/* #186 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/ActionProvider$SubUiVisibilityListener"
	.zero	41
	.zero	2

	/* #187 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/ActionProvider$VisibilityListener"
	.zero	46
	.zero	2

	/* #188 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554492
	/* java_name */
	.ascii	"androidx/core/view/DisplayCutoutCompat"
	.zero	60
	.zero	2

	/* #189 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554493
	/* java_name */
	.ascii	"androidx/core/view/DragAndDropPermissionsCompat"
	.zero	51
	.zero	2

	/* #190 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554506
	/* java_name */
	.ascii	"androidx/core/view/KeyEventDispatcher"
	.zero	61
	.zero	2

	/* #191 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/KeyEventDispatcher$Component"
	.zero	51
	.zero	2

	/* #192 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/NestedScrollingParent"
	.zero	58
	.zero	2

	/* #193 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/NestedScrollingParent2"
	.zero	57
	.zero	2

	/* #194 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/NestedScrollingParent3"
	.zero	57
	.zero	2

	/* #195 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/TintableBackgroundView"
	.zero	57
	.zero	2

	/* #196 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554509
	/* java_name */
	.ascii	"androidx/core/view/ViewPropertyAnimatorCompat"
	.zero	53
	.zero	2

	/* #197 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/ViewPropertyAnimatorListener"
	.zero	51
	.zero	2

	/* #198 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/view/ViewPropertyAnimatorUpdateListener"
	.zero	45
	.zero	2

	/* #199 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554510
	/* java_name */
	.ascii	"androidx/core/view/WindowInsetsCompat"
	.zero	61
	.zero	2

	/* #200 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/core/widget/TintableImageSourceView"
	.zero	54
	.zero	2

	/* #201 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/customview/widget/Openable"
	.zero	63
	.zero	2

	/* #202 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554454
	/* java_name */
	.ascii	"androidx/drawerlayout/widget/DrawerLayout"
	.zero	57
	.zero	2

	/* #203 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/drawerlayout/widget/DrawerLayout$DrawerListener"
	.zero	42
	.zero	2

	/* #204 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554469
	/* java_name */
	.ascii	"androidx/fragment/app/DialogFragment"
	.zero	62
	.zero	2

	/* #205 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554470
	/* java_name */
	.ascii	"androidx/fragment/app/Fragment"
	.zero	68
	.zero	2

	/* #206 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554471
	/* java_name */
	.ascii	"androidx/fragment/app/Fragment$SavedState"
	.zero	57
	.zero	2

	/* #207 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554468
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentActivity"
	.zero	60
	.zero	2

	/* #208 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554472
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentFactory"
	.zero	61
	.zero	2

	/* #209 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager"
	.zero	61
	.zero	2

	/* #210 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager$BackStackEntry"
	.zero	46
	.zero	2

	/* #211 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554476
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks"
	.zero	34
	.zero	2

	/* #212 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager$OnBackStackChangedListener"
	.zero	34
	.zero	2

	/* #213 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554484
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentTransaction"
	.zero	57
	.zero	2

	/* #214 */
	/* module_index */
	.word	17
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/lifecycle/HasDefaultViewModelProviderFactory"
	.zero	45
	.zero	2

	/* #215 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"androidx/lifecycle/Lifecycle"
	.zero	70
	.zero	2

	/* #216 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"androidx/lifecycle/Lifecycle$State"
	.zero	64
	.zero	2

	/* #217 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/lifecycle/LifecycleObserver"
	.zero	62
	.zero	2

	/* #218 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/lifecycle/LifecycleOwner"
	.zero	65
	.zero	2

	/* #219 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"androidx/lifecycle/LiveData"
	.zero	71
	.zero	2

	/* #220 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/lifecycle/Observer"
	.zero	71
	.zero	2

	/* #221 */
	/* module_index */
	.word	17
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelProvider"
	.zero	62
	.zero	2

	/* #222 */
	/* module_index */
	.word	17
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelProvider$Factory"
	.zero	54
	.zero	2

	/* #223 */
	/* module_index */
	.word	17
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelStore"
	.zero	65
	.zero	2

	/* #224 */
	/* module_index */
	.word	17
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelStoreOwner"
	.zero	60
	.zero	2

	/* #225 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554452
	/* java_name */
	.ascii	"androidx/loader/app/LoaderManager"
	.zero	65
	.zero	2

	/* #226 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/loader/app/LoaderManager$LoaderCallbacks"
	.zero	49
	.zero	2

	/* #227 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554447
	/* java_name */
	.ascii	"androidx/loader/content/Loader"
	.zero	68
	.zero	2

	/* #228 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/loader/content/Loader$OnLoadCanceledListener"
	.zero	45
	.zero	2

	/* #229 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/loader/content/Loader$OnLoadCompleteListener"
	.zero	45
	.zero	2

	/* #230 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"androidx/savedstate/SavedStateRegistry"
	.zero	60
	.zero	2

	/* #231 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/savedstate/SavedStateRegistry$SavedStateProvider"
	.zero	41
	.zero	2

	/* #232 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"androidx/savedstate/SavedStateRegistryOwner"
	.zero	55
	.zero	2

	/* #233 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554458
	/* java_name */
	.ascii	"com/google/android/material/animation/MotionSpec"
	.zero	50
	.zero	2

	/* #234 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554459
	/* java_name */
	.ascii	"com/google/android/material/animation/MotionTiming"
	.zero	48
	.zero	2

	/* #235 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"com/google/android/material/behavior/SwipeDismissBehavior"
	.zero	41
	.zero	2

	/* #236 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener"
	.zero	23
	.zero	2

	/* #237 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/android/material/expandable/ExpandableTransformationWidget"
	.zero	29
	.zero	2

	/* #238 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/android/material/expandable/ExpandableWidget"
	.zero	43
	.zero	2

	/* #239 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"com/google/android/material/floatingactionbutton/FloatingActionButton"
	.zero	29
	.zero	2

	/* #240 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"com/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener"
	.zero	1
	.zero	2

	/* #241 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554457
	/* java_name */
	.ascii	"com/google/android/material/internal/VisibilityAwareImageButton"
	.zero	35
	.zero	2

	/* #242 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"com/google/android/material/snackbar/BaseTransientBottomBar"
	.zero	39
	.zero	2

	/* #243 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554451
	/* java_name */
	.ascii	"com/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback"
	.zero	26
	.zero	2

	/* #244 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554453
	/* java_name */
	.ascii	"com/google/android/material/snackbar/BaseTransientBottomBar$Behavior"
	.zero	30
	.zero	2

	/* #245 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/android/material/snackbar/ContentViewCallback"
	.zero	42
	.zero	2

	/* #246 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554447
	/* java_name */
	.ascii	"com/google/android/material/snackbar/Snackbar"
	.zero	53
	.zero	2

	/* #247 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554449
	/* java_name */
	.ascii	"com/google/android/material/snackbar/Snackbar$Callback"
	.zero	44
	.zero	2

	/* #248 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554448
	/* java_name */
	.ascii	"com/google/android/material/snackbar/Snackbar_SnackbarActionClickImplementor"
	.zero	22
	.zero	2

	/* #249 */
	/* module_index */
	.word	16
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"com/google/common/util/concurrent/ListenableFuture"
	.zero	48
	.zero	2

	/* #250 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554454
	/* java_name */
	.ascii	"crc6406bc3e432db49485/SpinnerCustomV4"
	.zero	61
	.zero	2

	/* #251 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554457
	/* java_name */
	.ascii	"crc6406bc3e432db49485/SpinnerCustomV7"
	.zero	61
	.zero	2

	/* #252 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554460
	/* java_name */
	.ascii	"crc6406bc3e432db49485/SpinnerCustomX"
	.zero	62
	.zero	2

	/* #253 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554448
	/* java_name */
	.ascii	"crc6431d683e69a9f25c8/SpinnerCustomObjV4"
	.zero	58
	.zero	2

	/* #254 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"crc6431d683e69a9f25c8/SpinnerCustomObjV7"
	.zero	58
	.zero	2

	/* #255 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554452
	/* java_name */
	.ascii	"crc6431d683e69a9f25c8/SpinnerCustomObjX"
	.zero	59
	.zero	2

	/* #256 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"crc6433b778fe73d844da/MainActivity"
	.zero	64
	.zero	2

	/* #257 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554464
	/* java_name */
	.ascii	"crc6474f5bcf45ee1c740/AdapterSpinner"
	.zero	62
	.zero	2

	/* #258 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554465
	/* java_name */
	.ascii	"crc6474f5bcf45ee1c740/AdapterSpinnerFilter"
	.zero	56
	.zero	2

	/* #259 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554448
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener"
	.zero	44
	.zero	2

	/* #260 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	81
	.zero	2

	/* #261 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555057
	/* java_name */
	.ascii	"java/io/File"
	.zero	86
	.zero	2

	/* #262 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555058
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	76
	.zero	2

	/* #263 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555059
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	75
	.zero	2

	/* #264 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	81
	.zero	2

	/* #265 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555067
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	79
	.zero	2

	/* #266 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555064
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	79
	.zero	2

	/* #267 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555066
	/* java_name */
	.ascii	"java/io/InterruptedIOException"
	.zero	68
	.zero	2

	/* #268 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555070
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	78
	.zero	2

	/* #269 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555072
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	79
	.zero	2

	/* #270 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	78
	.zero	2

	/* #271 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555073
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	78
	.zero	2

	/* #272 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555074
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	84
	.zero	2

	/* #273 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	78
	.zero	2

	/* #274 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554999
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	81
	.zero	2

	/* #275 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555000
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	84
	.zero	2

	/* #276 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	76
	.zero	2

	/* #277 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555001
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	79
	.zero	2

	/* #278 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555002
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	83
	.zero	2

	/* #279 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555003
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	70
	.zero	2

	/* #280 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555004
	/* java_name */
	.ascii	"java/lang/ClassLoader"
	.zero	77
	.zero	2

	/* #281 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555006
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	66
	.zero	2

	/* #282 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	79
	.zero	2

	/* #283 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	78
	.zero	2

	/* #284 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555007
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	82
	.zero	2

	/* #285 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555008
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	84
	.zero	2

	/* #286 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555010
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	83
	.zero	2

	/* #287 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555011
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	79
	.zero	2

	/* #288 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555012
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	83
	.zero	2

	/* #289 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555024
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	64
	.zero	2

	/* #290 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555025
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	67
	.zero	2

	/* #291 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555026
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	63
	.zero	2

	/* #292 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555027
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	81
	.zero	2

	/* #293 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Iterable"
	.zero	80
	.zero	2

	/* #294 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555030
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	76
	.zero	2

	/* #295 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555031
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	84
	.zero	2

	/* #296 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555032
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	68
	.zero	2

	/* #297 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555033
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	68
	.zero	2

	/* #298 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555034
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	82
	.zero	2

	/* #299 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555036
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	82
	.zero	2

	/* #300 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555037
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	60
	.zero	2

	/* #301 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	80
	.zero	2

	/* #302 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555038
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	72
	.zero	2

	/* #303 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555039
	/* java_name */
	.ascii	"java/lang/SecurityException"
	.zero	71
	.zero	2

	/* #304 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555040
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	83
	.zero	2

	/* #305 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555041
	/* java_name */
	.ascii	"java/lang/String"
	.zero	82
	.zero	2

	/* #306 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555043
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	82
	.zero	2

	/* #307 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555045
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	79
	.zero	2

	/* #308 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555046
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	59
	.zero	2

	/* #309 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	67
	.zero	2

	/* #310 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	64
	.zero	2

	/* #311 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	62
	.zero	2

	/* #312 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	76
	.zero	2

	/* #313 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	68
	.zero	2

	/* #314 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554980
	/* java_name */
	.ascii	"java/net/ConnectException"
	.zero	73
	.zero	2

	/* #315 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554981
	/* java_name */
	.ascii	"java/net/HttpURLConnection"
	.zero	72
	.zero	2

	/* #316 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554983
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	72
	.zero	2

	/* #317 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554984
	/* java_name */
	.ascii	"java/net/ProtocolException"
	.zero	72
	.zero	2

	/* #318 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554985
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	84
	.zero	2

	/* #319 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554986
	/* java_name */
	.ascii	"java/net/Proxy$Type"
	.zero	79
	.zero	2

	/* #320 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554987
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	76
	.zero	2

	/* #321 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554989
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	76
	.zero	2

	/* #322 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554991
	/* java_name */
	.ascii	"java/net/SocketException"
	.zero	74
	.zero	2

	/* #323 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554992
	/* java_name */
	.ascii	"java/net/SocketTimeoutException"
	.zero	67
	.zero	2

	/* #324 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554994
	/* java_name */
	.ascii	"java/net/URI"
	.zero	86
	.zero	2

	/* #325 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554995
	/* java_name */
	.ascii	"java/net/URL"
	.zero	86
	.zero	2

	/* #326 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554996
	/* java_name */
	.ascii	"java/net/URLConnection"
	.zero	76
	.zero	2

	/* #327 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554993
	/* java_name */
	.ascii	"java/net/UnknownServiceException"
	.zero	66
	.zero	2

	/* #328 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554956
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	83
	.zero	2

	/* #329 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554958
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	79
	.zero	2

	/* #330 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	69
	.zero	2

	/* #331 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	73
	.zero	2

	/* #332 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554960
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	69
	.zero	2

	/* #333 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	60
	.zero	2

	/* #334 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	60
	.zero	2

	/* #335 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	61
	.zero	2

	/* #336 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	59
	.zero	2

	/* #337 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	61
	.zero	2

	/* #338 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	61
	.zero	2

	/* #339 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554978
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	48
	.zero	2

	/* #340 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554943
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	76
	.zero	2

	/* #341 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	57
	.zero	2

	/* #342 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	56
	.zero	2

	/* #343 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/Principal"
	.zero	75
	.zero	2

	/* #344 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554948
	/* java_name */
	.ascii	"java/security/SecureRandom"
	.zero	72
	.zero	2

	/* #345 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554949
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	68
	.zero	2

	/* #346 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554951
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	61
	.zero	2

	/* #347 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554954
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	64
	.zero	2

	/* #348 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	66
	.zero	2

	/* #349 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554884
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	79
	.zero	2

	/* #350 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554873
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	78
	.zero	2

	/* #351 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/Comparator"
	.zero	78
	.zero	2

	/* #352 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/Enumeration"
	.zero	77
	.zero	2

	/* #353 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554875
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	81
	.zero	2

	/* #354 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554893
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	81
	.zero	2

	/* #355 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	80
	.zero	2

	/* #356 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554924
	/* java_name */
	.ascii	"java/util/Random"
	.zero	82
	.zero	2

	/* #357 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/Spliterator"
	.zero	77
	.zero	2

	/* #358 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/concurrent/Executor"
	.zero	69
	.zero	2

	/* #359 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/concurrent/Future"
	.zero	71
	.zero	2

	/* #360 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554940
	/* java_name */
	.ascii	"java/util/concurrent/TimeUnit"
	.zero	69
	.zero	2

	/* #361 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/function/Consumer"
	.zero	71
	.zero	2

	/* #362 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/function/Function"
	.zero	71
	.zero	2

	/* #363 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/function/ToDoubleFunction"
	.zero	63
	.zero	2

	/* #364 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/function/ToIntFunction"
	.zero	66
	.zero	2

	/* #365 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"java/util/function/ToLongFunction"
	.zero	65
	.zero	2

	/* #366 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554562
	/* java_name */
	.ascii	"javax/net/SocketFactory"
	.zero	75
	.zero	2

	/* #367 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/HostnameVerifier"
	.zero	68
	.zero	2

	/* #368 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554564
	/* java_name */
	.ascii	"javax/net/ssl/HttpsURLConnection"
	.zero	66
	.zero	2

	/* #369 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/KeyManager"
	.zero	74
	.zero	2

	/* #370 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554578
	/* java_name */
	.ascii	"javax/net/ssl/KeyManagerFactory"
	.zero	67
	.zero	2

	/* #371 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554579
	/* java_name */
	.ascii	"javax/net/ssl/SSLContext"
	.zero	74
	.zero	2

	/* #372 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/SSLSession"
	.zero	74
	.zero	2

	/* #373 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/SSLSessionContext"
	.zero	67
	.zero	2

	/* #374 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554580
	/* java_name */
	.ascii	"javax/net/ssl/SSLSocketFactory"
	.zero	68
	.zero	2

	/* #375 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	72
	.zero	2

	/* #376 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554582
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	65
	.zero	2

	/* #377 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	68
	.zero	2

	/* #378 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554561
	/* java_name */
	.ascii	"javax/security/auth/Subject"
	.zero	71
	.zero	2

	/* #379 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554557
	/* java_name */
	.ascii	"javax/security/cert/Certificate"
	.zero	67
	.zero	2

	/* #380 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554559
	/* java_name */
	.ascii	"javax/security/cert/X509Certificate"
	.zero	63
	.zero	2

	/* #381 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555098
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	74
	.zero	2

	/* #382 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554869
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	59
	.zero	2

	/* #383 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	68
	.zero	2

	/* #384 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554890
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	67
	.zero	2

	/* #385 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554908
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	58
	.zero	2

	/* #386 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554685
	/* java_name */
	.ascii	"mono/android/view/View_OnClickListenerImplementor"
	.zero	49
	.zero	2

	/* #387 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554596
	/* java_name */
	.ascii	"mono/android/widget/AdapterView_OnItemClickListenerImplementor"
	.zero	36
	.zero	2

	/* #388 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554629
	/* java_name */
	.ascii	"mono/android/widget/SearchView_OnQueryTextListenerImplementor"
	.zero	37
	.zero	2

	/* #389 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554479
	/* java_name */
	.ascii	"mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor"
	.zero	25
	.zero	2

	/* #390 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554505
	/* java_name */
	.ascii	"mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor"
	.zero	25
	.zero	2

	/* #391 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554482
	/* java_name */
	.ascii	"mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor"
	.zero	25
	.zero	2

	/* #392 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554486
	/* java_name */
	.ascii	"mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor"
	.zero	30
	.zero	2

	/* #393 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor"
	.zero	26
	.zero	2

	/* #394 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554480
	/* java_name */
	.ascii	"mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor"
	.zero	18
	.zero	2

	/* #395 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554446
	/* java_name */
	.ascii	"mono/com/google/android/material/behavior/SwipeDismissBehavior_OnDismissListenerImplementor"
	.zero	7
	.zero	2

	/* #396 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33555044
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	64
	.zero	2

	/* #397 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554556
	/* java_name */
	.ascii	"xamarin/android/net/OldAndroidSSLSocketFactory"
	.zero	52
	.zero	2

	.size	map_java, 42984
/* Java to managed map: END */


/* java_name_width: START */
	.section	.rodata.java_name_width,"a",@progbits
	.type	java_name_width, @object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.word	100
/* java_name_width: END */
