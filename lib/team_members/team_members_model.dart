import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/mobile_nav_widget.dart';
import '/components/noteammates_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TeamMembersModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  void dispose() {
    mobileNavModel.dispose();
  }

  /// Additional helper methods are added here.

}
