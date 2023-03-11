import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'movie_marathon_model.dart';
export 'movie_marathon_model.dart';

class MovieMarathonWidget extends StatefulWidget {
  const MovieMarathonWidget({Key? key}) : super(key: key);

  @override
  _MovieMarathonWidgetState createState() => _MovieMarathonWidgetState();
}

class _MovieMarathonWidgetState extends State<MovieMarathonWidget> {
  late MovieMarathonModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MovieMarathonModel());

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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowWebView(
                url: 'https://wordpress.iqonic.design/product/wp/streamit/',
                bypass: false,
                height: 800.0,
                verticalScroll: true,
                horizontalScroll: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
