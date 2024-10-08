import '/components/bottomnav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for bottomnav component.
  late BottomnavModel bottomnavModel;

  @override
  void initState(BuildContext context) {
    bottomnavModel = createModel(context, () => BottomnavModel());
  }

  @override
  void dispose() {
    bottomnavModel.dispose();
  }
}
