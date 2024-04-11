import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_product_widget.dart' show EditProductWidget;
import 'package:flutter/material.dart';

class EditProductModel extends FlutterFlowModel<EditProductWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for group widget.
  String? groupValue1;
  FormFieldController<String>? groupValueController1;
  // State field(s) for product_cost widget.
  FocusNode? productCostFocusNode1;
  TextEditingController? productCostController1;
  String? Function(BuildContext, String?)? productCostController1Validator;
  // State field(s) for product_mrp widget.
  FocusNode? productMrpFocusNode1;
  TextEditingController? productMrpController1;
  String? Function(BuildContext, String?)? productMrpController1Validator;
  // State field(s) for color widget.
  FocusNode? colorFocusNode1;
  TextEditingController? colorController1;
  String? Function(BuildContext, String?)? colorController1Validator;
  // State field(s) for quanity widget.
  FocusNode? quanityFocusNode1;
  TextEditingController? quanityController1;
  String? Function(BuildContext, String?)? quanityController1Validator;
  // State field(s) for group widget.
  String? groupValue2;
  FormFieldController<String>? groupValueController2;
  // State field(s) for product_cost widget.
  FocusNode? productCostFocusNode2;
  TextEditingController? productCostController2;
  String? Function(BuildContext, String?)? productCostController2Validator;
  // State field(s) for product_mrp widget.
  FocusNode? productMrpFocusNode2;
  TextEditingController? productMrpController2;
  String? Function(BuildContext, String?)? productMrpController2Validator;
  // State field(s) for color widget.
  FocusNode? colorFocusNode2;
  TextEditingController? colorController2;
  String? Function(BuildContext, String?)? colorController2Validator;
  // State field(s) for quanity widget.
  FocusNode? quanityFocusNode2;
  TextEditingController? quanityController2;
  String? Function(BuildContext, String?)? quanityController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    productCostFocusNode1?.dispose();
    productCostController1?.dispose();

    productMrpFocusNode1?.dispose();
    productMrpController1?.dispose();

    colorFocusNode1?.dispose();
    colorController1?.dispose();

    quanityFocusNode1?.dispose();
    quanityController1?.dispose();

    productCostFocusNode2?.dispose();
    productCostController2?.dispose();

    productMrpFocusNode2?.dispose();
    productMrpController2?.dispose();

    colorFocusNode2?.dispose();
    colorController2?.dispose();

    quanityFocusNode2?.dispose();
    quanityController2?.dispose();
  }
}
