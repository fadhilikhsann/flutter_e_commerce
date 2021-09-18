import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl, storeName, chatPreview, lastChat;

  ChatTile({
    this.imageUrl = '',
    this.storeName = '',
    this.chatPreview = '',
    this.lastChat = '',
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(top: 12),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  imageUrl,
                  width: 54,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        storeName,
                        maxLines: 1,
                        style: primaryTextStyle.copyWith(fontSize: 15),
                      ),
                      Text(
                        chatPreview,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: secondaryTextStyle.copyWith(fontWeight: light),
                      ),
                    ],
                  ),
                ),
                Text(
                  lastChat,
                  style: secondaryTextStyle.copyWith(fontSize: 10),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1,
              color: Color(0xff2b2939),
            )
          ],
        ),
      ),
    );
  }
}
