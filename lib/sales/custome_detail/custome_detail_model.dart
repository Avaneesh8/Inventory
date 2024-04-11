import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'custome_detail_widget.dart' show CustomeDetailWidget;
import 'package:flutter/material.dart';

class CustomeDetailModel extends FlutterFlowModel<CustomeDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Customer_name widget.
  FocusNode? customerNameFocusNode;
  TextEditingController? customerNameController;
  String? Function(BuildContext, String?)? customerNameControllerValidator;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customerNameFocusNode?.dispose();
    customerNameController?.dispose();
  }
}
