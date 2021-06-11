import 'package:flutter/material.dart';

class MessageItem extends StatefulWidget {
  const MessageItem({Key key, this.imageSrc, this.userName, this.reviewContent}) : super(key: key);
  final String imageSrc;
  final String userName;
  final String reviewContent;

  @override
  _MessageItemState createState() => _MessageItemState();
}

class _MessageItemState extends State<MessageItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10, right: 5, left: 5),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: Colors.white,
                width: 2
            )
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  (widget.imageSrc != null)? widget.imageSrc: 'lib/resource/user.png',
                  fit: BoxFit.fill,
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          (widget.userName != null)? widget.userName: "Valeria's User",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, right: 15, left: 15, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 180,
                            child: Text(
                              (widget.reviewContent != null)? widget.reviewContent: "Something went wrong !",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.white70
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
