
import 'package:flutter/services.dart';

import 'flutter_baidu_plugin_platform_interface.dart';

class FlutterBaiduPlugin {

  static const MethodChannel _channel = MethodChannel("flutter_baidu_plugin");

  Future<String?> getPlatformVersion() {
    return FlutterBaiduPluginPlatform.instance.getPlatformVersion();
  }

  Future<int> lexAdd(int num) async{
    int val = await _channel.invokeMethod('lexAdd',{"num":num}) as int;
    return val;
  }
}
