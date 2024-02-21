import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'giftcertificate0127_model.dart';
export 'giftcertificate0127_model.dart';

class Giftcertificate0127Widget extends StatefulWidget {
  const Giftcertificate0127Widget({super.key});

  @override
  State<Giftcertificate0127Widget> createState() =>
      _Giftcertificate0127WidgetState();
}

class _Giftcertificate0127WidgetState extends State<Giftcertificate0127Widget>
    with TickerProviderStateMixin {
  late Giftcertificate0127Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Giftcertificate0127Model());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
              'hc6rckir' /* 교환하기 */,
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
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
              child: Container(
                width: 425,
                height: 165,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0xFFC6CBC6),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'sizn79dx' /* 보유 발자국 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: Color(0xFF435F23),
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: AuthUserStreamWidget(
                                builder: (context) => Text(
                                  formatNumber(
                                    valueOrDefault(
                                        currentUserDocument?.footprint, 0),
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.periodDecimal,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: 'gowum',
                                        color: Color(0xFF435F23),
                                        fontSize: 40,
                                        fontWeight: FontWeight.w800,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('gowum'),
                                      ),
                                ),
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'dwu6e0nk' /* 발자국 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'gowum',
                                    color: Color(0xFF435F23),
                                    fontSize: 23,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('gowum'),
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
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment(0, 0),
                  child: TabBar(
                    labelColor: FlutterFlowTheme.of(context).primaryText,
                    unselectedLabelColor:
                        FlutterFlowTheme.of(context).secondaryText,
                    labelStyle: FlutterFlowTheme.of(context)
                        .titleMedium
                        .override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleMediumFamily,
                          fontSize: 15,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleMediumFamily),
                        ),
                    unselectedLabelStyle: TextStyle(),
                    indicatorColor: Color(0xFF435F23),
                    padding: EdgeInsets.all(4),
                    tabs: [
                      Tab(
                        text: FFLocalizations.of(context).getText(
                          'iehnynn9' /* 모두보기 */,
                        ),
                      ),
                      Tab(
                        text: FFLocalizations.of(context).getText(
                          'fid5qqk3' /* 30000원 이하 */,
                        ),
                      ),
                      Tab(
                        text: FFLocalizations.of(context).getText(
                          'jozxv624' /* 50000원 이하 */,
                        ),
                      ),
                    ],
                    controller: _model.tabBarController,
                    onTap: (i) async {
                      [() async {}, () async {}, () async {}][i]();
                    },
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _model.tabBarController,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'tzdz73ep' /* 상품을 선택해주세요. */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontSize: 18,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ),
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: CheckboxListTile(
                              value: _model.checkboxListTileValue1 ??= true,
                              onChanged: (newValue) async {
                                setState(() =>
                                    _model.checkboxListTileValue1 = newValue!);
                              },
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'gttlphhs' /* 온누리상품권 30,000원권 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleLargeFamily,
                                      fontSize: 18,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleLargeFamily),
                                    ),
                              ),
                              subtitle: Text(
                                FFLocalizations.of(context).getText(
                                  'sv4pykyt' /* (충청도) 30,000발자국 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      fontSize: 11,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                              ),
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                            child: CheckboxListTile(
                              value: _model.checkboxListTileValue2 ??= false,
                              onChanged: (newValue) async {
                                setState(() =>
                                    _model.checkboxListTileValue2 = newValue!);
                              },
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  '22cgkfif' /* 지역사랑상품권 10,000원권 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleLargeFamily,
                                      fontSize: 18,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleLargeFamily),
                                    ),
                              ),
                              subtitle: Text(
                                FFLocalizations.of(context).getText(
                                  '6cb4yr77' /* (수원) 10,000발자국 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      fontSize: 11,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              activeColor: FlutterFlowTheme.of(context).primary,
                              checkColor: FlutterFlowTheme.of(context).info,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'sx1ouxmt' /* Tab View 2 */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 32,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'h557442v' /* Tab View 3 */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 32,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: FFLocalizations.of(context).getText(
                    '8vbe2azq' /* 전체 선택 취소 */,
                  ),
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0xFF435F23),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleSmallFamily,
                          color: Colors.white,
                          fontSize: 14,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleSmallFamily),
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('myGiftcertificate0127');
                  },
                  text: FFLocalizations.of(context).getText(
                    'e4znc43v' /* 선택 상품 교환 */,
                  ),
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0xFF435F23),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleSmallFamily,
                          color: Colors.white,
                          fontSize: 14,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleSmallFamily),
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
