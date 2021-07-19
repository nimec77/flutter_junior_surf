import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

typedef SizeChanged = void Function(Size size);

class MeasureSizeRenderObject extends RenderProxyBox {
  MeasureSizeRenderObject(this.onChange);

  final SizeChanged onChange;
  var _prevSize = Size.zero;

  @override
  void performLayout() {
    super.performLayout();
    final newSize = child?.size ?? Size.zero;
    if (_prevSize == newSize) {
      return;
    }
    _prevSize = newSize;
    WidgetsBinding.instance?.addPostFrameCallback((_) => onChange(newSize));
  }
}
