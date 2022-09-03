import '../backend/backend.dart';
import '../components/question_sheet_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GamePageWidget extends StatefulWidget {
  const GamePageWidget({Key? key}) : super(key: key);

  @override
  _GamePageWidgetState createState() => _GamePageWidgetState();
}

class _GamePageWidgetState extends State<GamePageWidget> {
  List<int>? updatePlayerB1;
  List<int>? updatedPlayerListA;
  int? newChanceValue;
  int? playerValue;
  int? newPlayerValue;
  int? sAndLPlayerValue;
  List<int>? updatePlayerB2;
  List<int>? updatePlayerB3;
  List<int>? updatePlayerB4;
  int? red;
  int? blue;
  int? green;
  int? yellow;
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
        List<RewardQuestionsRecord> gamePageRewardQuestionsRecordList =
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
                              fontSize: 30,
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
                                            if (FFAppState().Acurr == 100)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 100)
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
                                          if (FFAppState().Ccurr == 100)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 100)
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
                                            if (FFAppState().Acurr == 99)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 99)
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
                                            if (FFAppState().Ccurr == 99)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 99)
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
                                            if (FFAppState().Acurr == 98)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 98)
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
                                            if (FFAppState().Ccurr == 98)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 98)
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
                                          if (FFAppState().Acurr == 97)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 97)
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
                                            if (FFAppState().Ccurr == 97)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 97)
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
                                          if (FFAppState().Acurr == 96)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 96)
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
                                          if (FFAppState().Ccurr == 96)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 96)
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
                                          if (FFAppState().Acurr == 95)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 95)
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
                                          if (FFAppState().Ccurr == 95)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 95)
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
                                          if (FFAppState().Acurr == 94)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 94)
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
                                          if (FFAppState().Ccurr == 94)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 94)
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
                                          if (FFAppState().Acurr == 93)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 93)
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
                                          if (FFAppState().Ccurr == 93)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 93)
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
                                          if (FFAppState().Acurr == 92)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 92)
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
                                          if (FFAppState().Ccurr == 92)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 92)
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
                                          if (FFAppState().Acurr == 91)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 91)
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
                                            if (FFAppState().Dcurr == 91)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 91)
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
                                            if (FFAppState().Acurr == 81)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 81)
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
                                          if (FFAppState().Ccurr == 81)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 81)
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
                                            if (FFAppState().Acurr == 82)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 82)
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
                                            if (FFAppState().Ccurr == 82)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 82)
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
                                            if (FFAppState().Acurr == 83)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 83)
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
                                            if (FFAppState().Ccurr == 83)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 83)
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
                                          if (FFAppState().Acurr == 84)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 84)
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
                                            if (FFAppState().Ccurr == 84)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 84)
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
                                          if (FFAppState().Acurr == 85)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 85)
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
                                          if (FFAppState().Ccurr == 85)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 85)
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
                                          if (FFAppState().Acurr == 86)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 86)
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
                                          if (FFAppState().Ccurr == 86)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 86)
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
                                          if (FFAppState().Acurr == 87)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 87)
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
                                          if (FFAppState().Ccurr == 87)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 87)
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
                                          if (FFAppState().Acurr == 88)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 88)
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
                                          if (FFAppState().Ccurr == 88)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 88)
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
                                          if (FFAppState().Acurr == 89)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 89)
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
                                          if (FFAppState().Ccurr == 89)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 89)
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
                                          if (FFAppState().Acurr == 90)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 90)
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
                                            if (FFAppState().Dcurr == 90)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 90)
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
                                            if (FFAppState().Acurr == 80)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 80)
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
                                          if (FFAppState().Ccurr == 80)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 80)
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
                                            if (FFAppState().Acurr == 79)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 79)
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
                                            if (FFAppState().Ccurr == 79)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 79)
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
                                            if (FFAppState().Acurr == 78)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 78)
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
                                            if (FFAppState().Ccurr == 78)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 78)
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
                                          if (FFAppState().Acurr == 77)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 77)
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
                                            if (FFAppState().Ccurr == 77)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 77)
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
                                          if (FFAppState().Acurr == 76)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 76)
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
                                          if (FFAppState().Ccurr == 76)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 76)
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
                                          if (FFAppState().Acurr == 75)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 75)
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
                                          if (FFAppState().Ccurr == 75)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 75)
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
                                          if (FFAppState().Acurr == 74)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 74)
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
                                          if (FFAppState().Ccurr == 74)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 74)
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
                                          if (FFAppState().Acurr == 73)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 73)
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
                                          if (FFAppState().Ccurr == 73)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 73)
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
                                          if (FFAppState().Acurr == 72)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 72)
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
                                          if (FFAppState().Ccurr == 72)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 72)
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
                                          if (FFAppState().Acurr == 71)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 71)
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
                                            if (FFAppState().Dcurr == 71)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 71)
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
                                            if (FFAppState().Acurr == 61)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 61)
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
                                          if (FFAppState().Ccurr == 61)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 61)
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
                                            if (FFAppState().Acurr == 62)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 62)
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
                                            if (FFAppState().Ccurr == 62)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 62)
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
                                            if (FFAppState().Acurr == 63)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 63)
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
                                            if (FFAppState().Ccurr == 63)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 63)
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
                                          if (FFAppState().Acurr == 64)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 64)
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
                                            if (FFAppState().Ccurr == 64)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 64)
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
                                          if (FFAppState().Acurr == 65)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 65)
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
                                          if (FFAppState().Ccurr == 65)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 65)
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
                                          if (FFAppState().Acurr == 66)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 66)
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
                                          if (FFAppState().Ccurr == 66)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 66)
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
                                          if (FFAppState().Acurr == 67)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 67)
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
                                          if (FFAppState().Ccurr == 67)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 67)
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
                                          if (FFAppState().Acurr == 68)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 68)
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
                                          if (FFAppState().Ccurr == 68)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 68)
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
                                          if (FFAppState().Acurr == 69)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 69)
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
                                          if (FFAppState().Ccurr == 69)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 69)
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
                                          if (FFAppState().Acurr == 70)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 70)
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
                                            if (FFAppState().Dcurr == 70)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 70)
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
                                            if (FFAppState().Acurr == 60)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 60)
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
                                          if (FFAppState().Ccurr == 60)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 60)
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
                                            if (FFAppState().Acurr == 59)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 59)
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
                                            if (FFAppState().Ccurr == 59)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 59)
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
                                            if (FFAppState().Acurr == 58)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 58)
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
                                            if (FFAppState().Ccurr == 58)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 58)
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
                                          if (FFAppState().Acurr == 57)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 57)
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
                                            if (FFAppState().Ccurr == 57)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 57)
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
                                          if (FFAppState().Acurr == 56)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 56)
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
                                          if (FFAppState().Ccurr == 56)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 56)
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
                                          if (FFAppState().Acurr == 55)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 55)
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
                                          if (FFAppState().Ccurr == 55)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 55)
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
                                          if (FFAppState().Acurr == 54)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 54)
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
                                          if (FFAppState().Ccurr == 54)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 54)
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
                                          if (FFAppState().Acurr == 53)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 53)
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
                                          if (FFAppState().Ccurr == 53)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 53)
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
                                          if (FFAppState().Acurr == 52)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 52)
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
                                          if (FFAppState().Ccurr == 52)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 52)
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
                                          if (FFAppState().Acurr == 51)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 51)
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
                                            if (FFAppState().Dcurr == 51)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 51)
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
                                            if (FFAppState().Acurr == 41)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 41)
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
                                          if (FFAppState().Ccurr == 41)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 41)
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
                                            if (FFAppState().Acurr == 42)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 42)
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
                                            if (FFAppState().Ccurr == 42)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 42)
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
                                            if (FFAppState().Acurr == 43)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 43)
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
                                            if (FFAppState().Ccurr == 43)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 43)
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
                                          if (FFAppState().Acurr == 44)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 44)
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
                                            if (FFAppState().Ccurr == 44)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 44)
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
                                          if (FFAppState().Acurr == 45)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 45)
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
                                          if (FFAppState().Ccurr == 45)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 45)
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
                                          if (FFAppState().Acurr == 46)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 46)
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
                                          if (FFAppState().Ccurr == 46)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 46)
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
                                          if (FFAppState().Acurr == 47)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 47)
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
                                          if (FFAppState().Ccurr == 47)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 47)
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
                                          if (FFAppState().Acurr == 48)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 48)
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
                                          if (FFAppState().Ccurr == 48)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 48)
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
                                          if (FFAppState().Acurr == 49)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 49)
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
                                          if (FFAppState().Ccurr == 49)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 49)
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
                                          if (FFAppState().Acurr == 50)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 50)
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
                                            if (FFAppState().Dcurr == 50)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 50)
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
                                            if (FFAppState().Acurr == 40)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 40)
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
                                          if (FFAppState().Ccurr == 40)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 40)
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
                                            if (FFAppState().Acurr == 39)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 39)
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
                                            if (FFAppState().Ccurr == 39)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 39)
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
                                            if (FFAppState().Acurr == 38)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 38)
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
                                            if (FFAppState().Ccurr == 38)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 38)
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
                                          if (FFAppState().Acurr == 37)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 37)
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
                                            if (FFAppState().Ccurr == 37)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 37)
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
                                          if (FFAppState().Acurr == 36)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 36)
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
                                          if (FFAppState().Ccurr == 36)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 36)
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
                                          if (FFAppState().Acurr == 35)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 35)
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
                                          if (FFAppState().Ccurr == 35)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 35)
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
                                          if (FFAppState().Acurr == 34)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 34)
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
                                          if (FFAppState().Ccurr == 34)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 34)
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
                                          if (FFAppState().Acurr == 33)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 33)
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
                                          if (FFAppState().Ccurr == 33)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 33)
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
                                          if (FFAppState().Acurr == 32)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 32)
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
                                          if (FFAppState().Ccurr == 32)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 32)
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
                                          if (FFAppState().Acurr == 31)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 31)
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
                                            if (FFAppState().Dcurr == 31)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 31)
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
                                            if (FFAppState().Acurr == 21)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 21)
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
                                          if (FFAppState().Ccurr == 21)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 21)
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
                                            if (FFAppState().Acurr == 22)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 22)
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
                                            if (FFAppState().Ccurr == 22)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 22)
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
                                            if (FFAppState().Acurr == 23)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 23)
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
                                            if (FFAppState().Ccurr == 23)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 23)
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
                                          if (FFAppState().Acurr == 24)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 24)
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
                                            if (FFAppState().Ccurr == 24)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 24)
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
                                          if (FFAppState().Acurr == 25)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 25)
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
                                          if (FFAppState().Ccurr == 25)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 25)
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
                                          if (FFAppState().Acurr == 26)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 26)
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
                                          if (FFAppState().Ccurr == 26)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 26)
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
                                          if (FFAppState().Acurr == 27)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 27)
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
                                          if (FFAppState().Ccurr == 27)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 27)
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
                                          if (FFAppState().Acurr == 28)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 28)
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
                                          if (FFAppState().Ccurr == 28)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 28)
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
                                          if (FFAppState().Acurr == 29)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 29)
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
                                          if (FFAppState().Ccurr == 29)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 29)
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
                                          if (FFAppState().Acurr == 30)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 30)
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
                                            if (FFAppState().Dcurr == 30)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 30)
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
                                            if (FFAppState().Acurr == 20)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 20)
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
                                          if (FFAppState().Ccurr == 20)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 20)
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
                                            if (FFAppState().Acurr == 19)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 19)
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
                                            if (FFAppState().Ccurr == 19)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 19)
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
                                            if (FFAppState().Acurr == 18)
                                              Icon(
                                                Icons.brightness_1_rounded,
                                                color: Color(0xFFF70A0A),
                                                size: 17,
                                              ),
                                            if (FFAppState().Bcurr == 18)
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
                                            if (FFAppState().Ccurr == 18)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 18)
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
                                          if (FFAppState().Acurr == 17)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 17)
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
                                            if (FFAppState().Ccurr == 17)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 17)
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
                                          if (FFAppState().Acurr == 16)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 16)
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
                                          if (FFAppState().Ccurr == 16)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 16)
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
                                          if (FFAppState().Acurr == 15)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 15)
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
                                          if (FFAppState().Ccurr == 15)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 15)
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
                                          if (FFAppState().Acurr == 14)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 14)
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
                                          if (FFAppState().Ccurr == 14)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 14)
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
                                          if (FFAppState().Acurr == 13)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 13)
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
                                          if (FFAppState().Ccurr == 13)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 13)
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
                                          if (FFAppState().Acurr == 12)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 12)
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
                                          if (FFAppState().Ccurr == 12)
                                            Icon(
                                              Icons.brightness_1,
                                              color: Color(0xFF1EEB00),
                                              size: 17,
                                            ),
                                          if (FFAppState().Dcurr == 12)
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
                                          if (FFAppState().Acurr == 11)
                                            Icon(
                                              Icons.brightness_1_rounded,
                                              color: Color(0xFFF70A0A),
                                              size: 17,
                                            ),
                                          if (FFAppState().Bcurr == 11)
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
                                            if (FFAppState().Dcurr == 11)
                                              Icon(
                                                Icons.brightness_1,
                                                color: Color(0xFF1EEB00),
                                                size: 17,
                                              ),
                                            if (FFAppState().Dcurr == 11)
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
                    padding: EdgeInsetsDirectional.fromSTEB(15, 35, 15, 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(2),
                              child: Image.network(
                                functions.turnimagesetfunc(
                                    FFAppState().chance,
                                    FFAppState().numberofPlayers,
                                    FFAppState().playerImages.toList()),
                                width: 70,
                                height: 70,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                              child: Image.asset(
                                'assets/images/giphy.gif',
                                width: 70,
                                height: 70,
                                fit: BoxFit.fill,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                var _shouldSetState = false;
                                setState(() => FFAppState().dicevalue =
                                        valueOrDefault<int>(
                                      random_data.randomInteger(1, 2),
                                      2,
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
                                    updatedPlayerListA =
                                        await actions.updatePlayerValue(
                                      FFAppState().players.toList(),
                                      FFAppState().chance,
                                      FFAppState().numberofPlayers,
                                      newPlayerValue!,
                                    );
                                    _shouldSetState = true;
                                    setState(() => FFAppState().players =
                                        updatedPlayerListA!.toList());
                                  } else {
                                    if (sAndLPlayerValue! < newPlayerValue!) {
                                      // Snake Flow
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: QuestionSheetWidget(
                                              sequence: valueOrDefault<int>(
                                                random_data.randomInteger(1, 3),
                                                1,
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                      if (FFAppState().rewardResult) {
                                        updatePlayerB1 =
                                            await actions.updatePlayerValue(
                                          FFAppState().players.toList(),
                                          FFAppState().chance,
                                          FFAppState().numberofPlayers,
                                          newPlayerValue!,
                                        );
                                        _shouldSetState = true;
                                        setState(() => FFAppState().players =
                                            updatePlayerB1!.toList());
                                      } else {
                                        updatePlayerB2 =
                                            await actions.updatePlayerValue(
                                          FFAppState().players.toList(),
                                          FFAppState().chance,
                                          FFAppState().numberofPlayers,
                                          sAndLPlayerValue!,
                                        );
                                        _shouldSetState = true;
                                        setState(() => FFAppState().players =
                                            updatePlayerB2!.toList());
                                      }
                                    } else {
                                      // Ladder Flow
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: QuestionSheetWidget(
                                              sequence: valueOrDefault<int>(
                                                random_data.randomInteger(1, 3),
                                                1,
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                      if (FFAppState().rewardResult) {
                                        updatePlayerB3 =
                                            await actions.updatePlayerValue(
                                          FFAppState().players.toList(),
                                          FFAppState().chance,
                                          FFAppState().numberofPlayers,
                                          sAndLPlayerValue!,
                                        );
                                        _shouldSetState = true;
                                        setState(() => FFAppState().players =
                                            updatePlayerB3!.toList());
                                      } else {
                                        updatePlayerB4 =
                                            await actions.updatePlayerValue(
                                          FFAppState().players.toList(),
                                          FFAppState().chance,
                                          FFAppState().numberofPlayers,
                                          newPlayerValue!,
                                        );
                                        _shouldSetState = true;
                                        setState(() => FFAppState().players =
                                            updatePlayerB4!.toList());
                                      }
                                    }
                                  }

                                  red = await actions.getPlayerValue(
                                    0,
                                    FFAppState().players.toList(),
                                  );
                                  _shouldSetState = true;
                                  blue = await actions.getPlayerValue(
                                    1,
                                    FFAppState().players.toList(),
                                  );
                                  _shouldSetState = true;
                                  green = await actions.getPlayerValue(
                                    2,
                                    FFAppState().players.toList(),
                                  );
                                  _shouldSetState = true;
                                  yellow = await actions.getPlayerValue(
                                    3,
                                    FFAppState().players.toList(),
                                  );
                                  _shouldSetState = true;
                                  setState(() => FFAppState().Acurr = red!);
                                  setState(() => FFAppState().Bcurr = blue!);
                                  setState(() => FFAppState().Ccurr = green!);
                                  setState(() => FFAppState().Dcurr = yellow!);
                                }
                                setState(() => FFAppState().chance =
                                    FFAppState().chance + 1);
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
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    functions.printListOfValues(FFAppState().players.toList()),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Text(
                    FFAppState().chance.toString(),
                    style: FlutterFlowTheme.of(context).bodyText1,
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
