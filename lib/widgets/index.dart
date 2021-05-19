import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IndexBlock extends StatefulWidget {
  final Widget topWidget;
  final int value;
  final Widget bottomWidget;
  const IndexBlock({Key key, this.topWidget, this.value, this.bottomWidget}) : super(key: key);
  @override
  _IndexBlockState createState() => _IndexBlockState();
}

class _IndexBlockState extends State<IndexBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.topWidget,
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.value.toString(),
                  style: TextStyle(
                    color: Color(0xff8a9fae),
                    fontSize: 20
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.bottomWidget
            ],
          )
        ],
      ),
    );
  }
}
