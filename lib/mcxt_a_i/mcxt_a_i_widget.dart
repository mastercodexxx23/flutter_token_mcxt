import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mcxt_a_i_model.dart';
export 'mcxt_a_i_model.dart';

class McxtAIWidget extends StatefulWidget {
  const McxtAIWidget({Key? key}) : super(key: key);

  @override
  _McxtAIWidgetState createState() => _McxtAIWidgetState();
}

class _McxtAIWidgetState extends State<McxtAIWidget> {
  late McxtAIModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => McxtAIModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).gray600,
      appBar: responsiveVisibility(
        context: context,
        tabletLandscape: false,
        desktop: false,
      )
          ? AppBar(
              backgroundColor: FlutterFlowTheme.of(context).overlay,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 54.0,
                icon: Icon(
                  Icons.chevron_left_outlined,
                  color: Color(0xFFE4D0D0),
                  size: 24.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    onTap: () async {
                      context.safePop();
                    },
                    child: Text(
                      'Back',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).subtitle1Family,
                            color: Color(0xFFF2DBDB),
                            fontSize: 20.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle1Family),
                          ),
                    ),
                  ),
                ],
              ),
              actions: [],
              centerTitle: true,
              elevation: 0.0,
            )
          : null,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FlutterFlowWebView(
              url: 'https://pabibokasi.flutterflow.app/',
              bypass: false,
              height: 720.0,
              verticalScroll: true,
              horizontalScroll: true,
            ),
          ],
        ),
      ),
    );
  }
}
