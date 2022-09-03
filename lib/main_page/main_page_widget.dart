import '../auth/auth_util.dart';
import '../entry_page/entry_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../rules_page/rules_page_widget.dart';
import '../score_page/score_page_widget.dart';
import '../transition_page/transition_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:share_plus/share_plus.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({Key? key}) : super(key: key);

  @override
  _MainPageWidgetState createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  AudioPlayer? soundPlayer3;
  AudioPlayer? soundPlayer4;
  AudioPlayer? soundPlayer5;
  AudioPlayer? soundPlayer6;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      soundPlayer1 ??= AudioPlayer();
      if (soundPlayer1!.playing) {
        await soundPlayer1!.stop();
      }
      soundPlayer1!.setVolume(0.15);
      soundPlayer1!
          .setAsset('assets/audios/alexander-nakarada-the-great-battle.mp3')
          .then((_) => soundPlayer1!.play());

      await Future.delayed(const Duration(milliseconds: 197000));
      soundPlayer2 ??= AudioPlayer();
      if (soundPlayer2!.playing) {
        await soundPlayer2!.stop();
      }
      soundPlayer2!.setVolume(0.18);
      soundPlayer2!
          .setAsset('assets/audios/alexander-nakarada-the-great-battle.mp3')
          .then((_) => soundPlayer2!.play());

      await Future.delayed(const Duration(milliseconds: 197000));
      soundPlayer3 ??= AudioPlayer();
      if (soundPlayer3!.playing) {
        await soundPlayer3!.stop();
      }
      soundPlayer3!.setVolume(0.18);
      soundPlayer3!
          .setAsset('assets/audios/alexander-nakarada-the-great-battle.mp3')
          .then((_) => soundPlayer3!.play());

      await Future.delayed(const Duration(milliseconds: 197000));
      soundPlayer4 ??= AudioPlayer();
      if (soundPlayer4!.playing) {
        await soundPlayer4!.stop();
      }
      soundPlayer4!.setVolume(0.18);
      soundPlayer4!
          .setAsset('assets/audios/alexander-nakarada-the-great-battle.mp3')
          .then((_) => soundPlayer4!.play());

      await Future.delayed(const Duration(milliseconds: 197000));
      soundPlayer5 ??= AudioPlayer();
      if (soundPlayer5!.playing) {
        await soundPlayer5!.stop();
      }
      soundPlayer5!.setVolume(0.18);
      soundPlayer5!
          .setAsset('assets/audios/alexander-nakarada-the-great-battle.mp3')
          .then((_) => soundPlayer5!.play());

      await Future.delayed(const Duration(milliseconds: 197000));
      soundPlayer6 ??= AudioPlayer();
      if (soundPlayer6!.playing) {
        await soundPlayer6!.stop();
      }
      soundPlayer6!.setVolume(0.18);
      soundPlayer6!
          .setAsset('assets/audios/alexander-nakarada-the-great-battle.mp3')
          .then((_) => soundPlayer6!.play());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    '',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/003_-_Copy.jpg',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.fill,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF9E7D8),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 6, 0, 0),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'Choose Player Count ',
                                            options: FFButtonOptions(
                                              width: 300,
                                              height: 40,
                                              color: Color(0xFF349006),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                width: 3,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  40, 10, 40, 20),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  setState(() => FFAppState()
                                                      .numberofPlayers = 2);
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          TransitionPageWidget(),
                                                    ),
                                                  );
                                                },
                                                text: '2P',
                                                options: FFButtonOptions(
                                                  width: 50,
                                                  height: 50,
                                                  color: Color(0xFFBA5010),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 21,
                                                      ),
                                                  elevation: 20,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    width: 3,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  setState(() => FFAppState()
                                                      .numberofPlayers = 3);
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          TransitionPageWidget(),
                                                    ),
                                                  );
                                                },
                                                text: '3P',
                                                options: FFButtonOptions(
                                                  width: 50,
                                                  height: 50,
                                                  color: Color(0xFFBA5010),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 21,
                                                      ),
                                                  elevation: 20,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    width: 3,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  setState(() => FFAppState()
                                                      .numberofPlayers = 4);
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          TransitionPageWidget(),
                                                    ),
                                                  );
                                                },
                                                text: '4P',
                                                options: FFButtonOptions(
                                                  width: 50,
                                                  height: 50,
                                                  color: Color(0xFFBA5010),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                      ),
                                                  elevation: 20,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    width: 3,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    RulesPageWidget(),
                                              ),
                                            );
                                          },
                                          text: 'Rules',
                                          options: FFButtonOptions(
                                            width: 130,
                                            height: 40,
                                            color: Color(0xFFBA5010),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white,
                                                      fontSize: 22,
                                                    ),
                                            elevation: 20,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              width: 3,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 6, 0, 0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ScorePageWidget(),
                                                ),
                                              );
                                            },
                                            text: 'Scoreboard',
                                            options: FFButtonOptions(
                                              width: 180,
                                              height: 40,
                                              color: Color(0xFFBA5010),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 22,
                                                      ),
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                width: 3,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 6, 0, 0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              await Share.share(
                                                  'Check out this game . Snake-Ladder-Trivia.  Link --> https://play.google.com/store/apps/details?id=com.snakegame.freesnakegames&hl=en_IN&gl=US');
                                            },
                                            text: 'Share',
                                            options: FFButtonOptions(
                                              width: 130,
                                              height: 40,
                                              color: Color(0xFFBA5010),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 22,
                                                      ),
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                width: 3,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 6, 0, 0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              await signOut();
                                              await Navigator
                                                  .pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      EntryPageWidget(),
                                                ),
                                                (r) => false,
                                              );
                                            },
                                            text: 'Logout',
                                            options: FFButtonOptions(
                                              width: 130,
                                              height: 40,
                                              color: Color(0xFFBA5010),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontSize: 22,
                                                      ),
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                width: 3,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
