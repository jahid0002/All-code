import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Button extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color colors;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  Button(
      {required this.btnName,
      this.icon,
      this.colors = Colors.blue,
      this.textStyle,
      this.callBack});

  @override
  Widget build(context) {
    return ElevatedButton(
        onPressed: () {
          callBack!();
        },
        child: icon != null
            ? Container(
              alignment: Alignment.center,
              height: 30,
              width: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 icon!,
                 Text(btnName,
                style:      textStyle
              )
                ],
              ),
            )
            : Text(
                btnName,
                style: textStyle,
                
              ),
              style: ElevatedButton.styleFrom(
                
                backgroundColor: colors,
                shadowColor: colors, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
              
              );
  }
}
