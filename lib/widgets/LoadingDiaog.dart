import 'package:flutter/material.dart';

class LoadingDialog {
  late BuildContext context;

  LoadingDialog(this.context);
  Future<void> startLoading() async {
    return await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const SimpleDialog(
          elevation: 0.0,
          backgroundColor: Colors.transparent, // can change this to your prefered color
          children: <Widget>[
            Center(
              child: CircularProgressIndicator(),
            )
          ],
        );
      },
    );
  }

  Future<void> stopLoading() async {
    Navigator.of(context).pop();
  }
  // Future<void> showError(Object? error) async {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       action: SnackBarAction(
  //         label: 'Dismiss',
  //         onPressed: () {
  //           ScaffoldMessenger.of(context).hideCurrentSnackBar();
  //         },
  //       ),
  //       backgroundColor: Colors.red,
  //       content: Text(handleError(error)),
  //     ),
  //   );
  // }
}
