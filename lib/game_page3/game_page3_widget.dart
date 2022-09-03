import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/question_sheet_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

class GamePage3Widget extends StatefulWidget {
  const GamePage3Widget({Key? key}) : super(key: key);

  @override
  _GamePage3WidgetState createState() => _GamePage3WidgetState();
}

class _GamePage3WidgetState extends State<GamePage3Widget> {
  AudioPlayer? soundPlayer1;
  int? nextPostion;
  AudioPlayer? soundPlayer2;
  int? newChanceValue;
  int? playerValue;
  int? newPlayerValue;
  int? sAndLPlayerValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<RewardQuestionsRecord>>(
      stream: queryRewardQuestionsRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<RewardQuestionsRecord> gamePage3RewardQuestionsRecordList =
            snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFFF9E7D8),
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
                              fontSize: 25,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(1),
                              child: Image.asset(
                                'assets/images/Untitled1.png',
                                width: 355,
                                height: 480,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 358,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0x42FFFFFF),
                                ),
                              ),
                              Container(
                                width: 358,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0x42FFFFFF),
                                ),
                              ),
                              Container(
                                width: 358,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0x42FFFFFF),
                                ),
                              ),
                              Container(
                                width: 358,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0x42FFFFFF),
                                ),
                              ),
                              Container(
                                width: 358,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0x42FFFFFF),
                                ),
                              ),
                              Container(
                                width: 358,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0x42FFFFFF),
                                ),
                              ),
                              Container(
                                width: 358,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0x42FFFFFF),
                                ),
                              ),
                              Container(
                                width: 358,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0x42FFFFFF),
                                ),
                              ),
                              Container(
                                width: 358,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0x42FFFFFF),
                                ),
                              ),
                              Container(
                                width: 358,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0x42FFFFFF),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 17,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            1, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            if (FFAppState().Acurr == 1)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 1)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF0011FB),
                                                size: 17,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 17,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (FFAppState().Ccurr == 1)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 1)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFFEDFF08),
                                              size: 17,
                                            ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 17,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.5, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            if (FFAppState().Acurr == 2)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 2)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF0011FB),
                                                size: 17,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 17,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0.5, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            if (FFAppState().Ccurr == 2)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 2)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFFEDFF08),
                                                size: 17,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.5, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            if (FFAppState().Acurr == 3)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 3)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF0011FB),
                                                size: 17,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0.5, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            if (FFAppState().Ccurr == 3)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 3)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFFEDFF08),
                                                size: 17,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (FFAppState().Acurr == 4)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 4)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF0011FB),
                                              size: 17,
                                            ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0.5, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            if (FFAppState().Ccurr == 4)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 4)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFFEDFF08),
                                                size: 17,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (FFAppState().Acurr == 5)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 5)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF0011FB),
                                              size: 17,
                                            ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (FFAppState().Ccurr == 5)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 5)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFFEDFF08),
                                              size: 17,
                                            ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (FFAppState().Acurr == 6)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 6)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF0011FB),
                                              size: 17,
                                            ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (FFAppState().Ccurr == 6)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 6)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFFEDFF08),
                                              size: 17,
                                            ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (FFAppState().Acurr == 7)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 7)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF0011FB),
                                              size: 17,
                                            ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (FFAppState().Ccurr == 7)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 7)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFFEDFF08),
                                              size: 17,
                                            ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (FFAppState().Acurr == 8)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 8)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF0011FB),
                                              size: 17,
                                            ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (FFAppState().Ccurr == 8)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 8)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFFEDFF08),
                                              size: 17,
                                            ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (FFAppState().Acurr == 9)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 9)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF0011FB),
                                              size: 17,
                                            ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (FFAppState().Ccurr == 9)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 9)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFFEDFF08),
                                              size: 17,
                                            ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (FFAppState().Acurr == 10)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 10)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF0011FB),
                                              size: 17,
                                            ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 18,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 2, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            if (FFAppState().Dcurr == 10)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 10)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFFEDFF08),
                                                size: 17,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/images/giphy.gif',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                        InkWell(
                          onTap: () async {
                            var _shouldSetState = false;
                            setState(() =>
                                FFAppState().dicevalue = valueOrDefault<int>(
                                  random_data.randomInteger(1, 1),
                                  5,
                                ));
                            await Future.delayed(
                                const Duration(milliseconds: 1000));
                            newChanceValue = await actions.nextPlayerChance(
                              FFAppState().chance,
                              FFAppState().players.toList(),
                              FFAppState().numberofPlayers,
                            );
                            _shouldSetState = true;
                            if (newChanceValue == -1) {
                              if (_shouldSetState) setState(() {});
                              return;
                            }

                            // GetPlayerValue
                            playerValue = await actions.getPlayerValue(
                              newChanceValue!,
                              FFAppState().players.toList(),
                            );
                            _shouldSetState = true;
                            if (functions.lessThenEqual(
                                functions.add(
                                    playerValue!, FFAppState().dicevalue),
                                100)) {
                              // Add dice value to player value
                              newPlayerValue = await actions.addValueAction(
                                playerValue!,
                                FFAppState().dicevalue,
                              );
                              _shouldSetState = true;
                              // Get value if any Snake & Ladder
                              sAndLPlayerValue =
                                  await actions.snakeAndLadderValue(
                                newPlayerValue!,
                              );
                              _shouldSetState = true;
                              if (sAndLPlayerValue == -1) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'No Snake & Ladder Founde',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Color(0x00000000),
                                  ),
                                );
                              } else {
                                if (sAndLPlayerValue! < newPlayerValue!) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Snake Value',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor: Color(0x00000000),
                                    ),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Ladder Value',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor: Color(0x00000000),
                                    ),
                                  );
                                }

                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: QuestionSheetWidget(
                                        sequence:
                                            random_data.randomInteger(1, 3),
                                      ),
                                    );
                                  },
                                );
                              }
                            }
                            setState(() =>
                                FFAppState().chance = FFAppState().chance + 1);
                            if (_shouldSetState) setState(() {});
                          },
                          child: Image.network(
                            valueOrDefault<String>(
                              functions.dicefunc(FFAppState().dicevalue),
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/uu9glqii6gmc/three.png',
                            ),
                            width: 70,
                            height: 70,
                            fit: BoxFit.fill,
                          ),
                        ),
                        AuthUserStreamWidget(
                          child: InkWell(
                            onTap: () async {
                              setState(() => FFAppState().dicevalue = 7);
                              soundPlayer1 ??= AudioPlayer();
                              if (soundPlayer1!.playing) {
                                await soundPlayer1!.stop();
                              }
                              soundPlayer1!.setVolume(1);
                              soundPlayer1!
                                  .setAsset(
                                      'assets/audios/mixkit-fairy-teleport-868.wav')
                                  .then((_) => soundPlayer1!.play());

                              await Future.delayed(
                                  const Duration(milliseconds: 1500));
                              setState(() =>
                                  FFAppState().dicevalue = valueOrDefault<int>(
                                    random_data.randomInteger(1, 6),
                                    5,
                                  ));
                              await Future.delayed(
                                  const Duration(milliseconds: 1000));
                              if (FFAppState().WhoseTurn == 0) {
                                setState(() => FFAppState().Acurr =
                                    FFAppState().Acurr +
                                        FFAppState().dicevalue);
                                nextPostion = await actions.nextPosition(
                                  FFAppState().Acurr,
                                );
                                setState(
                                    () => FFAppState().Acurr = nextPostion!);
                              } else {
                                if (FFAppState().WhoseTurn == 1) {
                                  setState(() => FFAppState().Bcurr =
                                      FFAppState().Bcurr +
                                          FFAppState().dicevalue);
                                } else {
                                  if (FFAppState().WhoseTurn == 2) {
                                    setState(() => FFAppState().Ccurr =
                                        FFAppState().Ccurr +
                                            FFAppState().dicevalue);
                                  } else {
                                    setState(() => FFAppState().Dcurr =
                                        FFAppState().Dcurr +
                                            FFAppState().dicevalue);
                                  }
                                }
                              }

                              if (FFAppState().WhoseTurn == 3) {
                                setState(() => FFAppState().WhoseTurn = 0);
                              } else {
                                setState(() => FFAppState().WhoseTurn =
                                    FFAppState().WhoseTurn + 1);
                              }

                              soundPlayer2 ??= AudioPlayer();
                              if (soundPlayer2!.playing) {
                                await soundPlayer2!.stop();
                              }
                              soundPlayer2!.setVolume(1);
                              soundPlayer2!
                                  .setAsset(
                                      'assets/audios/koti_k_aagy_badhne_pr.wav')
                                  .then((_) => soundPlayer2!.play());

                              setState(() {});
                            },
                            child: Image.network(
                              valueOrDefault<String>(
                                functions.dicefunc(valueOrDefault<int>(
                                  valueOrDefault(
                                      currentUserDocument?.diceNum, 0),
                                  3,
                                )),
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/uu9glqii6gmc/three.png',
                              ),
                              width: 70,
                              height: 70,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        FFAppState().Acurr.toString(),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                      Text(
                        FFAppState().Bcurr.toString(),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                      Text(
                        FFAppState().Ccurr.toString(),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                      Text(
                        FFAppState().Dcurr.toString(),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          FFAppState().dicevalue.toString(),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        Text(
                          FFAppState().WhoseTurn.toString(),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
