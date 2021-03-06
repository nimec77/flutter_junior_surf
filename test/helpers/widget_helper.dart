import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

extension FindWidget on WidgetTester {
  T? findChildWidget<T extends Widget>(Finder finder) => _findWidget(element(finder));

  T? _findWidget<T extends Widget>(Element element) {
    T? result;
    final elements = <Element>[];

    element.visitChildElements((el) {
      if (result != null) {
        return;
      }
      if (el.widget is T) {
        result = el.widget as T;
      } else {
        elements.add(el);
      }
    });

    if (result != null || elements.isEmpty) {
      return result;
    }

    for (final el in elements) {
      result = _findWidget<T>(el);
      if (result != null) {
        break;
      }
    }

    return result;
  }
}