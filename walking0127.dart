import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

import 'walking0127_model.dart';
export 'walking0127_model.dart';

class Walking0127Widget extends StatefulWidget {
  const Walking0127Widget({super.key});

  @override
  State<Walking0127Widget> createState() => _Walking0127WidgetState();
}

class _Walking0127WidgetState extends State<Walking0127Widget> {
  late Walking0127Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Walking0127Model());
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
              'ugyckvuf' /* 만보기 인증 */,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 535,
            height: 399,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 50),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.shoePrints,
                            color: Color(0xFF7C826C),
                            size: 80,
                          ),
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              formatNumber(
                                valueOrDefault(
                                    currentUserDocument?.walkLog, 0.0),
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.periodDecimal,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontSize: 20,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      AuthUserStreamWidget(
                        builder: (context) => CircularPercentIndicator(
                          percent: functions.walkCal(valueOrDefault(
                              currentUserDocument?.walkLog, 0.0))!,
                          radius: 60,
                          lineWidth: 12,
                          animation: true,
                          animateFromLastPercent: true,
                          progressColor: Color(0xFF7C826C),
                          backgroundColor: FlutterFlowTheme.of(context).accent4,
                          center: Text(
                            formatNumber(
                              functions.walkCal(valueOrDefault(
                                  currentUserDocument?.walkLog, 0.0)),
                              formatType: FormatType.percent,
                            ),
                            style: FlutterFlowTheme.of(context).headlineSmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      StreamBuilder<List<DateRecord>>(
                        stream: queryDateRecord(
                          singleRecord: true,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 60,
                                height: 60,
                                child: SpinKitPulse(
                                  color: Color(0xFF435F23),
                                  size: 60,
                                ),
                              ),
                            );
                          }
                          List<DateRecord> buttonDateRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final buttonDateRecord =
                              buttonDateRecordList.isNotEmpty
                                  ? buttonDateRecordList.first
                                  : null;
                          return FFButtonWidget(
                            onPressed: () async {
                              await currentUserReference!.update({
                                ...createUsersRecordData(
                                  walkLog: valueOrDefault(
                                              currentUserDocument?.walkLog,
                                              0.0) >=
                                          10000.0
                                      ? 0.0
                                      : valueOrDefault(
                                          currentUserDocument?.walkLog, 0.0),
                                ),
                                ...mapToFirestore(
                                  {
                                    'footprint': FieldValue.increment(
                                        (dateTimeFormat(
                                                      'yMd',
                                                      buttonDateRecord
                                                          ?.createdTimeW,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ) ==
                                                    dateTimeFormat(
                                                      'yMd',
                                                      getCurrentTimestamp,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    )) ||
                                                (valueOrDefault(
                                                        currentUserDocument
                                                            ?.walkLog,
                                                        0.0) <
                                                    10000.0)
                                            ? 0
                                            : 20),
                                  },
                                ),
                              });

                              await FootprintsLogRecord.collection
                                  .doc()
                                  .set(createFootprintsLogRecordData(
                                    email: currentUserEmail,
                                    from: 'walkLog',
                                    time: getCurrentTimestamp,
                                    footLog: (valueOrDefault(
                                                    currentUserDocument
                                                        ?.walkLog,
                                                    0.0) <
                                                10000.0) ||
                                            (dateTimeFormat(
                                                  'yMd',
                                                  buttonDateRecord
                                                      ?.createdTimeW,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ) ==
                                                dateTimeFormat(
                                                  'yMd',
                                                  getCurrentTimestamp,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ))
                                        ? 0
                                        : 20,
                                  ));

                              await buttonDateRecord!.reference
                                  .update(createDateRecordData(
                                createdTimeW: valueOrDefault(
                                            currentUserDocument?.walkLog,
                                            0.0) >=
                                        10000.0
                                    ? getCurrentTimestamp
                                    : buttonDateRecord?.createdTimeW,
                              ));
                            },
                            text: FFLocalizations.of(context).getText(
                              'isvu1jo9' /* 만보 발자국 받기 */,
                            ),
                            options: FFButtonOptions(
                              width: 168,
                              height: 50,
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                              iconPadding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              color: Color(0xFF7C826C),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Colors.white,
                                    fontSize: 16,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              elevation: 3,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
            child: Container(
              width: 354,
              height: 79,
              decoration: BoxDecoration(
                color: Color(0xFFF7F7F8),
                borderRadius: BorderRadius.circular(8),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Color(0xFFAFAFB6),
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'jyq8all8' /* 현재 보유 발자국 */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: Color(0xFF435F23),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                    child: AuthUserStreamWidget(
                      builder: (context) => Text(
                        valueOrDefault(currentUserDocument?.footprint, 0)
                            .toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 15,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
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
        ],
      ),
    );
  }
}
