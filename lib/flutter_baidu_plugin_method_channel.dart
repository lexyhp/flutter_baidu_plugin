import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_baidu_plugin_platform_interface.dart';

/// An implementation of [FlutterBaiduPluginPlatform] that uses method channels.
class MethodChannelFlutterBaiduPlugin extends FlutterBaiduPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_baidu_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
