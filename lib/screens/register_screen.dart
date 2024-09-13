import 'package:cic/screens/existingMemberRegistration_screen.dart';
import 'package:cic/screens/productList_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _referralController = TextEditingController();
  bool _obscurePassword = true;

  // Function to handle New Member Registration
  void _registerNewMember() {
    final String firstName = _firstNameController.text;
    final String middleName = _middleNameController.text;
    final String lastName = _lastNameController.text;
    final String id = _idController.text;
    final String email = _emailController.text;
    final String mobile = _mobileController.text;
    final String referralCode = _referralController.text;

    // Log the registration info
    print('First Name: $firstName');
    print('Middle Name: $middleName');
    print('Last Name: $lastName');
    print('ID/Passport: $id');
    print('Email: $email');
    print('Mobile: $mobile');
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
        title: Text('Register'),
        centerTitle: false,
        backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Existing Member & New Member buttons
            Row(
              children: [
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
                      // Stay on the current New Member Registration screen
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
            SizedBox(height: 20),
            Center(
              child: Text(
                'New Member Registration',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),

            // First Name
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(
                labelText: 'First Name',
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),

            // Middle Name
            TextField(
              controller: _middleNameController,
              decoration: InputDecoration(
                labelText: 'Middle Name',
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),

            // Last Name
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(
                labelText: 'Last Name',
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

            // Email
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),

            // Mobile Number
            TextField(
              controller: _mobileController,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),

            // Referral Code
            TextField(
              controller: _referralController,
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                labelText: 'Referral Code',
                border: UnderlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
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
                  onPressed: _registerNewMember,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[900], // Register button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Removes border radius
                    ),
                  ),
                  child: Text(
                    'REGISTER',
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
