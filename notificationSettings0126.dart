import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'notification_settings0126_model.dart';
export 'notification_settings0126_model.dart';

class NotificationSettings0126Widget extends StatefulWidget {
  const NotificationSettings0126Widget({super.key});

  @override
  State<NotificationSettings0126Widget> createState() =>
      _NotificationSettings0126WidgetState();
}

class _NotificationSettings0126WidgetState
    extends State<NotificationSettings0126Widget> {
  late NotificationSettings0126Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationSettings0126Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFF435F23),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
          child: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.chevron_left_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
        ),
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
          child: Text(
            FFLocalizations.of(context).getText(
              'opmzmx1v' /* 알림 설정 */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 10),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 20,
              borderWidth: 1,
              buttonSize: 40,
              fillColor: Colors.transparent,
              icon: Icon(
                Icons.home_filled,
                color: Color(0xFFF1F4F8),
                size: 35,
              ),
              onPressed: () async {
                context.pushNamed('homepage0125');
              },
            ),
          ),
        ],
        centerTitle: true,
        elevation: 2,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SwitchListTile.adaptive(
            value: _model.switchListTileValue1 ??= true,
            onChanged: (newValue) async {
              setState(() => _model.switchListTileValue1 = newValue!);
            },
            title: Text(
              FFLocalizations.of(context).getText(
                'ka5qu2zk' /* (선택) 개인정보 수집 및 이용 동의 */,
              ),
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                    fontSize: 15,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).titleLargeFamily),
                  ),
            ),
            subtitle: Text(
              FFLocalizations.of(context).getText(
                'tnh16rv4' /* 알림 > 알림 설정에서 변경 가능 */,
              ),
              style: FlutterFlowTheme.of(context).labelMedium,
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            activeColor: Color(0xFF435F23),
            activeTrackColor: FlutterFlowTheme.of(context).accent1,
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
          ),
          SwitchListTile.adaptive(
            value: _model.switchListTileValue2 ??= true,
            onChanged: (newValue) async {
              setState(() => _model.switchListTileValue2 = newValue!);
            },
            title: Text(
              FFLocalizations.of(context).getText(
                'eefrpojr' /* 공지사항 */,
              ),
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                    fontSize: 15,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).titleLargeFamily),
                  ),
            ),
            subtitle: Text(
              FFLocalizations.of(context).getText(
                'z21zqksi' /* 앱 공지사항을 기기를 통해 전달합니다. */,
              ),
              style: FlutterFlowTheme.of(context).labelMedium,
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            activeColor: Color(0xFF435F23),
            activeTrackColor: FlutterFlowTheme.of(context).accent1,
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
          ),
          SwitchListTile.adaptive(
            value: _model.switchListTileValue3 ??= true,
            onChanged: (newValue) async {
              setState(() => _model.switchListTileValue3 = newValue!);
            },
            title: Text(
              FFLocalizations.of(context).getText(
                '8rek0hgi' /* 광고/이벤트 */,
              ),
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                    fontSize: 15,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).titleLargeFamily),
                  ),
            ),
            subtitle: Text(
              FFLocalizations.of(context).getText(
                '2om9o7tw' /* 상품 광고 및 이벤트를 기기를 통해 전달합니다. */,
              ),
              style: FlutterFlowTheme.of(context).labelMedium,
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            activeColor: Color(0xFF435F23),
            activeTrackColor: FlutterFlowTheme.of(context).accent1,
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
          ),
        ],
      ),
    );
  }
}
