; ModuleID = 'obj\Debug\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [288 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 76
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 17
	i64 197751585713159992, ; 2: ICSharpCode.SharpZipLib.dll => 0x2be8e04fc33ff38 => 10
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 66
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 98
	i64 263803244706540312, ; 5: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 25
	i64 295915112840604065, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 99
	i64 486223428996552534, ; 7: ZstdSharp.dll => 0x6bf69a1eecfd756 => 115
	i64 595053104451889001, ; 8: MySql.Data => 0x8420da551592769 => 19
	i64 634308326490598313, ; 9: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 85
	i64 702024105029695270, ; 10: System.Drawing.Common => 0x9be17343c0e7726 => 124
	i64 710500338161506772, ; 11: SixLabors.Fonts.dll => 0x9dc344b0ce959d4 => 27
	i64 720058930071658100, ; 12: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 79
	i64 872800313462103108, ; 13: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 75
	i64 940822596282819491, ; 14: System.Transactions => 0xd0e792aa81923a3 => 122
	i64 996343623809489702, ; 15: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 111
	i64 1000557547492888992, ; 16: Mono.Security.dll => 0xde2b1c9cba651a0 => 131
	i64 1120440138749646132, ; 17: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 113
	i64 1315114680217950157, ; 18: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 61
	i64 1342439039765371018, ; 19: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 53
	i64 1425944114962822056, ; 20: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 5
	i64 1624659445732251991, ; 21: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 59
	i64 1628611045998245443, ; 22: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 87
	i64 1636321030536304333, ; 23: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 80
	i64 1731380447121279447, ; 24: Newtonsoft.Json => 0x18071957e9b889d7 => 21
	i64 1743969030606105336, ; 25: System.Memory.dll => 0x1833d297e88f2af8 => 36
	i64 1769105627832031750, ; 26: Google.Protobuf => 0x188d203205129a06 => 9
	i64 1795316252682057001, ; 27: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 60
	i64 1836611346387731153, ; 28: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 98
	i64 1865037103900624886, ; 29: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 15
	i64 1875917498431009007, ; 30: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 57
	i64 1938067011858688285, ; 31: Xamarin.Android.Support.v4.dll => 0x1ae565add0bd691d => 55
	i64 1981742497975770890, ; 32: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 86
	i64 2040001226662520565, ; 33: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 132
	i64 2133195048986300728, ; 34: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 21
	i64 2136356949452311481, ; 35: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 91
	i64 2165725771938924357, ; 36: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 64
	i64 2262844636196693701, ; 37: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 75
	i64 2271236637390790846, ; 38: sex_shopv2.Android.dll => 0x1f850db02c87e0be => 1
	i64 2284400282711631002, ; 39: System.Web.Services => 0x1fb3d1f42fd4249a => 127
	i64 2329709569556905518, ; 40: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 83
	i64 2335503487726329082, ; 41: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 45
	i64 2337758774805907496, ; 42: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 39
	i64 2470498323731680442, ; 43: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 70
	i64 2479423007379663237, ; 44: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 103
	i64 2497223385847772520, ; 45: System.Runtime => 0x22a7eb7046413568 => 40
	i64 2547086958574651984, ; 46: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 56
	i64 2592350477072141967, ; 47: System.Xml.dll => 0x23f9e10627330e8f => 47
	i64 2624866290265602282, ; 48: mscorlib.dll => 0x246d65fbde2db8ea => 18
	i64 2694427813909235223, ; 49: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 95
	i64 2783046991838674048, ; 50: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 39
	i64 2815524396660695947, ; 51: System.Security.AccessControl => 0x2712c0857f68238b => 42
	i64 2851879596360956261, ; 52: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 30
	i64 2960931600190307745, ; 53: Xamarin.Forms.Core => 0x2917579a49927da1 => 109
	i64 3017704767998173186, ; 54: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 113
	i64 3022227708164871115, ; 55: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 54
	i64 3289520064315143713, ; 56: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 82
	i64 3303437397778967116, ; 57: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 58
	i64 3311221304742556517, ; 58: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 38
	i64 3493805808809882663, ; 59: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 101
	i64 3522470458906976663, ; 60: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 100
	i64 3531994851595924923, ; 61: System.Numerics => 0x31042a9aade235bb => 37
	i64 3571415421602489686, ; 62: System.Runtime.dll => 0x319037675df7e556 => 40
	i64 3716579019761409177, ; 63: netstandard.dll => 0x3393f0ed5c8c5c99 => 2
	i64 3727469159507183293, ; 64: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 97
	i64 3772598417116884899, ; 65: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 76
	i64 3966267475168208030, ; 66: System.Memory => 0x370b03412596249e => 36
	i64 4255796613242758200, ; 67: zxing.portable => 0x3b0fa078b8a52438 => 119
	i64 4292233171264798357, ; 68: ZXing.Net.Mobile.Core.dll => 0x3b911353fa62fe95 => 116
	i64 4525561845656915374, ; 69: System.ServiceModel.Internals => 0x3ece06856b710dae => 128
	i64 4636684751163556186, ; 70: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 105
	i64 4782108999019072045, ; 71: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 63
	i64 4794310189461587505, ; 72: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 56
	i64 4795410492532947900, ; 73: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 100
	i64 4850570121312946267, ; 74: sex_shopv2 => 0x4350afd36efb485b => 26
	i64 4853321196694829351, ; 75: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 41
	i64 5032256205035195147, ; 76: MySql.Data.dll => 0x45d62a5b3fe0cb0b => 19
	i64 5142919913060024034, ; 77: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 110
	i64 5203618020066742981, ; 78: Xamarin.Essentials => 0x4836f704f0e652c5 => 108
	i64 5205316157927637098, ; 79: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 89
	i64 5233983725610684227, ; 80: FastAndroidCamera => 0x48a2d877b5334f43 => 7
	i64 5290786973231294105, ; 81: System.Runtime.Loader => 0x496ca6b869b72699 => 41
	i64 5348796042099802469, ; 82: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 90
	i64 5376510917114486089, ; 83: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 103
	i64 5408338804355907810, ; 84: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 102
	i64 5446034149219586269, ; 85: System.Diagnostics.Debug => 0x4b94333452e150dd => 138
	i64 5451019430259338467, ; 86: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 69
	i64 5507995362134886206, ; 87: System.Core.dll => 0x4c705499688c873e => 31
	i64 5624375662354994915, ; 88: SixLabors.ImageSharp.dll => 0x4e0dcbdd9e0596e3 => 28
	i64 5692067934154308417, ; 89: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 107
	i64 5757522595884336624, ; 90: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 67
	i64 5767696078500135884, ; 91: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 49
	i64 5767749323661124970, ; 92: ZXing.Net.Mobile.Core => 0x500b29737652256a => 116
	i64 5812387745074149618, ; 93: K4os.Compression.LZ4.dll => 0x50a9bfdbd9fa78f2 => 12
	i64 5814345312393086621, ; 94: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 95
	i64 5896680224035167651, ; 95: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 84
	i64 6085203216496545422, ; 96: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 111
	i64 6086316965293125504, ; 97: FormsViewGroup.dll => 0x5476f10882baef80 => 8
	i64 6222399776351216807, ; 98: System.Text.Json.dll => 0x565a67a0ffe264a7 => 46
	i64 6319713645133255417, ; 99: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 85
	i64 6401687960814735282, ; 100: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 83
	i64 6504860066809920875, ; 101: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 64
	i64 6548213210057960872, ; 102: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 73
	i64 6588599331800941662, ; 103: Xamarin.Android.Support.v4 => 0x5b6f682f335f045e => 55
	i64 6591024623626361694, ; 104: System.Web.Services.dll => 0x5b7805f9751a1b5e => 127
	i64 6617685658146568858, ; 105: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 3
	i64 6659513131007730089, ; 106: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 79
	i64 6876862101832370452, ; 107: System.Xml.Linq => 0x5f6f85a57d108914 => 48
	i64 6894844156784520562, ; 108: System.Numerics.Vectors => 0x5faf683aead1ad72 => 38
	i64 7020367265897339456, ; 109: PdfSharp.Xamarin.Forms.Android.dll => 0x616d5ad534975a40 => 22
	i64 7036436454368433159, ; 110: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 81
	i64 7103753931438454322, ; 111: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 78
	i64 7338192458477945005, ; 112: System.Reflection => 0x65d67f295d0740ad => 133
	i64 7451202609009583483, ; 113: K4os.Hash.xxHash => 0x6767fd4b737ae57b => 14
	i64 7488575175965059935, ; 114: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 48
	i64 7489048572193775167, ; 115: System.ObjectModel => 0x67ee71ff6b419e3f => 139
	i64 7635363394907363464, ; 116: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 109
	i64 7637365915383206639, ; 117: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 108
	i64 7654504624184590948, ; 118: System.Net.Http => 0x6a3a4366801b8264 => 4
	i64 7702918024138448955, ; 119: MySqlConnector => 0x6ae6432192b9e03b => 20
	i64 7820441508502274321, ; 120: System.Data => 0x6c87ca1e14ff8111 => 121
	i64 7836164640616011524, ; 121: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 59
	i64 8044118961405839122, ; 122: System.ComponentModel.Composition => 0x6fa2739369944712 => 126
	i64 8064050204834738623, ; 123: System.Collections.dll => 0x6fe942efa61731bf => 136
	i64 8083354569033831015, ; 124: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 82
	i64 8087206902342787202, ; 125: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 32
	i64 8101777744205214367, ; 126: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 49
	i64 8103644804370223335, ; 127: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 123
	i64 8167236081217502503, ; 128: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 11
	i64 8185542183669246576, ; 129: System.Collections => 0x7198e33f4794aa70 => 136
	i64 8290740647658429042, ; 130: System.Runtime.Extensions => 0x730ea0b15c929a72 => 137
	i64 8304495330138038410, ; 131: PdfSharpCore.resources.dll => 0x733f7e80efc4a08a => 0
	i64 8329843434826495442, ; 132: ICSharpCode.SharpZipLib => 0x73998c787773f5d2 => 10
	i64 8398329775253868912, ; 133: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 68
	i64 8400357532724379117, ; 134: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 94
	i64 8476857680833348370, ; 135: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 43
	i64 8601935802264776013, ; 136: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 102
	i64 8626175481042262068, ; 137: Java.Interop => 0x77b654e585b55834 => 11
	i64 8639588376636138208, ; 138: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 93
	i64 8649481918441731987, ; 139: PdfSharpCore => 0x780921fa57e23793 => 24
	i64 8684531736582871431, ; 140: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 125
	i64 8725526185868997716, ; 141: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 32
	i64 9286073997824813334, ; 142: BouncyCastle.Cryptography => 0x80dec319ee56e916 => 6
	i64 9312692141327339315, ; 143: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 107
	i64 9324707631942237306, ; 144: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 60
	i64 9342122023452561803, ; 145: SixLabors.ImageSharp => 0x81a5e27bd03e518b => 28
	i64 9425524665645010690, ; 146: PdfSharp.Xamarin.Forms => 0x82ce30bead740f02 => 23
	i64 9584643793929893533, ; 147: System.IO.dll => 0x85037ebfbbd7f69d => 134
	i64 9659729154652888475, ; 148: System.Text.RegularExpressions => 0x860e407c9991dd9b => 142
	i64 9662334977499516867, ; 149: System.Numerics.dll => 0x8617827802b0cfc3 => 37
	i64 9678050649315576968, ; 150: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 70
	i64 9711637524876806384, ; 151: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 90
	i64 9808709177481450983, ; 152: Mono.Android.dll => 0x881f890734e555e7 => 17
	i64 9825649861376906464, ; 153: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 67
	i64 9834056768316610435, ; 154: System.Transactions.dll => 0x8879968718899783 => 122
	i64 9998632235833408227, ; 155: Mono.Security => 0x8ac2470b209ebae3 => 131
	i64 9998685624638532270, ; 156: K4os.Hash.xxHash.dll => 0x8ac27799ad626aae => 14
	i64 10038780035334861115, ; 157: System.Net.Http.dll => 0x8b50e941206af13b => 4
	i64 10229024438826829339, ; 158: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 73
	i64 10360651442923773544, ; 159: System.Text.Encoding => 0x8fc86d98211c1e68 => 141
	i64 10376576884623852283, ; 160: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 101
	i64 10430153318873392755, ; 161: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 71
	i64 10447083246144586668, ; 162: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 15
	i64 10566960649245365243, ; 163: System.Globalization.dll => 0x92a562b96dcd13fb => 143
	i64 10714184849103829812, ; 164: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 137
	i64 10847732767863316357, ; 165: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 61
	i64 10885087467875303060, ; 166: K4os.Compression.LZ4.Streams => 0x970f99615fc37e94 => 13
	i64 11002576679268595294, ; 167: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 16
	i64 11023048688141570732, ; 168: System.Core => 0x98f9bc61168392ac => 31
	i64 11037814507248023548, ; 169: System.Xml => 0x992e31d0412bf7fc => 47
	i64 11162124722117608902, ; 170: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 106
	i64 11340910727871153756, ; 171: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 72
	i64 11341245327015630248, ; 172: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 30
	i64 11376461258732682436, ; 173: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 50
	i64 11392833485892708388, ; 174: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 96
	i64 11513602507638267977, ; 175: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 35
	i64 11529969570048099689, ; 176: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 106
	i64 11578238080964724296, ; 177: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 81
	i64 11580057168383206117, ; 178: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 57
	i64 11597940890313164233, ; 179: netstandard => 0xa0f429ca8d1805c9 => 2
	i64 11672361001936329215, ; 180: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 78
	i64 11683710219442713716, ; 181: ZXingNetMobile => 0xa224e08aa87bf474 => 120
	i64 11743665907891708234, ; 182: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 135
	i64 11916839572569902148, ; 183: sex_shopv2.Android => 0xa5611e740058cc44 => 1
	i64 12011556116648931059, ; 184: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 129
	i64 12036099219279441448, ; 185: ZXing.Net.Mobile.Forms => 0xa708d0784e81ee28 => 118
	i64 12063623837170009990, ; 186: System.Security => 0xa76a99f6ce740786 => 130
	i64 12102847907131387746, ; 187: System.Buffers => 0xa7f5f40c43256f62 => 29
	i64 12137774235383566651, ; 188: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 104
	i64 12145679461940342714, ; 189: System.Text.Json => 0xa88e1f1ebcb62fba => 46
	i64 12313367145828839434, ; 190: System.IO.Pipelines => 0xaae1de2e1c17f00a => 35
	i64 12414299427252656003, ; 191: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 50
	i64 12434837002450068388, ; 192: sex_shopv2.dll => 0xac916a5f02eb63a4 => 26
	i64 12451044538927396471, ; 193: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 77
	i64 12466513435562512481, ; 194: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 88
	i64 12487638416075308985, ; 195: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 74
	i64 12495150183875561749, ; 196: PdfSharp.Xamarin.Forms.dll => 0xad67b0e3dd0f4915 => 23
	i64 12538491095302438457, ; 197: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 65
	i64 12550732019250633519, ; 198: System.IO.Compression => 0xae2d28465e8e1b2f => 34
	i64 12551451704392164662, ; 199: MySqlConnector.dll => 0xae2fb6d31fc42536 => 20
	i64 12629983860853673214, ; 200: ZXing.Net.Mobile.Forms.Android.dll => 0xaf46b767a9198cfe => 117
	i64 12700543734426720211, ; 201: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 66
	i64 12708238894395270091, ; 202: System.IO => 0xb05cbbf17d3ba3cb => 134
	i64 12952608645614506925, ; 203: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 52
	i64 12963446364377008305, ; 204: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 124
	i64 13109727801987935684, ; 205: SixLabors.Fonts => 0xb5ef1bfa438dadc4 => 27
	i64 13162471042547327635, ; 206: System.Security.Permissions => 0xb6aa7dace9662293 => 43
	i64 13358059602087096138, ; 207: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 53
	i64 13370592475155966277, ; 208: System.Runtime.Serialization => 0xb98de304062ea945 => 5
	i64 13401370062847626945, ; 209: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 104
	i64 13404347523447273790, ; 210: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 68
	i64 13454009404024712428, ; 211: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 114
	i64 13491513212026656886, ; 212: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 62
	i64 13572454107664307259, ; 213: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 97
	i64 13647894001087880694, ; 214: System.Data.dll => 0xbd670f48cb071df6 => 121
	i64 13651437650664073647, ; 215: PdfSharp.Xamarin.Forms.Android => 0xbd73a6370139a9af => 22
	i64 13710614125866346983, ; 216: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 42
	i64 13959074834287824816, ; 217: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 77
	i64 13967638549803255703, ; 218: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 110
	i64 14124974489674258913, ; 219: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 65
	i64 14125464355221830302, ; 220: System.Threading.dll => 0xc407bafdbc707a9e => 140
	i64 14172845254133543601, ; 221: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 91
	i64 14261073672896646636, ; 222: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 96
	i64 14327695147300244862, ; 223: System.Reflection.dll => 0xc6d632d338eb4d7e => 133
	i64 14400856865250966808, ; 224: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 51
	i64 14486659737292545672, ; 225: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 84
	i64 14551742072151931844, ; 226: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 45
	i64 14644440854989303794, ; 227: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 89
	i64 14792063746108907174, ; 228: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 114
	i64 14852515768018889994, ; 229: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 72
	i64 14912225920358050525, ; 230: System.Security.Principal.Windows => 0xcef2de7759506add => 44
	i64 14935719434541007538, ; 231: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 3
	i64 14954388675289411854, ; 232: ZXing.Net.Mobile.Forms.dll => 0xcf88a944b7bff10e => 118
	i64 14987728460634540364, ; 233: System.IO.Compression.dll => 0xcfff1ba06622494c => 34
	i64 14988210264188246988, ; 234: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 74
	i64 15076659072870671916, ; 235: System.ObjectModel.dll => 0xd13b0d8c1620662c => 139
	i64 15203992829448345623, ; 236: PdfSharpCore.dll => 0xd2ff6eec96dad817 => 24
	i64 15370334346939861994, ; 237: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 71
	i64 15457813392950723921, ; 238: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 54
	i64 15526743539506359484, ; 239: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 141
	i64 15582737692548360875, ; 240: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 87
	i64 15609085926864131306, ; 241: System.dll => 0xd89e9cf3334914ea => 33
	i64 15620612276725577442, ; 242: BouncyCastle.Cryptography.dll => 0xd8c7901aa85576e2 => 6
	i64 15777549416145007739, ; 243: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 99
	i64 15810740023422282496, ; 244: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 112
	i64 15817206913877585035, ; 245: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 135
	i64 15851975962649584118, ; 246: zxing.portable.dll => 0xdbfd882691c261f6 => 119
	i64 15963349826457351533, ; 247: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 132
	i64 16107354805249926211, ; 248: ZXingNetMobile.dll => 0xdf88d1dade1a6443 => 120
	i64 16119456071779071829, ; 249: FastAndroidCamera.dll => 0xdfb3cfe48ae7b755 => 7
	i64 16154507427712707110, ; 250: System => 0xe03056ea4e39aa26 => 33
	i64 16321164108206115771, ; 251: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 16
	i64 16337011941688632206, ; 252: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 44
	i64 16517758215407172360, ; 253: PdfSharpCore.resources => 0xe53add9503227b08 => 0
	i64 16526376532108668976, ; 254: ZXing.Net.Mobile.Forms.Android => 0xe5597be53cb07030 => 117
	i64 16565028646146589191, ; 255: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 126
	i64 16621146507174665210, ; 256: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 69
	i64 16637862623548895820, ; 257: K4os.Compression.LZ4 => 0xe6e58fe7aa61724c => 12
	i64 16677317093839702854, ; 258: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 94
	i64 16822611501064131242, ; 259: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 123
	i64 16833383113903931215, ; 260: mscorlib => 0xe99c30c1484d7f4f => 18
	i64 16873478996345296124, ; 261: K4os.Compression.LZ4.Streams.dll => 0xea2aa3bf662d14fc => 13
	i64 16890310621557459193, ; 262: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 142
	i64 16932527889823454152, ; 263: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 52
	i64 17024911836938395553, ; 264: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 58
	i64 17031351772568316411, ; 265: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 92
	i64 17037200463775726619, ; 266: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 80
	i64 17285063141349522879, ; 267: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 25
	i64 17428701562824544279, ; 268: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 51
	i64 17523946658117960076, ; 269: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 129
	i64 17544493274320527064, ; 270: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 63
	i64 17553799493972570483, ; 271: Google.Protobuf.dll => 0xf39b9fa2c0aab173 => 9
	i64 17627500474728259406, ; 272: System.Globalization => 0xf4a176498a351f4e => 143
	i64 17685921127322830888, ; 273: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 138
	i64 17704177640604968747, ; 274: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 88
	i64 17710060891934109755, ; 275: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 86
	i64 17838668724098252521, ; 276: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 29
	i64 17882897186074144999, ; 277: FormsViewGroup => 0xf82cd03e3ac830e7 => 8
	i64 17892495832318972303, ; 278: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 112
	i64 17928294245072900555, ; 279: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 125
	i64 17979120673405951447, ; 280: ZstdSharp => 0xf982aafeb83e5dd7 => 115
	i64 18025913125965088385, ; 281: System.Threading => 0xfa28e87b91334681 => 140
	i64 18116111925905154859, ; 282: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 62
	i64 18121036031235206392, ; 283: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 92
	i64 18129453464017766560, ; 284: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 128
	i64 18305135509493619199, ; 285: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 93
	i64 18318849532986632368, ; 286: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18380184030268848184 ; 287: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 105
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [288 x i32] [
	i32 76, i32 17, i32 10, i32 66, i32 98, i32 25, i32 99, i32 115, ; 0..7
	i32 19, i32 85, i32 124, i32 27, i32 79, i32 75, i32 122, i32 111, ; 8..15
	i32 131, i32 113, i32 61, i32 53, i32 5, i32 59, i32 87, i32 80, ; 16..23
	i32 21, i32 36, i32 9, i32 60, i32 98, i32 15, i32 57, i32 55, ; 24..31
	i32 86, i32 132, i32 21, i32 91, i32 64, i32 75, i32 1, i32 127, ; 32..39
	i32 83, i32 45, i32 39, i32 70, i32 103, i32 40, i32 56, i32 47, ; 40..47
	i32 18, i32 95, i32 39, i32 42, i32 30, i32 109, i32 113, i32 54, ; 48..55
	i32 82, i32 58, i32 38, i32 101, i32 100, i32 37, i32 40, i32 2, ; 56..63
	i32 97, i32 76, i32 36, i32 119, i32 116, i32 128, i32 105, i32 63, ; 64..71
	i32 56, i32 100, i32 26, i32 41, i32 19, i32 110, i32 108, i32 89, ; 72..79
	i32 7, i32 41, i32 90, i32 103, i32 102, i32 138, i32 69, i32 31, ; 80..87
	i32 28, i32 107, i32 67, i32 49, i32 116, i32 12, i32 95, i32 84, ; 88..95
	i32 111, i32 8, i32 46, i32 85, i32 83, i32 64, i32 73, i32 55, ; 96..103
	i32 127, i32 3, i32 79, i32 48, i32 38, i32 22, i32 81, i32 78, ; 104..111
	i32 133, i32 14, i32 48, i32 139, i32 109, i32 108, i32 4, i32 20, ; 112..119
	i32 121, i32 59, i32 126, i32 136, i32 82, i32 32, i32 49, i32 123, ; 120..127
	i32 11, i32 136, i32 137, i32 0, i32 10, i32 68, i32 94, i32 43, ; 128..135
	i32 102, i32 11, i32 93, i32 24, i32 125, i32 32, i32 6, i32 107, ; 136..143
	i32 60, i32 28, i32 23, i32 134, i32 142, i32 37, i32 70, i32 90, ; 144..151
	i32 17, i32 67, i32 122, i32 131, i32 14, i32 4, i32 73, i32 141, ; 152..159
	i32 101, i32 71, i32 15, i32 143, i32 137, i32 61, i32 13, i32 16, ; 160..167
	i32 31, i32 47, i32 106, i32 72, i32 30, i32 50, i32 96, i32 35, ; 168..175
	i32 106, i32 81, i32 57, i32 2, i32 78, i32 120, i32 135, i32 1, ; 176..183
	i32 129, i32 118, i32 130, i32 29, i32 104, i32 46, i32 35, i32 50, ; 184..191
	i32 26, i32 77, i32 88, i32 74, i32 23, i32 65, i32 34, i32 20, ; 192..199
	i32 117, i32 66, i32 134, i32 52, i32 124, i32 27, i32 43, i32 53, ; 200..207
	i32 5, i32 104, i32 68, i32 114, i32 62, i32 97, i32 121, i32 22, ; 208..215
	i32 42, i32 77, i32 110, i32 65, i32 140, i32 91, i32 96, i32 133, ; 216..223
	i32 51, i32 84, i32 45, i32 89, i32 114, i32 72, i32 44, i32 3, ; 224..231
	i32 118, i32 34, i32 74, i32 139, i32 24, i32 71, i32 54, i32 141, ; 232..239
	i32 87, i32 33, i32 6, i32 99, i32 112, i32 135, i32 119, i32 132, ; 240..247
	i32 120, i32 7, i32 33, i32 16, i32 44, i32 0, i32 117, i32 126, ; 248..255
	i32 69, i32 12, i32 94, i32 123, i32 18, i32 13, i32 142, i32 52, ; 256..263
	i32 58, i32 92, i32 80, i32 25, i32 51, i32 129, i32 63, i32 9, ; 264..271
	i32 143, i32 138, i32 88, i32 86, i32 29, i32 8, i32 112, i32 125, ; 272..279
	i32 115, i32 140, i32 62, i32 92, i32 128, i32 93, i32 130, i32 105 ; 288..287
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
