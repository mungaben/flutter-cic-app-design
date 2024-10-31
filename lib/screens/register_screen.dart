// lib/screens/register_screen.dart
import 'package:cic/screens/existingMemberRegistration_screen.dart';
import 'package:cic/screens/productList_screen.dart';
import 'package:flutter/material.dart';
import 'package:cic/services/registration_service.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final RegistrationService _registrationService = RegistrationService();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _referralController = TextEditingController();
  bool _obscurePassword = true;

  // Refactored Function to Handle Registration with API Call
  Future<void> _registerNewMember() async {
    final bool isSuccess = await _registrationService.registerUser(
      firstName: _firstNameController.text,
      middleName: _middleNameController.text,
      lastName: _lastNameController.text,
      id: _idController.text,
      email: _emailController.text,
      mobile: _mobileController.text,
      referralCode: _referralController.text,
    );

    if (isSuccess) {
      // Navigate to ProductScreen on success
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ProductScreen()),
      );
    } else {
      // Show error if registration fails
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Registration failed. Please try again.")),
      );
    }
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExistingMemberScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: Text('EXISTING MEMBER'),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Stay on the current screen
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
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
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _registerNewMember,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[900],
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: const Text(
                    'REGISTER',
                    style: TextStyle(color: Colors.white),
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
