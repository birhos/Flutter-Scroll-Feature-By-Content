import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function openPage;

  CustomButton({
    this.buttonText,
    this.openPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6.copyWith(),
        ),
        padding: EdgeInsets.all(10.0),
        color: Color.fromARGB(255, 254, 195, 56),
        highlightColor: Colors.redAccent,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
        elevation: 2.0,
        onPressed: openPage,
      ),
    );
  }
}
