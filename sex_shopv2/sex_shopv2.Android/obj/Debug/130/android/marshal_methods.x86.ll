; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [288 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 85
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 114
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 21
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 109
	i32 89037730, ; 4: PdfSharpCore.dll => 0x54e9ba2 => 24
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 99
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 99
	i32 127363243, ; 7: ICSharpCode.SharpZipLib => 0x79768ab => 10
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 66
	i32 166922606, ; 9: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 50
	i32 172012715, ; 10: FastAndroidCamera.dll => 0xa40b4ab => 7
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 100
	i32 209399409, ; 12: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 64
	i32 219130465, ; 13: Xamarin.Android.Support.v4 => 0xd0faa61 => 55
	i32 220171995, ; 14: System.Diagnostics.Debug => 0xd1f8edb => 138
	i32 230216969, ; 15: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 80
	i32 231814094, ; 16: System.Globalization => 0xdd133ce => 143
	i32 232815796, ; 17: System.Web.Services => 0xde07cb4 => 127
	i32 261689757, ; 18: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 69
	i32 278686392, ; 19: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 84
	i32 280482487, ; 20: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 78
	i32 318968648, ; 21: Xamarin.AndroidX.Activity.dll => 0x13031348 => 56
	i32 321597661, ; 22: System.Numerics => 0x132b30dd => 37
	i32 331603304, ; 23: SixLabors.Fonts => 0x13c3dd68 => 27
	i32 334355562, ; 24: ZXing.Net.Mobile.Forms.dll => 0x13eddc6a => 118
	i32 342366114, ; 25: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 82
	i32 385762202, ; 26: System.Memory.dll => 0x16fe439a => 36
	i32 389971796, ; 27: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 51
	i32 441335492, ; 28: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 68
	i32 442521989, ; 29: Xamarin.Essentials => 0x1a605985 => 108
	i32 442565967, ; 30: System.Collections => 0x1a61054f => 136
	i32 450948140, ; 31: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 77
	i32 465846621, ; 32: mscorlib => 0x1bc4415d => 18
	i32 469710990, ; 33: System.dll => 0x1bff388e => 33
	i32 476646585, ; 34: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 78
	i32 486930444, ; 35: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 89
	i32 498788369, ; 36: System.ObjectModel => 0x1dbae811 => 139
	i32 514659665, ; 37: Xamarin.Android.Support.Compat => 0x1ead1551 => 50
	i32 526420162, ; 38: System.Transactions.dll => 0x1f6088c2 => 122
	i32 545304856, ; 39: System.Runtime.Extensions => 0x2080b118 => 137
	i32 548916678, ; 40: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 15
	i32 605376203, ; 41: System.IO.Compression.FileSystem => 0x24154ecb => 125
	i32 618636221, ; 42: K4os.Compression.LZ4.Streams => 0x24dfa3bd => 13
	i32 627609679, ; 43: Xamarin.AndroidX.CustomView => 0x2568904f => 73
	i32 662205335, ; 44: System.Text.Encodings.Web.dll => 0x27787397 => 45
	i32 663517072, ; 45: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 105
	i32 666292255, ; 46: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 61
	i32 690569205, ; 47: System.Xml.Linq.dll => 0x29293ff5 => 48
	i32 692692150, ; 48: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 49
	i32 722857257, ; 49: System.Runtime.Loader.dll => 0x2b15ed29 => 41
	i32 775507847, ; 50: System.IO.Compression => 0x2e394f87 => 34
	i32 809851609, ; 51: System.Drawing.Common.dll => 0x30455ad9 => 124
	i32 843511501, ; 52: Xamarin.AndroidX.Print => 0x3246f6cd => 96
	i32 877678880, ; 53: System.Globalization.dll => 0x34505120 => 143
	i32 882883187, ; 54: Xamarin.Android.Support.v4.dll => 0x349fba73 => 55
	i32 902159924, ; 55: Rg.Plugins.Popup => 0x35c5de34 => 25
	i32 928116545, ; 56: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 114
	i32 954320159, ; 57: ZXing.Net.Mobile.Forms => 0x38e1c51f => 118
	i32 955402788, ; 58: Newtonsoft.Json => 0x38f24a24 => 21
	i32 958213972, ; 59: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 54
	i32 967690846, ; 60: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 82
	i32 973132049, ; 61: PdfSharpCore.resources.dll => 0x3a00d111 => 0
	i32 974778368, ; 62: FormsViewGroup.dll => 0x3a19f000 => 8
	i32 983077409, ; 63: MySql.Data.dll => 0x3a989221 => 19
	i32 992768348, ; 64: System.Collections.dll => 0x3b2c715c => 136
	i32 1012816738, ; 65: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 98
	i32 1035644815, ; 66: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 60
	i32 1042160112, ; 67: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 111
	i32 1052210849, ; 68: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 86
	i32 1098259244, ; 69: System => 0x41761b2c => 33
	i32 1134191450, ; 70: ZXingNetMobile.dll => 0x439a635a => 120
	i32 1175144683, ; 71: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 103
	i32 1178241025, ; 72: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 93
	i32 1204270330, ; 73: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 61
	i32 1231682534, ; 74: PdfSharpCore => 0x4969fbe6 => 24
	i32 1267360935, ; 75: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 104
	i32 1293217323, ; 76: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 75
	i32 1364015309, ; 77: System.IO => 0x514d38cd => 134
	i32 1365406463, ; 78: System.ServiceModel.Internals.dll => 0x516272ff => 128
	i32 1376866003, ; 79: Xamarin.AndroidX.SavedState => 0x52114ed3 => 98
	i32 1395857551, ; 80: Xamarin.AndroidX.Media.dll => 0x5333188f => 90
	i32 1406073936, ; 81: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 70
	i32 1411638395, ; 82: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 39
	i32 1445445088, ; 83: Xamarin.Android.Support.Fragment => 0x5627bde0 => 53
	i32 1457743152, ; 84: System.Runtime.Extensions.dll => 0x56e36530 => 137
	i32 1460219004, ; 85: Xamarin.Forms.Xaml => 0x57092c7c => 112
	i32 1462112819, ; 86: System.IO.Compression.dll => 0x57261233 => 34
	i32 1469204771, ; 87: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 59
	i32 1487250139, ; 88: K4os.Hash.xxHash => 0x58a5a2db => 14
	i32 1488290336, ; 89: SixLabors.ImageSharp.dll => 0x58b58220 => 28
	i32 1511525525, ; 90: MySqlConnector => 0x5a180c95 => 20
	i32 1543031311, ; 91: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 142
	i32 1571005899, ; 92: zxing.portable => 0x5da3a5cb => 119
	i32 1574652163, ; 93: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 52
	i32 1582372066, ; 94: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 74
	i32 1592978981, ; 95: System.Runtime.Serialization.dll => 0x5ef2ee25 => 5
	i32 1622152042, ; 96: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 88
	i32 1624863272, ; 97: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 107
	i32 1636350590, ; 98: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 72
	i32 1639515021, ; 99: System.Net.Http.dll => 0x61b9038d => 4
	i32 1639986890, ; 100: System.Text.RegularExpressions => 0x61c036ca => 142
	i32 1657153582, ; 101: System.Runtime => 0x62c6282e => 40
	i32 1658241508, ; 102: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 101
	i32 1658251792, ; 103: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 113
	i32 1670060433, ; 104: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 69
	i32 1701541528, ; 105: System.Diagnostics.Debug.dll => 0x656b7698 => 138
	i32 1726116996, ; 106: System.Reflection.dll => 0x66e27484 => 133
	i32 1729485958, ; 107: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 65
	i32 1746115085, ; 108: System.IO.Pipelines.dll => 0x68139a0d => 35
	i32 1766324549, ; 109: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 100
	i32 1776026572, ; 110: System.Core.dll => 0x69dc03cc => 31
	i32 1788241197, ; 111: Xamarin.AndroidX.Fragment => 0x6a96652d => 77
	i32 1796167890, ; 112: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 15
	i32 1808609942, ; 113: Xamarin.AndroidX.Loader => 0x6bcd3296 => 88
	i32 1813201214, ; 114: Xamarin.Google.Android.Material => 0x6c13413e => 113
	i32 1818569960, ; 115: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 94
	i32 1828688058, ; 116: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 16
	i32 1867746548, ; 117: Xamarin.Essentials.dll => 0x6f538cf4 => 108
	i32 1871574660, ; 118: sex_shopv2.Android.dll => 0x6f8df684 => 1
	i32 1878053835, ; 119: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 112
	i32 1885316902, ; 120: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 62
	i32 1904184254, ; 121: FastAndroidCamera => 0x717f8bbe => 7
	i32 1919157823, ; 122: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 91
	i32 1925302748, ; 123: K4os.Compression.LZ4.dll => 0x72c1c9dc => 12
	i32 2011961780, ; 124: System.Buffers.dll => 0x77ec19b4 => 29
	i32 2019465201, ; 125: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 86
	i32 2055257422, ; 126: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 83
	i32 2079903147, ; 127: System.Runtime.dll => 0x7bf8cdab => 40
	i32 2090596640, ; 128: System.Numerics.Vectors => 0x7c9bf920 => 38
	i32 2097448633, ; 129: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 79
	i32 2126786730, ; 130: Xamarin.Forms.Platform.Android => 0x7ec430aa => 110
	i32 2147381717, ; 131: sex_shopv2.Android => 0x7ffe71d5 => 1
	i32 2166116741, ; 132: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 52
	i32 2192057212, ; 133: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 16
	i32 2193016926, ; 134: System.ObjectModel.dll => 0x82b6c85e => 139
	i32 2201231467, ; 135: System.Net.Http => 0x8334206b => 4
	i32 2217644978, ; 136: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 103
	i32 2244775296, ; 137: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 89
	i32 2256548716, ; 138: Xamarin.AndroidX.MultiDex => 0x8680336c => 91
	i32 2260850484, ; 139: sex_shopv2.dll => 0x86c1d734 => 26
	i32 2261435625, ; 140: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 81
	i32 2265110946, ; 141: System.Security.AccessControl.dll => 0x8702d9a2 => 42
	i32 2279755925, ; 142: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 97
	i32 2315684594, ; 143: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 57
	i32 2329204181, ; 144: zxing.portable.dll => 0x8ad4d5d5 => 119
	i32 2330457430, ; 145: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 51
	i32 2341995103, ; 146: ZXingNetMobile => 0x8b98025f => 120
	i32 2373288475, ; 147: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 53
	i32 2383496789, ; 148: System.Security.Principal.Windows.dll => 0x8e114655 => 44
	i32 2409053734, ; 149: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 95
	i32 2431243866, ; 150: ZXing.Net.Mobile.Core.dll => 0x90e9d65a => 116
	i32 2454642406, ; 151: System.Text.Encoding.dll => 0x924edee6 => 141
	i32 2461352549, ; 152: PdfSharp.Xamarin.Forms => 0x92b54265 => 23
	i32 2465532216, ; 153: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 68
	i32 2471841756, ; 154: netstandard.dll => 0x93554fdc => 2
	i32 2475788418, ; 155: Java.Interop.dll => 0x93918882 => 11
	i32 2482213323, ; 156: ZXing.Net.Mobile.Forms.Android => 0x93f391cb => 117
	i32 2486824558, ; 157: K4os.Hash.xxHash.dll => 0x9439ee6e => 14
	i32 2498657740, ; 158: BouncyCastle.Cryptography.dll => 0x94ee7dcc => 6
	i32 2501346920, ; 159: System.Data.DataSetExtensions => 0x95178668 => 123
	i32 2505896520, ; 160: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 85
	i32 2570120770, ; 161: System.Text.Encodings.Web => 0x9930ee42 => 45
	i32 2581819634, ; 162: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 104
	i32 2611359322, ; 163: ZstdSharp.dll => 0x9ba62e5a => 115
	i32 2620871830, ; 164: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 72
	i32 2624644809, ; 165: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 76
	i32 2633051222, ; 166: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 84
	i32 2660759594, ; 167: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 129
	i32 2663698177, ; 168: System.Runtime.Loader => 0x9ec4cf01 => 41
	i32 2693849962, ; 169: System.IO.dll => 0xa090e36a => 134
	i32 2701096212, ; 170: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 101
	i32 2715334215, ; 171: System.Threading.Tasks.dll => 0xa1d8b647 => 135
	i32 2732626843, ; 172: Xamarin.AndroidX.Activity => 0xa2e0939b => 56
	i32 2737747696, ; 173: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 59
	i32 2765824710, ; 174: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 3
	i32 2766581644, ; 175: Xamarin.Forms.Core => 0xa4e6af8c => 109
	i32 2778768386, ; 176: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 106
	i32 2810250172, ; 177: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 70
	i32 2819470561, ; 178: System.Xml.dll => 0xa80db4e1 => 47
	i32 2841355853, ; 179: System.Security.Permissions => 0xa95ba64d => 43
	i32 2853208004, ; 180: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 106
	i32 2855708567, ; 181: Xamarin.AndroidX.Transition => 0xaa36a797 => 102
	i32 2861816565, ; 182: Rg.Plugins.Popup.dll => 0xaa93daf5 => 25
	i32 2867946736, ; 183: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 129
	i32 2901442782, ; 184: System.Reflection => 0xacf080de => 133
	i32 2903344695, ; 185: System.ComponentModel.Composition => 0xad0d8637 => 126
	i32 2905242038, ; 186: mscorlib.dll => 0xad2a79b6 => 18
	i32 2916838712, ; 187: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 107
	i32 2919462931, ; 188: System.Numerics.Vectors.dll => 0xae037813 => 38
	i32 2921128767, ; 189: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 58
	i32 2944313911, ; 190: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 30
	i32 2968338931, ; 191: System.Security.Principal.Windows => 0xb0ed41f3 => 44
	i32 2978675010, ; 192: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 75
	i32 3012788804, ; 193: System.Configuration.ConfigurationManager => 0xb3938244 => 30
	i32 3024354802, ; 194: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 80
	i32 3025069135, ; 195: K4os.Compression.LZ4.Streams.dll => 0xb44ee44f => 13
	i32 3044182254, ; 196: FormsViewGroup => 0xb57288ee => 8
	i32 3057625584, ; 197: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 92
	i32 3075834255, ; 198: System.Threading.Tasks => 0xb755818f => 135
	i32 3083426067, ; 199: sex_shopv2 => 0xb7c95913 => 26
	i32 3089219899, ; 200: ZstdSharp => 0xb821c13b => 115
	i32 3092211740, ; 201: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 54
	i32 3111772706, ; 202: System.Runtime.Serialization => 0xb979e222 => 5
	i32 3124832203, ; 203: System.Threading.Tasks.Extensions => 0xba4127cb => 132
	i32 3132293585, ; 204: System.Security.AccessControl => 0xbab301d1 => 42
	i32 3135029042, ; 205: ICSharpCode.SharpZipLib.dll => 0xbadcbf32 => 10
	i32 3178908327, ; 206: SixLabors.Fonts.dll => 0xbd7a4aa7 => 27
	i32 3204380047, ; 207: System.Data.dll => 0xbefef58f => 121
	i32 3211777861, ; 208: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 74
	i32 3213246214, ; 209: System.Security.Permissions.dll => 0xbf863f06 => 43
	i32 3220365878, ; 210: System.Threading => 0xbff2e236 => 140
	i32 3247949154, ; 211: Mono.Security => 0xc197c562 => 131
	i32 3258312781, ; 212: Xamarin.AndroidX.CardView => 0xc235e84d => 65
	i32 3265893370, ; 213: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 132
	i32 3267021929, ; 214: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 63
	i32 3284441313, ; 215: SixLabors.ImageSharp => 0xc3c498e1 => 28
	i32 3299363146, ; 216: System.Text.Encoding => 0xc4a8494a => 141
	i32 3317135071, ; 217: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 73
	i32 3317144872, ; 218: System.Data => 0xc5b79d28 => 121
	i32 3338797703, ; 219: PdfSharp.Xamarin.Forms.dll => 0xc7020287 => 23
	i32 3340431453, ; 220: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 62
	i32 3346324047, ; 221: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 93
	i32 3353484488, ; 222: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 79
	i32 3358260929, ; 223: System.Text.Json => 0xc82afec1 => 46
	i32 3362522851, ; 224: Xamarin.AndroidX.Core => 0xc86c06e3 => 71
	i32 3366347497, ; 225: Java.Interop => 0xc8a662e9 => 11
	i32 3374999561, ; 226: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 97
	i32 3381033598, ; 227: K4os.Compression.LZ4 => 0xc9867a7e => 12
	i32 3395150330, ; 228: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 39
	i32 3404865022, ; 229: System.ServiceModel.Internals => 0xcaf21dfe => 128
	i32 3429136800, ; 230: System.Xml => 0xcc6479a0 => 47
	i32 3430777524, ; 231: netstandard => 0xcc7d82b4 => 2
	i32 3439690031, ; 232: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 49
	i32 3441283291, ; 233: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 76
	i32 3467345667, ; 234: MySql.Data => 0xceab7f03 => 19
	i32 3476120550, ; 235: Mono.Android => 0xcf3163e6 => 17
	i32 3485117614, ; 236: System.Text.Json.dll => 0xcfbaacae => 46
	i32 3486566296, ; 237: System.Transactions => 0xcfd0c798 => 122
	i32 3493954962, ; 238: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 67
	i32 3499097210, ; 239: Google.Protobuf.dll => 0xd08ffc7a => 9
	i32 3501239056, ; 240: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 63
	i32 3509114376, ; 241: System.Xml.Linq => 0xd128d608 => 48
	i32 3515174580, ; 242: System.Security.dll => 0xd1854eb4 => 130
	i32 3536029504, ; 243: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 110
	i32 3567349600, ; 244: System.ComponentModel.Composition.dll => 0xd4a16f60 => 126
	i32 3605570793, ; 245: BouncyCastle.Cryptography => 0xd6e8a4e9 => 6
	i32 3618140916, ; 246: Xamarin.AndroidX.Preference => 0xd7a872f4 => 95
	i32 3627220390, ; 247: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 96
	i32 3632359727, ; 248: Xamarin.Forms.Platform => 0xd881692f => 111
	i32 3633644679, ; 249: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 58
	i32 3641597786, ; 250: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 83
	i32 3645630983, ; 251: Google.Protobuf => 0xd94bea07 => 9
	i32 3672681054, ; 252: Mono.Android.dll => 0xdae8aa5e => 17
	i32 3676310014, ; 253: System.Web.Services.dll => 0xdb2009fe => 127
	i32 3682565725, ; 254: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 64
	i32 3684561358, ; 255: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 67
	i32 3689375977, ; 256: System.Drawing.Common => 0xdbe768e9 => 124
	i32 3718780102, ; 257: Xamarin.AndroidX.Annotation => 0xdda814c6 => 57
	i32 3724971120, ; 258: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 92
	i32 3725398387, ; 259: PdfSharpCore.resources => 0xde0d1173 => 0
	i32 3726234846, ; 260: PdfSharp.Xamarin.Forms.Android => 0xde19d4de => 22
	i32 3748608112, ; 261: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 32
	i32 3758932259, ; 262: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 81
	i32 3786282454, ; 263: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 66
	i32 3822602673, ; 264: Xamarin.AndroidX.Media => 0xe3d849b1 => 90
	i32 3829621856, ; 265: System.Numerics.dll => 0xe4436460 => 37
	i32 3847036339, ; 266: ZXing.Net.Mobile.Forms.Android.dll => 0xe54d1db3 => 117
	i32 3885922214, ; 267: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 102
	i32 3896760992, ; 268: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 71
	i32 3920810846, ; 269: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 125
	i32 3921031405, ; 270: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 105
	i32 3931092270, ; 271: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 94
	i32 3945713374, ; 272: System.Data.DataSetExtensions.dll => 0xeb2ecede => 123
	i32 3953953790, ; 273: System.Text.Encoding.CodePages => 0xebac8bfe => 3
	i32 3955647286, ; 274: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 60
	i32 4023392905, ; 275: System.IO.Pipelines => 0xefd01a89 => 35
	i32 4025784931, ; 276: System.Memory => 0xeff49a63 => 36
	i32 4061235864, ; 277: PdfSharp.Xamarin.Forms.Android.dll => 0xf2118a98 => 22
	i32 4073602200, ; 278: System.Threading.dll => 0xf2ce3c98 => 140
	i32 4079385022, ; 279: MySqlConnector.dll => 0xf32679be => 20
	i32 4105002889, ; 280: Mono.Security.dll => 0xf4ad5f89 => 131
	i32 4151237749, ; 281: System.Core => 0xf76edc75 => 31
	i32 4182413190, ; 282: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 87
	i32 4185676441, ; 283: System.Security => 0xf97c5a99 => 130
	i32 4186595366, ; 284: ZXing.Net.Mobile.Core => 0xf98a6026 => 116
	i32 4213026141, ; 285: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 32
	i32 4260525087, ; 286: System.Buffers => 0xfdf2741f => 29
	i32 4292120959 ; 287: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 87
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [288 x i32] [
	i32 85, i32 114, i32 21, i32 109, i32 24, i32 99, i32 99, i32 10, ; 0..7
	i32 66, i32 50, i32 7, i32 100, i32 64, i32 55, i32 138, i32 80, ; 8..15
	i32 143, i32 127, i32 69, i32 84, i32 78, i32 56, i32 37, i32 27, ; 16..23
	i32 118, i32 82, i32 36, i32 51, i32 68, i32 108, i32 136, i32 77, ; 24..31
	i32 18, i32 33, i32 78, i32 89, i32 139, i32 50, i32 122, i32 137, ; 32..39
	i32 15, i32 125, i32 13, i32 73, i32 45, i32 105, i32 61, i32 48, ; 40..47
	i32 49, i32 41, i32 34, i32 124, i32 96, i32 143, i32 55, i32 25, ; 48..55
	i32 114, i32 118, i32 21, i32 54, i32 82, i32 0, i32 8, i32 19, ; 56..63
	i32 136, i32 98, i32 60, i32 111, i32 86, i32 33, i32 120, i32 103, ; 64..71
	i32 93, i32 61, i32 24, i32 104, i32 75, i32 134, i32 128, i32 98, ; 72..79
	i32 90, i32 70, i32 39, i32 53, i32 137, i32 112, i32 34, i32 59, ; 80..87
	i32 14, i32 28, i32 20, i32 142, i32 119, i32 52, i32 74, i32 5, ; 88..95
	i32 88, i32 107, i32 72, i32 4, i32 142, i32 40, i32 101, i32 113, ; 96..103
	i32 69, i32 138, i32 133, i32 65, i32 35, i32 100, i32 31, i32 77, ; 104..111
	i32 15, i32 88, i32 113, i32 94, i32 16, i32 108, i32 1, i32 112, ; 112..119
	i32 62, i32 7, i32 91, i32 12, i32 29, i32 86, i32 83, i32 40, ; 120..127
	i32 38, i32 79, i32 110, i32 1, i32 52, i32 16, i32 139, i32 4, ; 128..135
	i32 103, i32 89, i32 91, i32 26, i32 81, i32 42, i32 97, i32 57, ; 136..143
	i32 119, i32 51, i32 120, i32 53, i32 44, i32 95, i32 116, i32 141, ; 144..151
	i32 23, i32 68, i32 2, i32 11, i32 117, i32 14, i32 6, i32 123, ; 152..159
	i32 85, i32 45, i32 104, i32 115, i32 72, i32 76, i32 84, i32 129, ; 160..167
	i32 41, i32 134, i32 101, i32 135, i32 56, i32 59, i32 3, i32 109, ; 168..175
	i32 106, i32 70, i32 47, i32 43, i32 106, i32 102, i32 25, i32 129, ; 176..183
	i32 133, i32 126, i32 18, i32 107, i32 38, i32 58, i32 30, i32 44, ; 184..191
	i32 75, i32 30, i32 80, i32 13, i32 8, i32 92, i32 135, i32 26, ; 192..199
	i32 115, i32 54, i32 5, i32 132, i32 42, i32 10, i32 27, i32 121, ; 200..207
	i32 74, i32 43, i32 140, i32 131, i32 65, i32 132, i32 63, i32 28, ; 208..215
	i32 141, i32 73, i32 121, i32 23, i32 62, i32 93, i32 79, i32 46, ; 216..223
	i32 71, i32 11, i32 97, i32 12, i32 39, i32 128, i32 47, i32 2, ; 224..231
	i32 49, i32 76, i32 19, i32 17, i32 46, i32 122, i32 67, i32 9, ; 232..239
	i32 63, i32 48, i32 130, i32 110, i32 126, i32 6, i32 95, i32 96, ; 240..247
	i32 111, i32 58, i32 83, i32 9, i32 17, i32 127, i32 64, i32 67, ; 248..255
	i32 124, i32 57, i32 92, i32 0, i32 22, i32 32, i32 81, i32 66, ; 256..263
	i32 90, i32 37, i32 117, i32 102, i32 71, i32 125, i32 105, i32 94, ; 264..271
	i32 123, i32 3, i32 60, i32 35, i32 36, i32 22, i32 140, i32 20, ; 272..279
	i32 131, i32 31, i32 87, i32 130, i32 116, i32 32, i32 29, i32 87 ; 288..287
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
