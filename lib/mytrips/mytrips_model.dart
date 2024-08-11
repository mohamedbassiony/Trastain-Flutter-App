import '/backend/backend.dart';
import '/components/bottomnav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mytrips_widget.dart' show MytripsWidget;
import 'package:flutter/material.dart';

class MytripsModel extends FlutterFlowModel<MytripsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchmytrips widget.
  final searchmytripsKey = GlobalKey();
  FocusNode? searchmytripsFocusNode;
  TextEditingController? searchmytripsTextController;
  String? searchmytripsSelectedOption;
  String? Function(BuildContext, String?)? searchmytripsTextControllerValidator;
  List<BookingsRecord> simpleSearchResults = [];
  // Model for bottomnav component.
  late BottomnavModel bottomnavModel;

  @override
  void initState(BuildContext context) {
    bottomnavModel = createModel(context, () => BottomnavModel());
  }

  @override
  void dispose() {
    searchmytripsFocusNode?.dispose();

    bottomnavModel.dispose();
  }
}
