import 'package:vexana/vexana.dart';

class VexanaManager {
  static VexanaManager? _instace;

  static VexanaManager get instance {
    if (_instace != null) return _instace!;
    _instace = VexanaManager._init();
    return _instace!;
  }

  static const String local = "http://192.168.0.38:3012/";
  static const String prod = "http://18.117.134.229/api/v1/";

  //static const String _iosBaseUrl = "http://3.76.116.155:3012/";

  static const String _iosBaseUrl = 'http://localhost:9090/';

  static const String _androidBaseUrl = local;

  VexanaManager._init();

  INetworkManager networkManager = NetworkManager<EmptyModel>(
    isEnableLogger: true,
    options: BaseOptions(
      baseUrl: _iosBaseUrl,
    ),
  );

// INetworkManager networkManager = NetworkManager<EmptyModel>(
//     isEnableLogger: true,
//     options: BaseOptions(headers: {
//       'authorization':
//       LocaleManager.instance.getStringValue(PreferencesKeys.TOKEN)
//     }, baseUrl: Platform.isAndroid ? _androidBaseUrl : _iosBaseUrl));
}
