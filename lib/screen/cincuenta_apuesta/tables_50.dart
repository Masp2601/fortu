import 'package:flutter/material.dart';
import 'package:fortunators/flutter_flow/flutter_flow_util.dart';
import 'package:fortunators/screen/cincuenta_apuesta/disfruta_50.dart';
import 'package:fortunators/widgets/snap_bar.dart';

class TablesCincuentaPage extends StatefulWidget {
  const TablesCincuentaPage({Key? key}) : super(key: key);

  @override
  State<TablesCincuentaPage> createState() => _TablesCincuentaPageState();
}

class _TablesCincuentaPageState extends State<TablesCincuentaPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
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
                    child: SingleChildScrollView(
                      child: Visibility(
                        visible: responsiveVisibility(
                          context: context,
                          tabletLandscape: false,
                          desktop: false,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, -0.2),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 20),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SnapBar(),
                                      ],
                                    ),
                                  ),
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
                                        'assets/images/seleccioina tu mesas.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
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
                                                      DisfrutaCincuentaPage()));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              25, 0, 0, 0),
                                          child: Image.asset(
                                              'assets/images/mesas.png'),
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
      ),
    );
  }
}
