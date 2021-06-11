import 'package:flutter/material.dart';

class ContentContainer extends StatelessWidget {
  final double height;
  final Widget child;
  const ContentContainer({Key key, this.child, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: Color(0xff083654),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Color(0xff083654),
              blurRadius: 2
          )
        ],
      ),
      child: child,
    );
  }
}
