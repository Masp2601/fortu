import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'game_model.dart';
export 'game_model.dart';

class GameWidget extends StatefulWidget {
  const GameWidget({Key? key}) : super(key: key);

  @override
  _GameWidgetState createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> {
  late GameModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GameModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'game'});
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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF14181B),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          decoration: BoxDecoration(
            color: Color(0xFF14181B),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/INICIO_DE_SESION.png',
              ).image,
            ),
          ),
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            ),
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0x990F1113),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/INICIO_DE_SESION.png',
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 16.0, 0.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Group_33940.png',
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'GAME_PAGE_Image_9l6p4dby_ON_TAP');
                                logFirebaseEvent('Image_navigate_to');

                                context.pushNamed('choosevalue');
                              },
                              child: Image.asset(
                                'assets/images/Asset_1-8.png',
                                width: 335.1,
                                height: 173.8,
                                fit: BoxFit.cover,
                              ),
                            ),
                            if (responsiveVisibility(
                              context: context,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 50.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [],
                                  ),
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
                        Align(
                          alignment: AlignmentDirectional(-0.6, -1.5),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 20.0, 10.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '68vn95yr' /* Hello World */,
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            ),
                          ),
                        ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.04),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'GAME_PAGE_Image_g0pgq9a1_ON_TAP');
                                            logFirebaseEvent(
                                                'Image_navigate_to');

                                            context.pushNamed('cashtable');
                                          },
                                          child: Image.asset(
                                            'assets/images/1-8.png',
                                            width: 120.0,
                                            height: 120.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.05, -0.03),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'GAME_PAGE_Image_v56vpzjv_ON_TAP');
                                            logFirebaseEvent(
                                                'Image_navigate_to');

                                            context.pushNamed('goldtable');
                                          },
                                          child: Image.asset(
                                            'assets/images/gold_1-8.png',
                                            width: 200.0,
                                            height: 200.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.5, -0.03),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'GAME_PAGE_Image_fejsz47e_ON_TAP');
                                            logFirebaseEvent(
                                                'Image_navigate_to');

                                            context.pushNamed('table');
                                          },
                                          child: Image.asset(
                                            'assets/images/red-8.png',
                                            width: 200.0,
                                            height: 200.0,
                                            fit: BoxFit.contain,
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.04),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 20.0, 0.0),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'GAME_PAGE_Image_e1a2ewpp_ON_TAP');
                                            logFirebaseEvent(
                                                'Image_navigate_to');

                                            context.pushNamed('cashtable');
                                          },
                                          child: Image.asset(
                                            'assets/images/Vector_(16).png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.05, -0.03),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            25.0, 0.0, 10.0, 0.0),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'GAME_PAGE_Image_wdqbelev_ON_TAP');
                                            logFirebaseEvent(
                                                'Image_navigate_to');

                                            context.pushNamed('goldtable');
                                          },
                                          child: Image.asset(
                                            'assets/images/Vector_(17).png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.9, -0.03),
                                      child: InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'GAME_PAGE_Image_spj6s5ps_ON_TAP');
                                          logFirebaseEvent('Image_navigate_to');

                                          context.pushNamed('table');
                                        },
                                        child: Image.asset(
                                          'assets/images/Vector_(18).png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '9jfa6nhu' /*  */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.05),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      if (responsiveVisibility(
                                        context: context,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, -0.05),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 20.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'GAME_PAGE_Image_fub5mkvj_ON_TAP');
                                                logFirebaseEvent(
                                                    'Image_navigate_to');

                                                context.pushNamed('cashtable');
                                              },
                                              child: Image.asset(
                                                'assets/images/1-8.png',
                                                width: 90.0,
                                                height: 90.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (responsiveVisibility(
                                        context: context,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Align(
                                          alignment: AlignmentDirectional(
                                              -0.05, -0.03),
                                          child: InkWell(
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'GAME_PAGE_Image_vdee6b7g_ON_TAP');
                                              logFirebaseEvent(
                                                  'Image_navigate_to');

                                              context.pushNamed('goldtable');
                                            },
                                            child: Image.asset(
                                              'assets/images/gold_1-8.png',
                                              width: 200.0,
                                              height: 200.0,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      if (responsiveVisibility(
                                        context: context,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.5, -0.03),
                                          child: InkWell(
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'GAME_PAGE_Image_nvukq2q1_ON_TAP');
                                              logFirebaseEvent(
                                                  'Image_navigate_to');

                                              context.pushNamed('table');
                                            },
                                            child: Image.asset(
                                              'assets/images/red-8.png',
                                              width: 200.0,
                                              height: 200.0,
                                              fit: BoxFit.contain,
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
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, -15.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      if (responsiveVisibility(
                                        context: context,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.04),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 20.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'GAME_PAGE_Image_4d2wn6hf_ON_TAP');
                                                logFirebaseEvent(
                                                    'Image_navigate_to');

                                                context.pushNamed('cashtable');
                                              },
                                              child: Image.asset(
                                                'assets/images/Vector_(16).png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (responsiveVisibility(
                                        context: context,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Align(
                                          alignment: AlignmentDirectional(
                                              -0.05, -0.03),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    25.0, 0.0, 10.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'GAME_PAGE_Image_l3xgu6ui_ON_TAP');
                                                logFirebaseEvent(
                                                    'Image_navigate_to');

                                                context.pushNamed('goldtable');
                                              },
                                              child: Image.asset(
                                                'assets/images/Vector_(17).png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (responsiveVisibility(
                                        context: context,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.9, -0.03),
                                          child: InkWell(
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'GAME_PAGE_Image_we1l5unu_ON_TAP');
                                              logFirebaseEvent(
                                                  'Image_navigate_to');

                                              context.pushNamed('table');
                                            },
                                            child: Image.asset(
                                              'assets/images/Vector_(18).png',
                                              fit: BoxFit.cover,
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
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 10.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'assets/images/Group_34042.png',
                              width: 338.0,
                              height: 101.3,
                              fit: BoxFit.cover,
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
    );
  }
}
