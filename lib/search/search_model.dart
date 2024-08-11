import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_widget.dart' show SearchWidget;
import 'package:flutter/material.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchdestination widget.
  final searchdestinationKey = GlobalKey();
  FocusNode? searchdestinationFocusNode;
  TextEditingController? searchdestinationTextController;
  String? searchdestinationSelectedOption;
  String? Function(BuildContext, String?)?
      searchdestinationTextControllerValidator;
  List<DestinationsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchdestinationFocusNode?.dispose();
  }
}
