import '/flutter_flow/flutter_flow_util.dart';
import 'bill_generator_widget.dart' show BillGeneratorWidget;
import 'package:flutter/material.dart';

class BillGeneratorModel extends FlutterFlowModel<BillGeneratorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for product_name widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameController;
  String? Function(BuildContext, String?)? productNameControllerValidator;
  // State field(s) for product_cost widget.
  FocusNode? productCostFocusNode;
  TextEditingController? productCostController;
  String? Function(BuildContext, String?)? productCostControllerValidator;
  // State field(s) for product_mrp widget.
  FocusNode? productMrpFocusNode;
  TextEditingController? productMrpController;
  String? Function(BuildContext, String?)? productMrpControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    productNameFocusNode?.dispose();
    productNameController?.dispose();

    productCostFocusNode?.dispose();
    productCostController?.dispose();

    productMrpFocusNode?.dispose();
    productMrpController?.dispose();
  }
}
