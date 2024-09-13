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

    // Here you would typically add login validation and authentication logic

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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // Added SingleChildScrollView here
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/cic_group_image.png',
                height: 100,
                width: 100,
              ),
              SizedBox(height: 20),
              // Profile ID Input Field
              TextField(
                controller: _profileIdController, // Attach controller
                decoration: InputDecoration(
                  labelText: 'Profile ID',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 10),
              // Password Input Field
              TextField(
                controller: _passwordController, // Attach controller
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
                ),
              ),
              SizedBox(height: 20),
              // Login and Register buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: _login, // Handle login logic and print input
                    icon: Icon(Icons.login),
                    label: Text('Login'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Navigate to RegisterScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );
                    },
                    icon: Icon(Icons.app_registration),
                    label: Text('Register'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(),
              // Forgot password button
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    // Handle forgot password logic
                  },
                  child: Text('Forgot Password?'),
                ),
              ),
              SizedBox(height: 20), // Added extra spacing
              // Locate Us and Useful Links buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      // Handle locate us logic
                    },
                    icon: Icon(Icons.location_on),
                    label: Text('Locate Us'),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      // Handle useful links logic
                    },
                    icon: Icon(Icons.link),
                    label: Text('Useful Links'),
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
