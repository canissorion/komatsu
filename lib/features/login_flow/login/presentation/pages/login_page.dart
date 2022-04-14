// ignore_for_file: constant_identifier_names, always_declare_return_types, type_annotate_public_apis

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:msal_mobile/msal_mobile.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const String SCOPE =
      'api://8dc52a5c-4af1-4e1a-b06a-429233d8d57c/user_impersonation';
  static const String TENANT_ID = 'organizations';
  static String authority = "https://login.microsoftonline.com/$TENANT_ID";

  late MsalMobile msal;
  bool isSignedIn = false;

  @override
  void initState() {
    super.initState();
    MsalMobile.create('assets/json/auth_config.json', authority).then((client) {
      setState(() {
        msal = client;
      });
      refreshSignedInStatus();
    });
  }

  /// Updates the signed in state
  refreshSignedInStatus() {
    msal.getSignedIn().then((loggedIn) {
      print('refreshing');
      setState(() {
        isSignedIn = loggedIn;
      });
    });
  }

  logMsalMobileError(MsalMobileException exception) {
    print('${exception.errorCode}: ${exception.message}');
    if (exception.innerException != null) {
      print(
          'inner exception = ${exception.innerException!.errorCode}: ${exception.innerException!.message}');
    }
  }

  /// Signs a user in
  handleSignIn() async {
    await msal.signIn('', [SCOPE]).then((result) {
      refreshSignedInStatus();
    }).catchError((exception) {
      if (exception is MsalMobileException) {
        logMsalMobileError(exception);
      } else {
        final ex = exception as Exception;
        print('exception occurred');
        print(ex.toString());
      }
    });
  }

  /// Gets a token silently unless the interactive experience is required.
  handleGetToken() async {
    // you would use this instead to auth for all organizations: "https://login.microsoftonline.com/common"
    await msal.acquireToken([SCOPE], authority).then((result) {
      print('access token (truncated): ${result!.accessToken}');
    }).catchError((exception) {
      if (exception is MsalMobileException) {
        logMsalMobileError(exception);
      } else {
        print('exception occurred');
      }
    });
  }

  /// Get a token interactively.
  handleGetTokenInteractively() async {
    await msal.acquireTokenInteractive([SCOPE]).then((result) {
      print('access token (truncated): ${result!.accessToken}');
    }).catchError((exception) {
      if (exception is MsalMobileException) {
        logMsalMobileError(exception);
      } else {
        final ex = exception as Exception;
        print('exception occurred');
        print(ex.toString());
      }
    });
  }

  /// Gets a token silently.
  handleGetTokenSilently() async {
    String authority = "https://login.microsoftonline.com/$TENANT_ID";
    // you would use this instead to auth for all organizations: "https://login.microsoftonline.com/common"
    await msal.acquireTokenSilent([SCOPE], authority).then((result) {
      print('access token (truncated): ${result!.accessToken}');
      log(result.accessToken!);
    }).catchError((exception) {
      if (exception is MsalMobileException) {
        logMsalMobileError(exception);
      } else {
        print('exception occurred');
      }
    });
  }

  /// Signs a user out.
  handleSignOut() async {
    try {
      print('signing out');
      await msal.signOut();
      print('signout done');
      refreshSignedInStatus();
    } on MsalMobileException catch (exception) {
      logMsalMobileError(exception);
    }
  }

  /// Gets the current and prior accounts.
  handleGetAccount() async {
    await msal.getAccount().then((result) {
      if (result!.currentAccount != null) {
        print(
            'current account id: ${result.currentAccount!.id} ${result.currentAccount!.claims}');
      } else {
        print('no account found');
      }
    }).catchError((exception) {
      if (exception is MsalMobileException) {
        logMsalMobileError(exception);
      } else {
        print('exception occurred');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MSAL Mobile'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              isSignedIn
                  ? RaisedButton(
                      child: Text("Sign Out"),
                      onPressed: handleSignOut,
                    )
                  : RaisedButton(
                      child: Text("Sign In"),
                      onPressed: handleSignIn,
                    ),
              RaisedButton(
                child: Text("Get Token (Silent unless UI needed)"),
                onPressed: handleGetToken,
              ),
              RaisedButton(
                child: Text("Get Token Interactive"),
                onPressed: handleGetTokenInteractively,
              ),
              RaisedButton(
                child: Text("Get Token Silent"),
                onPressed: handleGetTokenSilently,
              ),
              RaisedButton(
                child: Text("Get Account"),
                onPressed: handleGetAccount,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
