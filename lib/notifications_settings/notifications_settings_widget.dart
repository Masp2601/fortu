import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notifications_settings_model.dart';
export 'notifications_settings_model.dart';

class NotificationsSettingsWidget extends StatefulWidget {
  const NotificationsSettingsWidget({Key? key}) : super(key: key);

  @override
  _NotificationsSettingsWidgetState createState() =>
      _NotificationsSettingsWidgetState();
}

class _NotificationsSettingsWidgetState
    extends State<NotificationsSettingsWidget> {
  late NotificationsSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationsSettingsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'notificationsSettings'});
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
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: responsiveVisibility(
        context: context,
        desktop: false,
      )
          ? AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              leading: InkWell(
                onTap: () async {
                  logFirebaseEvent('NOTIFICATIONS_SETTINGS_Icon_3cvyzw70_ON_');
                  logFirebaseEvent('Icon_navigate_back');
                  context.pop();
                },
                child: Icon(
                  Icons.chevron_left_rounded,
                  color: FlutterFlowTheme.of(context).grayLight,
                  size: 32.0,
                ),
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'sc4ff4ce' /* Notifications */,
                ),
                style: FlutterFlowTheme.of(context).headlineSmall,
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            )
          : null,
      body: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: MediaQuery.of(context).size.height * 1.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: Image.asset(
              'assets/images/login_bg@2x.png',
            ).image,
          ),
        ),
        child: StreamBuilder<UsersRecord>(
          stream: UsersRecord.getDocument(currentUserReference!),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 40.0,
                  height: 40.0,
                  child: SpinKitFadingCircle(
                    color: Color(0xFFFF0000),
                    size: 40.0,
                  ),
                ),
              );
            }
            final columnUsersRecord = snapshot.data!;
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'r72zvrv5' /* Choose what notifcations you w... */,
                          ),
                          style: FlutterFlowTheme.of(context).bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: SwitchListTile.adaptive(
                    value: _model.switchListTileValue1 ??= true,
                    onChanged: (newValue) async {
                      setState(() => _model.switchListTileValue1 = newValue!);
                    },
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'gjygkr0n' /* Push Notifications */,
                      ),
                      style: FlutterFlowTheme.of(context).headlineSmall,
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        '3y3yhxbk' /* Receive Push notifications fro... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall,
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    activeColor: Color(0xFFFF0026),
                    activeTrackColor: FlutterFlowTheme.of(context).primary,
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                  ),
                ),
                SwitchListTile.adaptive(
                  value: _model.switchListTileValue2 ??= true,
                  onChanged: (newValue) async {
                    setState(() => _model.switchListTileValue2 = newValue!);
                  },
                  title: Text(
                    FFLocalizations.of(context).getText(
                      '1ytebj35' /* Email Notifications */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall,
                  ),
                  subtitle: Text(
                    FFLocalizations.of(context).getText(
                      '9lvh5nst' /* Receive email notifications fr... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodySmall,
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  activeColor: Color(0xFFFF0026),
                  activeTrackColor: FlutterFlowTheme.of(context).primary,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                ),
                SwitchListTile.adaptive(
                  value: _model.switchListTileValue3 ??= true,
                  onChanged: (newValue) async {
                    setState(() => _model.switchListTileValue3 = newValue!);
                  },
                  title: Text(
                    FFLocalizations.of(context).getText(
                      '69d2j74u' /* Location Services */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall,
                  ),
                  subtitle: Text(
                    FFLocalizations.of(context).getText(
                      '3k8cuv0d' /* Allow us to track your locatio... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodySmall,
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  activeColor: Color(0xFFFF0026),
                  activeTrackColor: FlutterFlowTheme.of(context).primary,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'NOTIFICATIONS_SETTINGS_Button-Login_ON_T');
                      logFirebaseEvent('Button-Login_navigate_back');
                      context.pop();
                    },
                    text: FFLocalizations.of(context).getText(
                      'isgrgbfs' /* Save Changes */,
                    ),
                    options: FFButtonOptions(
                      width: 190.0,
                      height: 50.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.black,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: FlutterFlowTheme.of(context).textColor,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
                          ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
