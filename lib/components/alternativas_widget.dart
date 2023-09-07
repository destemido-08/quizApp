import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'alternativas_model.dart';
export 'alternativas_model.dart';

class AlternativasWidget extends StatefulWidget {
  const AlternativasWidget({Key? key}) : super(key: key);

  @override
  _AlternativasWidgetState createState() => _AlternativasWidgetState();
}

class _AlternativasWidgetState extends State<AlternativasWidget> {
  late AlternativasModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlternativasModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 10.0, 10.0),
          child: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: () {
                if (_model.istrue == true) {
                  return Color(0xFF15F809);
                } else if (_model.istrue == false) {
                  return Color(0xFFDD0814);
                } else {
                  return FlutterFlowTheme.of(context).primaryBtnText;
                }
              }(),
              shape: BoxShape.circle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).primaryBtnText,
                width: 2.0,
              ),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Text(
                'A',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).info,
                    ),
              ),
            ),
          ),
        ),
        Text(
          'A alternativa Correta ',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                color: FlutterFlowTheme.of(context).info,
                fontSize: 16.0,
              ),
        ),
      ],
    );
  }
}
