import 'package:flutter/material.dart';
import 'main.dart';
import 'widgets/chat-row.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ChatRow(
          personName: 'Phillip Matthews',
          personMessage: 'Hehe kya haal chaal',
          time: '12:00 AM',
          unreadCount: 0,
        ),
        ChatRow(
          personName: 'John Paul',
          personMessage: 'Aur sunao?',
          time: '12:00 AM',
          unreadCount: 0,
        ),
        ChatRow(
          personName: 'Trevor Jones',
          personMessage: 'bas badhiya',
          time: '12:00 AM',
          unreadCount: 0,
        ),
        ChatRow(
          personName: 'Michael Townly',
          personMessage: 'Kaise ho yaar',
          time: '12:00 AM',
          unreadCount: 0,
        ),
        ChatRow(
          personName: 'Franklin Clinton',
          personMessage: 'aajkal kahan ?',
          time: '12:00 AM',
          unreadCount: 0,
        ),
        ChatRow(
          personName: 'Donald Trump',
          personMessage: 'free hoke call karna',
          time: '12:00 AM',
          unreadCount: 0,
        ),
        ChatRow(
          personName: 'Barack Obama',
          personMessage: 'baaki sab kaise hain?',
          time: '12:00 AM',
          unreadCount: 0,
        ),
        ChatRow(
          personName: 'Salman Khan',
          personMessage: 'aur sab theek??',
          time: '12:00 AM',
          unreadCount: 0,
        ),
        ChatRow(
          personName: 'Joe Biden',
          personMessage: 'aao milo kabhi humse bhi',
          time: '12:00 AM',
          unreadCount: 0,
        ),
        ChatRow(
          personName: 'Moodi ji',
          personMessage: 'kya haal chaal',
          time: '12:00 AM',
          unreadCount: 0,
        ),
        ChatRow(
          personName: 'Zatharos',
          personMessage: 'XD',
          time: '12:00 AM',
          unreadCount: 0,
        ),
        ChatRow(
          personName: 'Tony Spaghetti',
          personMessage: 'how are u?',
          time: '12:00 AM',
          unreadCount: 0,
        ),
        ChatRow(
          personName: 'Shah ji',
          personMessage: 'kaise ho??',
          time: '12:00 AM',
          unreadCount: 0,
        ),
        ChatRow(
          personName: 'Putina',
          personMessage: 'whats up?',
          time: '12:00 AM',
          unreadCount: 0,
        ),
        ChatRow(
          personName: 'Paul Jane',
          personMessage: 'kya haal hai?',
          time: '12:00 AM',
          unreadCount: 0,
        ),
      ],
    );
  }
}
