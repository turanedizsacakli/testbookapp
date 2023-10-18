import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'notes_page_widget.dart' show NotesPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotesPageModel extends FlutterFlowModel<NotesPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for note widget.
  TextEditingController? noteController;
  String? Function(BuildContext, String?)? noteControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    noteController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
