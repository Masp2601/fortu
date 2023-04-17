import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'cincuentamil_model.dart';
export 'cincuentamil_model.dart';

class CincuentamilWidget extends StatefulWidget {
  const CincuentamilWidget({Key? key}) : super(key: key);

  @override
  _CincuentamilWidgetState createState() => _CincuentamilWidgetState();
}

class _CincuentamilWidgetState extends State<CincuentamilWidget> {
  late CincuentamilModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CincuentamilModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'cincuentamil'});
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF14181B),
        body: Visibility(
          visible: responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Color(0xFF14181B),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/game.png',
                  ).image,
                ),
              ),
              child: Visibility(
                visible: responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(),
                    child: Visibility(
                      visible: responsiveVisibility(
                        context: context,
                        tabletLandscape: false,
                        desktop: false,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, -0.55),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0, 0.3),
                                          child: Image.asset(
                                            'assets/images/barra.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 0, 15, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 10),
                                      child: Image.asset(
                                        'assets/images/readyplay.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 5),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/seleccion.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 90),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.45, 0.02),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            35, 0, 0, 90),
                                        child: Image.asset(
                                          'assets/images/lines.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30, 18, 60, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: InkWell(
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'CINCUENTAMIL_PAGE_Image_37pi2pb1_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Image_navigate_to');

                                                  context.pushNamed(
                                                      'disfrutaygana');
                                                },
                                                child: Image.asset(
                                                  'assets/images/mesauno.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            40, 140, 60, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'CINCUENTAMIL_PAGE_mesados_ON_TAP');
                                            logFirebaseEvent(
                                                'mesados_navigate_to');

                                            context.pushNamed('disfrutaygana');
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 90, 0),
                                                child: InkWell(
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'CINCUENTAMIL_PAGE_Image_309c95x0_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Image_navigate_to');

                                                    context.pushNamed(
                                                        'disfrutaygana');
                                                  },
                                                  child: Image.asset(
                                                    'assets/images/mesados.png',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            40, 260, 60, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'CINCUENTAMIL_PAGE_Image_rqisvoao_ON_TAP');
                                                logFirebaseEvent(
                                                    'Image_navigate_to');

                                                context
                                                    .pushNamed('disfrutaygana');
                                              },
//                                               child: Image.asset(
//                                                 'assets/images/mesatres.png',
//                                                 fit: BoxFit.cover,
//                                               ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            40, 380, 60, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'CINCUENTAMIL_PAGE_mesacuatro_ON_TAP');
                                            logFirebaseEvent(
                                                'mesacuatro_navigate_to');

                                            context.pushNamed('disfrutaygana');
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'CINCUENTAMIL_PAGE_Image_1awr06jq_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Image_navigate_to');

                                                  context.pushNamed(
                                                      'disfrutaygana');
                                                },
//                                                 child: Image.asset(
//                                                   'assets/images/mesatres.png',
//                                                   fit: BoxFit.cover,
//                                                 ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 510, 60, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(25, 0, 0, 0),
                                              child: Image.asset(
                                                'assets/images/mesacinco.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
