import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Token1Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for cryptoSelect widget.
  String? cryptoSelectValue;
  // State field(s) for WalletAdrress widget.
  TextEditingController? walletAdrressController;
  String? Function(BuildContext, String?)? walletAdrressControllerValidator;
  // State field(s) for Balance widget.
  TextEditingController? balanceController;
  String? Function(BuildContext, String?)? balanceControllerValidator;
  // State field(s) for packageSelect widget.
  String? packageSelectValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    walletAdrressController?.dispose();
    balanceController?.dispose();
  }

  /// Additional helper methods are added here.

}
