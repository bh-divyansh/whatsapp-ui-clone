import 'package:flutter/material.dart';

class ChatRow extends StatelessWidget {
  ChatRow({
    Key? key,
    required this.personName,
    required this.personMessage,
    required this.time,
    required this.unreadCount,
  }) : super(key: key);

  String personName;
  String personMessage;
  String time;
  int unreadCount;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 9),
            child: CircleAvatar(
              radius: 32,
              backgroundColor: Colors.blueGrey,
              foregroundImage: AssetImage('assets/sampul.png'),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    personName,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      personMessage,
                      style:
                          TextStyle(fontSize: 16, color: Colors.blueGrey[400]),
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                time,
                style: TextStyle(fontSize: 16, color: Colors.blueGrey[400]),
              ),
              // UnreadCount(),
            ],
          )
        ],
      ),
    );
  }
}
//
// class UnreadCount extends StatelessWidget {
//   const UnreadCount({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     if (unreadCount >= 0) {
//       return SizedBox(
//         width: 5,
//         height: 5,
//       );
//     } else {
//       return SizedBox(
//         width: 5,
//         height: 5,
//       );
//     }
//   }
// }
