import 'package:pigeon/pigeon.dart';

class StartRequest {
  String? config;
}

class StatusReply {
  int? status;
}

@HostApi()
abstract class V2rayApi {
  void start(StartRequest params);
  void stop();
  StatusReply status();
}

// 输出配置
void configurePigeon(PigeonOptions opts) {
  opts = PigeonOptions(
    dartOut: './lib/message.dart',
    javaOut: 'android/src/main/kotlin/pub/vmess/libv2ray/Message.java',
    javaOptions: JavaOptions(package: 'pub.vmess.libv2ray'),
  );
}
