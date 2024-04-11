import '/flutter_flow/flutter_flow_util.dart';
import 'inventory_sales_widget.dart' show InventorySalesWidget;
import 'package:flutter/material.dart';

class InventorySalesModel extends FlutterFlowModel<InventorySalesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
