import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'corona_model.dart';
export 'corona_model.dart';

class CoronaWidget extends StatefulWidget {
  const CoronaWidget({Key? key}) : super(key: key);

  @override
  _CoronaWidgetState createState() => _CoronaWidgetState();
}

class _CoronaWidgetState extends State<CoronaWidget>
    with TickerProviderStateMixin {
  late CoronaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 320.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CoronaModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'corona'});
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
                  children: [
                    Expanded(
                      child: Stack(
                        alignment:
                            AlignmentDirectional(0.30000000000000004, 0.0),
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.09, -0.2),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 140.0),
                              child: Image.asset(
                                'assets/images/coron.png',
                                width: 1500.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          if (responsiveVisibility(
                            context: context,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 40.0, 0.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    currentUserDisplayName,
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
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
              alignment: AlignmentDirectional(0.0, -0.1),
              child: Container(
                width: 404.8,
                height: 241.9,
                decoration: BoxDecoration(
                  color: Color(0xFF010101),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (responsiveVisibility(
                              context: context,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(-0.9, -0.25),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'hj3b7isf' /* Description */,
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 16.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(1.5, 2.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      't67gvq4y' /* balance */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.5, 2.2),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'clk3mfa8' /* Hello World */,
                                    ),
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0xFF38F205),
                                          fontSize: 18.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(0.0, -25.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 150.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'pa03hn9w' /* Hello World */,
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.6, -8.5),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'dnm7rwj7' /* punctuation */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).titleSmall,
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.6, -8.5),
                          child: RatingBar.builder(
                            onRatingUpdate: (newValue) => setState(
                                () => _model.ratingBarValue = newValue),
                            itemBuilder: (context, index) => Icon(
                              Icons.star_rounded,
                              color: Color(0xFFF9FF00),
                            ),
                            direction: Axis.horizontal,
                            initialRating: _model.ratingBarValue ??= 3.0,
                            unratedColor: FlutterFlowTheme.of(context).accent2,
                            itemCount: 5,
                            itemSize: 18.0,
                            glowColor: Color(0xFFF9FF00),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(-1.0, -15.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  // cambios hechos para los avatars eleccion
                                  Align(
                                    alignment: AlignmentDirectional(0.11, 0.02),
                                    child: Image.asset(
                                      'assets/images/Group_1887.png',
                                      fit: BoxFit.cover,
                                    ).animateOnPageLoad(animationsMap[
                                        'imageOnPageLoadAnimation']!),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          40.0, 15.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'sfpqfrw5' /* payment method */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          220.0, 15.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'hkrzq1mf' /* return home */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -0.35),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Switch(
                                value: _model.switchValue ??= true,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.switchValue = newValue!);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
