import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.emailAddressLoginController ??= TextEditingController();
    _model.emailAddressLoginFocusNode ??= FocusNode();

    _model.passwordLoginController ??= TextEditingController();
    _model.passwordLoginFocusNode ??= FocusNode();

    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    _model.passwordConfirmController ??= TextEditingController();
    _model.passwordConfirmFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF14181B),
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: Color(0xFF14181B),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.network(
                'https://images.unsplash.com/photo-1525824236856-8c0a31dfe3be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8d2F0ZXJmYWxsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
              ).image,
            ),
          ),
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: Color(0x990F1113),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment(0.0, 0),
                          child: FlutterFlowButtonTabBar(
                            useToggleButtonStyle: false,
                            isScrollable: true,
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF0F1113),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            unselectedLabelStyle: TextStyle(),
                            labelColor: Colors.white,
                            borderWidth: 0.0,
                            borderRadius: 0.0,
                            elevation: 0.0,
                            tabs: [
                              Tab(
                                text: 'Sign In',
                              ),
                              Tab(
                                text: 'Sign Up',
                              ),
                            ],
                            controller: _model.tabBarController,
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    44.0, 0.0, 44.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: TextFormField(
                                          controller: _model
                                              .emailAddressLoginController,
                                          focusNode:
                                              _model.emailAddressLoginFocusNode,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Email Address',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF95A1AC),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF95A1AC),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 24.0, 20.0, 24.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF0F1113),
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          validator: _model
                                              .emailAddressLoginControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: TextFormField(
                                          controller:
                                              _model.passwordLoginController,
                                          focusNode:
                                              _model.passwordLoginFocusNode,
                                          obscureText:
                                              !_model.passwordLoginVisibility,
                                          decoration: InputDecoration(
                                            labelText: 'Password',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF95A1AC),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF95A1AC),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 24.0, 20.0, 24.0),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => _model
                                                        .passwordLoginVisibility =
                                                    !_model
                                                        .passwordLoginVisibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                _model.passwordLoginVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color: Color(0xFF95A1AC),
                                                size: 20.0,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF0F1113),
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          validator: _model
                                              .passwordLoginControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 24.0, 0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            GoRouter.of(context)
                                                .prepareAuthEvent();

                                            final user = await authManager
                                                .signInWithEmail(
                                              context,
                                              _model.emailAddressLoginController
                                                  .text,
                                              _model
                                                  .passwordLoginController.text,
                                            );
                                            if (user == null) {
                                              return;
                                            }

                                            context.goNamedAuth(
                                                'HomePage', context.mounted);
                                          },
                                          text: 'Login',
                                          options: FFButtonOptions(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFF39D2C0),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Colors.white,
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('forgotPassword');
                                          },
                                          text: 'Forgot Password?',
                                          options: FFButtonOptions(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0x0039D2C0),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color: Colors.white,
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                            elevation: 0.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 0.0),
                                              child: Text(
                                                'Or use a social account to login',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xC8FFFFFF),
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 50.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF0F1113),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 5.0,
                                                    color: Color(0x3314181B),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                shape: BoxShape.circle,
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: FaIcon(
                                                FontAwesomeIcons.google,
                                                color: Colors.white,
                                                size: 24.0,
                                              ),
                                            ),
                                            Container(
                                              width: 50.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF0F1113),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 5.0,
                                                    color: Color(0x3314181B),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                shape: BoxShape.circle,
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: FaIcon(
                                                FontAwesomeIcons.facebookF,
                                                color: Colors.white,
                                                size: 24.0,
                                              ),
                                            ),
                                            Container(
                                              width: 50.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF0F1113),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 5.0,
                                                    color: Color(0x3314181B),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                shape: BoxShape.circle,
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: Icon(
                                                Icons.phone_sharp,
                                                color: Colors.white,
                                                size: 24.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    44.0, 0.0, 44.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: TextFormField(
                                          controller:
                                              _model.emailAddressController,
                                          focusNode:
                                              _model.emailAddressFocusNode,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Email Address',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color: Color(0xFF57636C),
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF95A1AC),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 24.0, 20.0, 24.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF14181B),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          validator: _model
                                              .emailAddressControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: TextFormField(
                                          controller: _model.passwordController,
                                          focusNode: _model.passwordFocusNode,
                                          obscureText:
                                              !_model.passwordVisibility,
                                          decoration: InputDecoration(
                                            labelText: 'Password',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color: Color(0xFF57636C),
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF95A1AC),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 24.0, 20.0, 24.0),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => _model
                                                        .passwordVisibility =
                                                    !_model.passwordVisibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                _model.passwordVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color: Color(0xFF95A1AC),
                                                size: 20.0,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF14181B),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          validator: _model
                                              .passwordControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: TextFormField(
                                          controller:
                                              _model.passwordConfirmController,
                                          focusNode:
                                              _model.passwordConfirmFocusNode,
                                          obscureText:
                                              !_model.passwordConfirmVisibility,
                                          decoration: InputDecoration(
                                            labelText: 'Confirm Password',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color: Color(0xFF57636C),
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF95A1AC),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 24.0, 20.0, 24.0),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => _model
                                                        .passwordConfirmVisibility =
                                                    !_model
                                                        .passwordConfirmVisibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                _model.passwordConfirmVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color: Color(0xFF95A1AC),
                                                size: 20.0,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF14181B),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          validator: _model
                                              .passwordConfirmControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 24.0, 0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            GoRouter.of(context)
                                                .prepareAuthEvent();
                                            if (_model
                                                    .passwordController.text !=
                                                _model.passwordConfirmController
                                                    .text) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Passwords don\'t match!',
                                                  ),
                                                ),
                                              );
                                              return;
                                            }

                                            final user = await authManager
                                                .createAccountWithEmail(
                                              context,
                                              _model
                                                  .emailAddressController.text,
                                              _model.passwordController.text,
                                            );
                                            if (user == null) {
                                              return;
                                            }

                                            context.goNamedAuth(
                                                'HomePage', context.mounted);
                                          },
                                          text: 'Create Account',
                                          options: FFButtonOptions(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFF39D2C0),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Colors.white,
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 20.0, 20.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 0.0),
                                                child: Text(
                                                  'Or use a social account to create account',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xC8FFFFFF),
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 50.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF0F1113),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 5.0,
                                                    color: Color(0x3314181B),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                shape: BoxShape.circle,
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: FaIcon(
                                                FontAwesomeIcons.google,
                                                color: Colors.white,
                                                size: 24.0,
                                              ),
                                            ),
                                            Container(
                                              width: 50.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF0F1113),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 5.0,
                                                    color: Color(0x3314181B),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                shape: BoxShape.circle,
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: FaIcon(
                                                FontAwesomeIcons.facebookF,
                                                color: Colors.white,
                                                size: 24.0,
                                              ),
                                            ),
                                            Container(
                                              width: 50.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF0F1113),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 5.0,
                                                    color: Color(0x3314181B),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                shape: BoxShape.circle,
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: Icon(
                                                Icons.phone_sharp,
                                                color: Colors.white,
                                                size: 24.0,
                                              ),
                                            ),
                                          ],
                                        ),
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
