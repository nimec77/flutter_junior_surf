import 'package:flutter/widgets.dart';
import 'package:flutter_junior_surf/login/view/renders/measure_size_render_object.dart';

class MeasurableWidget extends SingleChildRenderObjectWidget {
  const MeasurableWidget({Key? key, required this.onChange, required Widget child}) : super(key: key, child: child);

  final SizeChanged onChange;

  @override
  RenderObject createRenderObject(BuildContext context) => MeasureSizeRenderObject(onChange);
}
