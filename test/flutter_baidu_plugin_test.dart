import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_baidu_plugin/flutter_baidu_plugin.dart';
import 'package:flutter_baidu_plugin/flutter_baidu_plugin_platform_interface.dart';
import 'package:flutter_baidu_plugin/flutter_baidu_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterBaiduPluginPlatform 
    with MockPlatformInterfaceMixin
    implements FlutterBaiduPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterBaiduPluginPlatform initialPlatform = FlutterBaiduPluginPlatform.instance;

  test('$MethodChannelFlutterBaiduPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterBaiduPlugin>());
  });

  test('getPlatformVersion', () async {
    FlutterBaiduPlugin flutterBaiduPlugin = FlutterBaiduPlugin();
    MockFlutterBaiduPluginPlatform fakePlatform = MockFlutterBaiduPluginPlatform();
    FlutterBaiduPluginPlatform.instance = fakePlatform;
  
    expect(await flutterBaiduPlugin.getPlatformVersion(), '42');
  });
}
