import 'package:flutter/material.dart';

import 'main.dart';

class ContactDetailPage extends StatelessWidget {
  final Contact contact;

  ContactDetailPage({required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contact.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(contact.image),
              radius: 50,
            ),
            SizedBox(height: 20),
            Text(
              'Telefone: ${contact.phoneNumber}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
