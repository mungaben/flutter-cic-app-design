import 'package:cic/screens/existingMemberRegistration_screen.dart';
import 'package:cic/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class ModalDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('MURAYA KAMAU ERIC'),
          accountEmail: null,
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              size: 50,
              color: Colors.red[900],
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.yellow[700],
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('My Account'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ExistingMemberScreen()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.receipt),
          title: Text('Statement'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OnboardingScreen()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.show_chart),
          title: Text('Trends'),
          onTap: () {
            // Add navigation logic here later
          },
        ),
        ListTile(
          leading: Icon(Icons.event),
          title: Text('Events'),
          onTap: () {
            // Add navigation logic here later
          },
        ),
        ListTile(
          leading: Icon(Icons.calculate),
          title: Text('Pension Calculator'),
          onTap: () {
            // Add navigation logic here later
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.share),
          title: Text('Invite a Friend'),
          onTap: () {
            // Add navigation logic here later
          },
        ),
        ListTile(
          leading: Icon(Icons.help_outline),
          title: Text('Help'),
          onTap: () {
            // Add navigation logic here later
          },
        ),
        ListTile(
          leading: Icon(Icons.location_on),
          title: Text('Locate Us'),
          onTap: () {
            // Add navigation logic here later
          },
        ),
        ListTile(
          leading: Icon(Icons.link),
          title: Text('Useful Links'),
          onTap: () {
            // Add navigation logic here later
          },
        ),
      ],
    );
  }
}
