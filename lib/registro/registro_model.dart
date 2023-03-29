import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
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
  // State field(s) for Telefono widget.
  TextEditingController? telefonoController;
  String? Function(BuildContext, String?)? telefonoControllerValidator;
  // State field(s) for Edad widget.
  TextEditingController? edadController;
  String? Function(BuildContext, String?)? edadControllerValidator;
  // State field(s) for Sexo widget.
  TextEditingController? sexoController;
  String? Function(BuildContext, String?)? sexoControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for Checkboxpolitica widget.
  bool? checkboxpoliticaValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  void dispose() {
    emailregistroController?.dispose();
    telefonoController?.dispose();
    edadController?.dispose();
    sexoController?.dispose();
    passwordController?.dispose();
  }

  /// Additional helper methods are added here.

}
