import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:your_app_name/signup_page.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Back",
          style: TextStyle(
            color: Color(0xfff27d28),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    color: Color(0xfff27d28),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                LoginForm(),
                SizedBox(
                  height: 40,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 1,
                ),
                SizedBox(height: 20),
                Text(
                  "or login with",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/google_icon.svg',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.facebook),
                    SizedBox(width: 20),
                    Icon(Icons.apple),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignupPage.routeName);
                  },
                  child: Text.rich(
                    TextSpan(
                      text: "Don't have an account? ",
                      children: [
                        TextSpan(
                          text: "Signup",
                          style: TextStyle(
                            color: Color(0xfff27d28),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!value.contains("@")) {
                return 'Invalid email format';
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: "Email",
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: _passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              if (value.length < 8) {
                return 'Password must be at least 8 characters';
              }
              if (!value.contains(RegExp(r'[A-Za-z]')) ||
                  !value.contains(RegExp(r'[0-9]'))) {
                return 'Password must contain both letters and numbers';
              }
              return null;
            },
            obscureText: _obscureText,
            decoration: InputDecoration(
              hintText: "Password",
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.black),
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Checkbox(
                value: _rememberMe,
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value!;
                  });
                },
              ),
              Text(
                "Remember me",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  // Implement forgot password functionality
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Valid form, perform login functionality
                String email = _emailController.text;
                String password = _passwordController.text;

                // Add your login logic here

                print('Email: $email');
                print('Password: $password');
              }
            },
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xfff27d28),
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              minimumSize: Size(318, 46),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
