import 'package:cic/screens/productList_screen.dart';
import 'package:cic/screens/register_screen.dart';
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
        title: Text('Resgister'),
        centerTitle: false,
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
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.zero, // Removes border radius
                      ),
                    ),
                    child: Text('EXISTING MEMBER'),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      //  logic here
                      // Navigate to Existing Member Screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.zero, // Removes border radius
                      ),
                    ),
                    child: Text('NEW MEMBER'),
                  ),
                ),
              ],
            ),

            // New Center widget with small text
            SizedBox(height: 10), // Small spacing between the button and text
            Center(
              child: Text(
                'existsing member ',
                style: TextStyle(
                  fontSize: 10, // Small font size
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center, // Center align the text
              ),
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
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 16.0), // Add horizontal margin
                width: double.infinity, // Makes the button take the full width
                child: ElevatedButton(
                  onPressed: _registerExistingMember,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[900], // Register button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Removes border radius
                    ),
                  ),
                  child: Text(
                    'SIGNUP',
                    style:
                        TextStyle(color: Colors.white), // Makes the text white
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
