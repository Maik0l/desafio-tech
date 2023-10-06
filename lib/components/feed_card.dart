import 'package:flutter/material.dart';
import 'package:desafio_tech/classes/feed.dart';

class FeedCard extends StatelessWidget {
  final Feed feed;
  final String name;
  FeedCard({required this.feed, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('./assets/predio.jpg'),
                radius: 20.0,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      Text(
                        feed.name,
                        style: TextStyle(
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: Icon(
                          Icons.verified_rounded,
                          size: 16.0,
                          color: Colors.amber[600],
                        ),
                        margin: EdgeInsets.fromLTRB(3.0, 0.0, 3.0, 0.0),
                      ),
                      Text(
                        '${feed.username} ${'•'} ${feed.date}',
                        style: TextStyle(
                            fontFamily: "OpenSans",
                            fontSize: 11.0,
                            color: Colors.grey),
                      ),
                      Container(
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                        ),
                        margin: EdgeInsets.only(left: 18.0),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 80.0,
                  width: 270.0,
                  child: Text(
                    feed.message,
                    style: TextStyle(fontFamily: "OpenSans"),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.messenger_outline_rounded,
              color: Colors.grey,
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                feed.comments,
                style: TextStyle(fontFamily: "OpenSans", color: Colors.grey),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
