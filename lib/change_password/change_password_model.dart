import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChangePasswordModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailchange widget.
  TextEditingController? emailchangeController;
  String? Function(BuildContext, String?)? emailchangeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    emailchangeController?.dispose();
  }

  /// Additional helper methods are added here.

}
