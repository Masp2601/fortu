import 'package:flutter/material.dart';
import 'package:fortunators/flutter_flow/flutter_flow_theme.dart';
import 'package:fortunators/flutter_flow/flutter_flow_util.dart';
import 'package:fortunators/flutter_flow/flutter_flow_widgets.dart';
import 'package:fortunators/home/home_widget.dart';
import 'package:fortunators/m_y_card/m_y_card_widget.dart';
import 'package:fortunators/m_y_profile_page/m_y_profile_page_widget.dart';
import 'package:fortunators/screen/noventa_apuesta/fortunator_90.dart';
import 'package:fortunators/screen/treinta_apuesta/fortunator_30.dart';
import 'package:fortunators/widgets/progress_loading.dart';
import 'package:fortunators/widgets/snap_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class DisfrutaNoventaPage extends StatefulWidget {
  const DisfrutaNoventaPage({Key? key}) : super(key: key);

  @override
  State<DisfrutaNoventaPage> createState() => _DisfrutaNoventaPageState();
}

class _DisfrutaNoventaPageState extends State<DisfrutaNoventaPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  device() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => GameNoventaPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
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
            padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
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
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
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
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SnapBar(),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Stack(
                                            children: [
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Image.asset(
                                                  'assets/images/marcoDisfruta.png',
                                                  width: 381,
                                                  height: 736,
                                                  fit: BoxFit.cover,
                                                  alignment: Alignment.topRight,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 60),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                25, 0, 0, 0),
                                                    child: Image.asset(
                                                      'assets/images/men.png',
                                                      width: 355,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        25.9, 625, 10, 0),
                                                child: Text(
                                                  'DISFRUTA & GANA',
                                                  style: TextStyle(
                                                      backgroundColor:
                                                          Color(0xFFE30000),
                                                      fontSize: 41,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        100.0, 668.0, 0.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () {
                                                    showDialog(
                                                        context: context,
                                                        barrierDismissible:
                                                            false,
                                                        builder:
                                                            (BuildContext c) {
                                                          return ProgressLoading(
                                                            image: Image.asset(
                                                                'assets/images/movilpreparate.png'),
                                                          );
                                                        });
                                                    device();
                                                  },
                                                  text: ('Siguiente'),
                                                  options: FFButtonOptions(
                                                    width: 200.0,
                                                    height: 50.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: Color(0xFFE30000),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: Colors.white,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                    elevation: 2.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
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
