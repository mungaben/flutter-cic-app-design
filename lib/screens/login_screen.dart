import 'package:cic/screens/productList_screen.dart';
import 'package:flutter/material.dart';
import 'register_screen.dart'; // Import RegisterScreen

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;
  final TextEditingController _profileIdController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Function to handle login and print user input
  void _login() {
    String profileId = _profileIdController.text;
    String password = _passwordController.text;

    // Log the input values to the console
    print('Profile ID: $profileId');
    print('Password: $password');

    // Navigate to ProductScreen after login
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProductScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: false,
        backgroundColor: Color(0xFF9D162D), // Deep red color
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              // Company logo
              Image.asset(
                'assets/cic_group_image.png',
                height: 100,
                width: 100,
              ),
              SizedBox(height: 20),
              // Sign In banner
              Container(
                width: double.infinity,
                color: Color(0xFFFFC107), // Yellow banner background
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Sign In',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // ID/Passport Number Input Field
              TextField(
                controller: _profileIdController,
                decoration: InputDecoration(
                  labelText: 'Id/Passport Number',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              // Password Input Field
              TextField(
                controller: _passwordController,
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              // Register and Login buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFFC107), // Yellow color
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.zero, // Removes border radius
                        ),
                      ),
                      onPressed: () {
                        // Navigate to register screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()),
                        );
                      },
                      icon: Icon(Icons.person_add),
                      label: Text('REGISTER'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF9D162D), // Deep red color
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.zero, // Removes border radius
                        ),
                      ),
                      onPressed: _login, // Handle login
                      icon: Icon(Icons.lock),
                      label: Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.white), // Makes the text white
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Forgot Password button
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    // Handle forgot password logic
                  },
                  child: Text(
                    'FORGOT PASSWORD',
                    style: TextStyle(color: Color(0xFF9D162D)), // Deep red text
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Useful Links and Locate Us buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.zero, // Removes border radius
                        ),
                        side: BorderSide(
                            color: Color(0xFFFFC107)), // Yellow border
                      ),
                      onPressed: () {
                        // Handle Useful Links logic
                      },
                      icon: Icon(Icons.link, color: Color(0xFFFFC107)),
                      label: Text(
                        'USEFUL LINKS',
                        style: TextStyle(color: Color(0xFFFFC107)),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.zero, // Removes border radius
                        ),
                        side: BorderSide(
                            color: Color(0xFFFFC107)), // Yellow border
                      ),
                      onPressed: () {
                        // Handle Locate Us logic
                      },
                      icon: Icon(Icons.location_on, color: Color(0xFFFFC107)),
                      label: Text(
                        'LOCATE US',
                        style: TextStyle(color: Color(0xFFFFC107)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
