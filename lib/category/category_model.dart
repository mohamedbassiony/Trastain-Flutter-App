import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'category_widget.dart' show CategoryWidget;
import 'package:flutter/material.dart';

class CategoryModel extends FlutterFlowModel<CategoryWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchcategory widget.
  final searchcategoryKey = GlobalKey();
  FocusNode? searchcategoryFocusNode;
  TextEditingController? searchcategoryTextController;
  String? searchcategorySelectedOption;
  String? Function(BuildContext, String?)?
      searchcategoryTextControllerValidator;
  List<DestinationsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchcategoryFocusNode?.dispose();
  }
}
