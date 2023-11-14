import 'package:flutter/material.dart';
import 'contact_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Contatos',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ContactListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ContactListPage extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(name: 'João', phoneNumber: '123456789', image: 'assets/man.png'),
    Contact(name: 'Maria', phoneNumber: '987654321', image: 'assets/woman.png'),
    Contact(name: 'Emerson', phoneNumber: '998703291', image: 'assets/man.png'),
    Contact(name: 'Claudio', phoneNumber: '927690768', image: 'assets/man.png'),
    Contact(name: 'Julia', phoneNumber: '991204462', image: 'assets/woman.png'),
    Contact(name: 'Rafael', phoneNumber: '999440231', image: 'assets/man.png'),
    Contact(name: 'Carol', phoneNumber: '927481048', image: 'assets/woman.png'),
    Contact(name: 'Arthur', phoneNumber: '918673404', image: 'assets/man.png'),
    Contact(name: 'Lucas', phoneNumber: '998723653', image: 'assets/man.png'),
    Contact(
        name: 'Ariane', phoneNumber: '947882365', image: 'assets/woman.png'),
    Contact(
        name: 'Camila', phoneNumber: '932857163', image: 'assets/woman.png'),
    Contact(name: 'Juliano', phoneNumber: '940857126', image: 'assets/man.png'),
    Contact(name: 'Carlos', phoneNumber: '999843726', image: 'assets/man.png'),
    Contact(
        name: 'Marina', phoneNumber: '911739472', image: 'assets/woman.png'),
    Contact(
        name: 'Cecilia', phoneNumber: '966328465', image: 'assets/woman.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contatos'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(contacts[index].image),
            ),
            title: Text(contacts[index].name),
            subtitle: Text(contacts[index].phoneNumber),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ContactDetailPage(contact: contacts[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Contact {
  final String name;
  final String phoneNumber;
  final String image;

  Contact({required this.name, required this.phoneNumber, required this.image});
}
