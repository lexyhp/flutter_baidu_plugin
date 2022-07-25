import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_baidu_plugin_method_channel.dart';

abstract class FlutterBaiduPluginPlatform extends PlatformInterface {
  /// Constructs a FlutterBaiduPluginPlatform.
  FlutterBaiduPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterBaiduPluginPlatform _instance = MethodChannelFlutterBaiduPlugin();

  /// The default instance of [FlutterBaiduPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterBaiduPlugin].
  static FlutterBaiduPluginPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterBaiduPluginPlatform] when
  /// they register themselves.
  static set instance(FlutterBaiduPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
