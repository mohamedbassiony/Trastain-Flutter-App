import '/backend/backend.dart';
import '/components/bottomnav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'wishlist_widget.dart' show WishlistWidget;
import 'package:flutter/material.dart';

class WishlistModel extends FlutterFlowModel<WishlistWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchwishlist widget.
  final searchwishlistKey = GlobalKey();
  FocusNode? searchwishlistFocusNode;
  TextEditingController? searchwishlistTextController;
  String? searchwishlistSelectedOption;
  String? Function(BuildContext, String?)?
      searchwishlistTextControllerValidator;
  List<DestinationsRecord> simpleSearchResults = [];
  // Model for bottomnav component.
  late BottomnavModel bottomnavModel;

  @override
  void initState(BuildContext context) {
    bottomnavModel = createModel(context, () => BottomnavModel());
  }

  @override
  void dispose() {
    searchwishlistFocusNode?.dispose();

    bottomnavModel.dispose();
  }
}
