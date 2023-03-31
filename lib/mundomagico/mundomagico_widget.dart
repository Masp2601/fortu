import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mundomagico_model.dart';
export 'mundomagico_model.dart';

class MundomagicoWidget extends StatefulWidget {
  const MundomagicoWidget({Key? key}) : super(key: key);

  @override
  _MundomagicoWidgetState createState() => _MundomagicoWidgetState();
}

class _MundomagicoWidgetState extends State<MundomagicoWidget> {
  late MundomagicoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MundomagicoModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'mundomagico'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
            child: Container(
              width: 398.1,
              height: 574.8,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/ecenario.png',
                  ).image,
                ),
              ),
              child: Padding(
                padding:
                    EdgeInsetsDirectional.fromSTEB(105.0, 190.0, 100.0, 80.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: AlignmentDirectional(0.0, -0.1),
              child: Container(
                width: 404.8,
                height: 241.9,
                decoration: BoxDecoration(
                  color: Color(0xFF010101),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
