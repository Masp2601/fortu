import 'package:fortunators/screen/cincuenta_apuesta/tables_50.dart';
import 'package:fortunators/screen/noventa_apuesta/tables_90.dart';
import 'package:fortunators/screen/treinta_apuesta/tables_30.dart';
import 'package:fortunators/widgets/snap_bar.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

export 'game_model.dart';

class GameWidget extends StatefulWidget {
  const GameWidget({Key? key}) : super(key: key);

  @override
  _GameWidgetState createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

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
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
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
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SnapBar(),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 0, 15, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/JUEGA YA.png',
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/selecciona_monto.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  SizedBox(
                                    height: 25,
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 50, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TablesTreintaPage()));
                                        },
                                        child: Image.asset(
                                            'assets/images/treinta.png'),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TablesNoventaPage()));
                                        },
                                        child: Image.asset(
                                            'assets/images/mesanovent.png'),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TablesCincuentaPage()));
                                        },
                                        child: Image.asset(
                                            'assets/images/mescincuenta.png'),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 10, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.25, 0.03),
                                            child: Image.asset(
                                              'assets/images/vector.png',
                                              width: 363.7,
                                              height: 150.5,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 35, 0, 0),
                                              child: Image.asset(
                                                'assets/images/rec.png',
                                                width: 302.8,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 45, 0, 0),
                                              child: Image.asset(
                                                'assets/images/nunca.png',
                                                fit: BoxFit.cover,
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
