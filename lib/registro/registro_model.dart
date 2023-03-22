import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class RegistroModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nombrenewuser widget.
  final nombrenewuserKey = GlobalKey();
  TextEditingController? nombrenewuserController;
  String? nombrenewuserSelectedOption;
  String? Function(BuildContext, String?)? nombrenewuserControllerValidator;
  // State field(s) for emailregistro widget.
  TextEditingController? emailregistroController;
  String? Function(BuildContext, String?)? emailregistroControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for passwordrepeat widget.
  TextEditingController? passwordrepeatController;
  late bool passwordrepeatVisibility;
  String? Function(BuildContext, String?)? passwordrepeatControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordrepeatVisibility = false;
  }

  void dispose() {
    emailregistroController?.dispose();
    passwordController?.dispose();
    passwordrepeatController?.dispose();
  }

  /// Additional helper methods are added here.

}
