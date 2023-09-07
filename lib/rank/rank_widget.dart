import '/backend/backend.dart';
import '/components/dados_user_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rank_model.dart';
export 'rank_model.dart';

class RankWidget extends StatefulWidget {
  const RankWidget({Key? key}) : super(key: key);

  @override
  _RankWidgetState createState() => _RankWidgetState();
}

class _RankWidgetState extends State<RankWidget> with TickerProviderStateMixin {
  late RankModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RankModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 1,
      initialIndex: 0,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF2613D2),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.search_sharp,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment(0.0, 0),
                    child: TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Color(0xB3FFFFFF),
                      labelStyle: FlutterFlowTheme.of(context).titleMedium,
                      unselectedLabelStyle: TextStyle(),
                      indicatorColor: FlutterFlowTheme.of(context).primary,
                      indicatorWeight: 3.0,
                      tabs: [
                        Tab(
                          text: 'CLASIFICAÇÃO ',
                        ),
                      ],
                      controller: _model.tabBarController,
                      onTap: (value) => setState(() {}),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _model.tabBarController,
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF01263F),
                          ),
                          child: StreamBuilder<List<DadosRecord>>(
                            stream: queryDadosRecord(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 30.0,
                                    height: 30.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<DadosRecord> listViewDadosRecordList =
                                  snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewDadosRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewDadosRecord =
                                      listViewDadosRecordList[listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 24.0, 20.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 137.0,
                                      decoration: BoxDecoration(
                                        color: Color(0x2DFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: FutureBuilder<List<DadosRecord>>(
                                          future: queryDadosRecordOnce(
                                            singleRecord: true,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<DadosRecord>
                                                dadosUserDadosRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final dadosUserDadosRecord =
                                                dadosUserDadosRecordList
                                                        .isNotEmpty
                                                    ? dadosUserDadosRecordList
                                                        .first
                                                    : null;
                                            return DadosUserWidget(
                                              key: Key(
                                                  'Keym6l_${listViewIndex}_of_${listViewDadosRecordList.length}'),
                                              total: dadosUserDadosRecord!
                                                  .questoes,
                                              nome: dadosUserDadosRecord!
                                                  .nomeUser,
                                              empresa: dadosUserDadosRecord!
                                                  .nomeUser,
                                              cargo:
                                                  dadosUserDadosRecord!.cargos,
                                              tempo:
                                                  dadosUserDadosRecord!.tempo,
                                              imagem: dadosUserDadosRecord!
                                                  .fotoUser,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
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
    );
  }
}
