import 'package:flutter/foundation.dart' show defaultTargetPlatform;
import 'package:flutter/widgets.dart';


class PlatformAdaptiveIcons implements JCIcons {
  const PlatformAdaptiveIcons._();
  static bool _isCupertino() {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return true;
    }
  }
}
class JCIcons {
  JCIcons._();
  static PlatformAdaptiveIcons get adaptive => const PlatformAdaptiveIcons._();
  static const IconData telegram = IconData(0xe900, fontFamily: 'contact');
  static const IconData instagram = IconData(0xe902, fontFamily: 'contact');
  static const IconData github = IconData(0xe906, fontFamily: 'contact');
  static const IconData qq = IconData(0xe907, fontFamily: 'contact');
  static const IconData wechat = IconData(0xe913, fontFamily: 'contact');
  static const IconData gmail = IconData(0xe916, fontFamily: 'contact');
// ...继续列出你的图标
}