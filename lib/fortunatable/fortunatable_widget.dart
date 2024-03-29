import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flip_card/flip_card.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'fortunatable_model.dart';
export 'fortunatable_model.dart';

class FortunatableWidget extends StatefulWidget {
  const FortunatableWidget({
    Key? key,
    this.users,
    this.saldo,
  }) : super(key: key);

  final String? users;
  final String? saldo;

  @override
  _FortunatableWidgetState createState() => _FortunatableWidgetState();
}

class _FortunatableWidgetState extends State<FortunatableWidget>
    with TickerProviderStateMixin {
  late FortunatableModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1310.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
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
    _model = createModel(context, () => FortunatableModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'fortunatable'});
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
            tablet: false,
            desktop: false,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 2.2,
            height: MediaQuery.of(context).size.height * 1.0,
            decoration: BoxDecoration(
              color: Color(0xFF14181B),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/fortuimage.png',
                ).image,
              ),
            ),
            child: Visibility(
              visible: responsiveVisibility(
                context: context,
                tablet: false,
                desktop: false,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      tablet: false,
                      desktop: false,
                    ))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (responsiveVisibility(
                              context: context,
                              tablet: false,
                              desktop: false,
                            ))
                              Stack(
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    tablet: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.12, -0.01),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            25.0, 0.0, 0.0, 0.0),
                                        child: Image.asset(
                                          'assets/images/ficha.png',
                                          width: 170.0,
                                          height: 181.6,
                                          fit: BoxFit.fill,
                                        ).animateOnPageLoad(animationsMap[
                                            'imageOnPageLoadAnimation']!),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    tablet: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            60.0, 10.0, 0.0, 10.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'dv5rd5yj' /* players */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    tablet: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.81, -0.51),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            42.0, 30.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'j5bpofya' /*  */,
                                          ),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 10.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    tablet: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            42.0, 44.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'w1k7gl91' /* colombia */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 10.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    tablet: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            55.0, 60.0, 0.0, 15.0),
                                        child: Container(
                                          width: 100.0,
                                          height: 1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .textColor,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.asset(
                                                'assets/images/linetwo.png',
                                              ).image,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    tablet: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            42.0, 70.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '7v0xe64x' /*  */,
                                          ),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 10.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    tablet: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            42.0, 85.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'ige7uenb' /*  */,
                                          ),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 10.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    tablet: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            55.0, 60.0, 0.0, 15.0),
                                        child: Container(
                                          width: 100.0,
                                          height: 1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .textColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    tablet: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            55.0, 100.0, 0.0, 15.0),
                                        child: Container(
                                          width: 100.0,
                                          height: 1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .textColor,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.asset(
                                                'assets/images/linetwo.png',
                                              ).image,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    tablet: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            42.0, 105.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            's3j4ov79' /*  */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 10.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    tablet: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            42.0, 120.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'ib0zckt1' /* colombia */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 10.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    tablet: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            55.0, 135.0, 0.0, 15.0),
                                        child: Container(
                                          width: 100.0,
                                          height: 1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .textColor,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.asset(
                                                'assets/images/linetwo.png',
                                              ).image,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    tablet: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            42.0, 155.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '628uycfx' /* colombia */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 10.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    tablet: false,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            42.0, 140.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'rxilo493' /*  */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 10.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            if (responsiveVisibility(
                              context: context,
                              tablet: false,
                              desktop: false,
                            ))
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, -0.7),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (responsiveVisibility(
                                          context: context,
                                          tablet: false,
                                          desktop: false,
                                        ))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: Stack(
                                              children: [
                                                if (responsiveVisibility(
                                                  context: context,
                                                  tablet: false,
                                                  desktop: false,
                                                ))
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'FORTUNATABLE_PAGE_Image_faqmjm7j_ON_TAP');
                                                          logFirebaseEvent(
                                                              'Image_expand_image');
                                                          await Navigator.push(
                                                            context,
                                                            PageTransition(
                                                              type:
                                                                  PageTransitionType
                                                                      .fade,
                                                              child:
                                                                  FlutterFlowExpandedImageView(
                                                                image:
                                                                    Image.asset(
                                                                  'assets/images/rectangular.png',
                                                                  fit: BoxFit
                                                                      .contain,
                                                                ),
                                                                allowRotation:
                                                                    false,
                                                                tag: 'hello',
                                                                useHeroAnimation:
                                                                    true,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: Hero(
                                                          tag: 'hello',
                                                          transitionOnUserGestures:
                                                              true,
                                                          child: Image.asset(
                                                            'assets/images/rectangular.png',
                                                            width: 186.0,
                                                            height: 50.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  tablet: false,
                                                  desktop: false,
                                                ))
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, -1.1),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: AutoSizeText(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ypinla2q' /* VIEWER: */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  tablet: false,
                                                  desktop: false,
                                                ))
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, -1.1),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  118.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        widget.users!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  tablet: false,
                                                  desktop: false,
                                                ))
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.96, -0.85),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  170.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons.remove_red_eye,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textColor,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.4, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0,
                                                                65.0, 5.0, 0.0),
                                                    child: Image.asset(
                                                      'assets/images/balanceuser.png',
                                                      width: 185.1,
                                                      height: 121.8,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(65.0,
                                                                25.0, 0.0, 0.0),
                                                    child: Text(
                                                      currentUserUid,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(60.0,
                                                                92.0, 0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3k4njebv' /* balance: */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.38, -0.03),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                120.0,
                                                                92.0,
                                                                10.0,
                                                                0.0),
                                                    child: Text(
                                                      widget.saldo!,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Container(
                                                    width: 200.0,
                                                    decoration: BoxDecoration(),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Container(
                                                    width: 200.0,
                                                    decoration: BoxDecoration(),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.35, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(55.0,
                                                                60.0, 0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/images/lineone.png',
                                                          width: 100.0,
                                                          height: 4.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.41, 0.15),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(55.0,
                                                                55.0, 0.0, 0.0),
                                                    child: Image.asset(
                                                      'assets/images/linetwo.png',
                                                      width: 100.0,
                                                      height: 4.0,
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
                          ],
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tablet: false,
                      desktop: false,
                    ))
                      Stack(
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            tablet: false,
                            desktop: false,
                          ))
                            Align(
                              alignment: AlignmentDirectional(0.08, 0.03),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Image.asset(
                                  'assets/images/table.png',
                                  width: 551.9,
                                  height: 320.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          if (responsiveVisibility(
                            context: context,
                            tablet: false,
                            desktop: false,
                          ))
                            Align(
                              alignment: AlignmentDirectional(-0.79, -0.85),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    220.0, 10.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'z60xaif0' /* online */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .textColor,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          if (responsiveVisibility(
                            context: context,
                            tablet: false,
                            desktop: false,
                          ))
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: 200.0,
                                decoration: BoxDecoration(),
                              ),
                            ),
                          if (responsiveVisibility(
                            context: context,
                            tablet: false,
                            desktop: false,
                          ))
                            Align(
                              alignment: AlignmentDirectional(0.0, -0.5),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    80.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      tablet: false,
                                      desktop: false,
                                    ))
                                      FlipCard(
                                        fill: Fill.fillBack,
                                        direction: FlipDirection.HORIZONTAL,
                                        speed: 400,
                                        front: Visibility(
                                          visible: responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            desktop: false,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 25.0, 10.0, 0.0),
                                            child: ClipOval(
                                              child: Container(
                                                width: 80.0,
                                                height: 80.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .platinum,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/fortuna.png',
                                                    ).image,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color: Color(0x33000000),
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        back: Visibility(
                                          visible: responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            desktop: false,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 10.0, 0.0),
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Visibility(
                                                visible: responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  desktop: false,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qe1m12fq' /* :( */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .black600,
                                                          fontSize: 45.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      tablet: false,
                                      desktop: false,
                                    ))
                                      FlipCard(
                                        fill: Fill.fillBack,
                                        direction: FlipDirection.HORIZONTAL,
                                        speed: 400,
                                        front: Visibility(
                                          visible: responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            desktop: false,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 25.0, 10.0, 0.0),
                                            child: ClipOval(
                                              child: AnimatedContainer(
                                                duration:
                                                    Duration(milliseconds: 100),
                                                curve: Curves.bounceOut,
                                                width: 80.0,
                                                height: 80.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .platinum,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/fortuna.png',
                                                    ).image,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color: Color(0x33000000),
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ).animateOnActionTrigger(
                                              animationsMap[
                                                  'containerOnActionTriggerAnimation']!,
                                            ),
                                          ),
                                        ),
                                        back: Visibility(
                                          visible: responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            desktop: false,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 25.0, 10.0, 0.0),
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Visibility(
                                                visible: responsiveVisibility(
                                                  context: context,
                                                  tablet: false,
                                                  desktop: false,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      's22gd02p' /* $200.00 */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .black600,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      tablet: false,
                                      desktop: false,
                                    ))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: FlipCard(
                                          fill: Fill.fillBack,
                                          direction: FlipDirection.HORIZONTAL,
                                          speed: 400,
                                          front: Visibility(
                                            visible: responsiveVisibility(
                                              context: context,
                                              tablet: false,
                                              desktop: false,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 25.0, 0.0, 0.0),
                                              child: ClipOval(
                                                child: Container(
                                                  width: 80.0,
                                                  height: 80.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .platinum,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/fortuna.png',
                                                      ).image,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(0.0, 2.0),
                                                      )
                                                    ],
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          back: Visibility(
                                            visible: responsiveVisibility(
                                              context: context,
                                              tablet: false,
                                              desktop: false,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: Container(
                                                width: 80.0,
                                                height: 80.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .textColor,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wy0hgvsf' /* $50.000 */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .black600,
                                                          fontSize: 18.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      tablet: false,
                                      desktop: false,
                                    ))
                                      FlipCard(
                                        fill: Fill.fillBack,
                                        direction: FlipDirection.HORIZONTAL,
                                        speed: 400,
                                        front: Visibility(
                                          visible: responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            desktop: false,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 25.0, 0.0, 0.0),
                                            child: ClipOval(
                                              child: Container(
                                                width: 80.0,
                                                height: 80.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .platinum,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/fortuna.png',
                                                    ).image,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color: Color(0x33000000),
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        back: Visibility(
                                          visible: responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            desktop: false,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Visibility(
                                                visible: responsiveVisibility(
                                                  context: context,
                                                  tablet: false,
                                                  desktop: false,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -0.5),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zmhy5h8a' /*  */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .black600,
                                                          fontSize: 45.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
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
                            tablet: false,
                            desktop: false,
                          ))
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.05),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    80.0, 35.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      tablet: false,
                                      desktop: false,
                                    ))
                                      FlipCard(
                                        fill: Fill.fillBack,
                                        direction: FlipDirection.HORIZONTAL,
                                        speed: 400,
                                        front: Visibility(
                                          visible: responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            desktop: false,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 75.0, 0.0, 0.0),
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textColor,
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: Image.asset(
                                                    'assets/images/fortuna.png',
                                                  ).image,
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                        ),
                                        back: Visibility(
                                          visible: responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            desktop: false,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 50.0, 0.0, 0.0),
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Visibility(
                                                visible: responsiveVisibility(
                                                  context: context,
                                                  tablet: false,
                                                  desktop: false,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'w8ejuj26' /* $300.000 */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .black600,
                                                          fontSize: 16.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
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
                            tablet: false,
                            desktop: false,
                          ))
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    180.0, 55.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      tablet: false,
                                      desktop: false,
                                    ))
                                      FlipCard(
                                        fill: Fill.fillBack,
                                        direction: FlipDirection.HORIZONTAL,
                                        speed: 400,
                                        front: Visibility(
                                          visible: responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            desktop: false,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 60.0, 0.0, 0.0),
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textColor,
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: Image.asset(
                                                    'assets/images/fortuna.png',
                                                  ).image,
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                        ),
                                        back: Visibility(
                                          visible: responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            desktop: false,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 50.0, 0.0, 0.0),
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textColor,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Visibility(
                                                visible: responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  desktop: false,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lez6dm27' /* Back */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .black600,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
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
                            tablet: false,
                            desktop: false,
                          ))
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    270.0, 60.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      tablet: false,
                                      desktop: false,
                                    ))
                                      FlipCard(
                                        fill: Fill.fillBack,
                                        direction: FlipDirection.HORIZONTAL,
                                        speed: 400,
                                        front: Visibility(
                                          visible: responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            desktop: false,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 50.0, 0.0, 0.0),
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textColor,
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: Image.asset(
                                                    'assets/images/fortuna.png',
                                                  ).image,
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                        ),
                                        back: Visibility(
                                          visible: responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            desktop: false,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 50.0, 0.0, 0.0),
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textColor,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Visibility(
                                                visible: responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  desktop: false,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'htkigowh' /* $400.000 */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .black600,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
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
                            tablet: false,
                            desktop: false,
                          ))
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    360.0, 60.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      tablet: false,
                                      desktop: false,
                                    ))
                                      FlipCard(
                                        fill: Fill.fillBack,
                                        direction: FlipDirection.HORIZONTAL,
                                        speed: 400,
                                        front: Visibility(
                                          visible: responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            desktop: false,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 50.0, 0.0, 0.0),
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textColor,
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: Image.asset(
                                                    'assets/images/fortuna.png',
                                                  ).image,
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                        ),
                                        back: Visibility(
                                          visible: responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            desktop: false,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 50.0, 0.0, 0.0),
                                            child: Container(
                                              width: 80.0,
                                              height: 80.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .gray200,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'nge2hif4' /* $350.000 */,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .darkBackground,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.7),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  180.0, 160.0, 0.0, 0.0),
                              child: Image.asset(
                                'assets/images/fortunat.png',
                                width: 190.0,
                                height: 20.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
