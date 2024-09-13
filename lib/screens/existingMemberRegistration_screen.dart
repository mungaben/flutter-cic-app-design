import 'package:cic/screens/productList_screen.dart';
import 'package:flutter/material.dart';

class ExistingMemberScreen extends StatefulWidget {
  @override
  _ExistingMemberScreenState createState() => _ExistingMemberScreenState();
}

class _ExistingMemberScreenState extends State<ExistingMemberScreen> {
  final TextEditingController _memberNumberController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _referralController = TextEditingController();

  void _registerExistingMember() {
    final String memberNumber = _memberNumberController.text;
    final String id = _idController.text;
    final String referralCode = _referralController.text;

    // Log the existing member info
    print('Member Number: $memberNumber');
    print('ID/Passport: $id');
    print('Referral Code: $referralCode');

    // Navigate to Product Screen after registration
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProductScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Existing Member Registration'),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    child: Text('EXISTING MEMBER'),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to Existing Member Screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExistingMemberScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    child: Text('NEW MEMBER'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Member Number
            TextField(
              controller: _memberNumberController,
              decoration: InputDecoration(
                labelText: 'Member Number',
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),

            // ID/Passport Number
            TextField(
              controller: _idController,
              decoration: InputDecoration(
                labelText: 'Id/Passport Number',
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),

            // Referral Code
            TextField(
              controller: _referralController,
              decoration: InputDecoration(
                labelText: 'Referral Code',
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Register button
            Center(
              child: ElevatedButton(
                onPressed: _registerExistingMember,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[900], // Signup button color
                ),
                child: Text('SIGNUP'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
