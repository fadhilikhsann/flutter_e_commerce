import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme.dart';
import 'package:shamo_flutter/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
              vertical: defaultMargin - 12,
            ),
            children: [
              ChatTile(
                imageUrl: 'assets/image_shop_logo.png',
                storeName: 'Adidas Store',
                chatPreview: 'Good night! This item is on ...',
                lastChat: 'Now',
              ),
              ChatTile(
                imageUrl: 'assets/image_shop_logo.png',
                storeName: 'Nike Store',
                chatPreview: 'Good morning! This item is on ...',
                lastChat: '3 minutes',
              ),
            ],
          ),
        ),
      );
    }

    Widget emptyChat() {
      return Expanded(
          child: Container(
        width: double.infinity,
        color: backgroundColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_headset.png',
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Opss, no message yet?',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'You have never done a transaction',
              style: secondaryTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 44,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 96,
            ),
          ],
        ),
      ));
    }

    return Column(
      children: [
        header(),
        // emptyChat(),
        content(),
      ],
    );
  }
}
