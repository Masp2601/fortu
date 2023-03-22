import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class Registro2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Telefono widget.
  TextEditingController? telefonoController;
  String? Function(BuildContext, String?)? telefonoControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownController;
  // State field(s) for sexo widget.
  TextEditingController? sexoController;
  String? Function(BuildContext, String?)? sexoControllerValidator;
  // State field(s) for Checkboxpolitica widget.
  bool? checkboxpoliticaValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    telefonoController?.dispose();
    sexoController?.dispose();
  }

  /// Additional helper methods are added here.

}
