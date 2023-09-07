import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DadosUserModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  List<bool> atividade = [];
  void addToAtividade(bool item) => atividade.add(item);
  void removeFromAtividade(bool item) => atividade.remove(item);
  void removeAtIndexFromAtividade(int index) => atividade.removeAt(index);
  void updateAtividadeAtIndex(int index, Function(bool) updateFn) =>
      atividade[index] = updateFn(atividade[index]);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
