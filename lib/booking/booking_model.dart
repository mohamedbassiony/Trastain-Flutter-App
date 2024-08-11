import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'booking_widget.dart' show BookingWidget;
import 'package:flutter/material.dart';

class BookingModel extends FlutterFlowModel<BookingWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for members widget.
  String? membersValue;
  FormFieldController<String>? membersValueController;
  // State field(s) for idType widget.
  String? idTypeValue;
  FormFieldController<String>? idTypeValueController;
  // State field(s) for idNum widget.
  FocusNode? idNumFocusNode;
  TextEditingController? idNumTextController;
  String? Function(BuildContext, String?)? idNumTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    idNumFocusNode?.dispose();
    idNumTextController?.dispose();
  }
}
