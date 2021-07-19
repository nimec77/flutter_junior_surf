
import 'package:flutter/material.dart';

Size getSize(BuildContext context) {
  var size = Size.zero;

  final renderObject = context.findRenderObject();
  if (renderObject != null) {
    size = (renderObject as RenderBox).size;
  }
  return size;
}