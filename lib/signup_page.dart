import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:email_validator/email_validator.dart';
import 'package:your_app_name/login_page.dart';

class SignupPage extends StatelessWidget {
  static const routeName = '/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.orange),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: MyForm(),
          ),
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Let's Get Started",
            style: TextStyle(
              color: Color(0xfff27d28),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Create an account to access the app",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: _firstNameController,
            decoration: InputDecoration(
              hintText: "First Name",
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your first name';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: _lastNameController,
            decoration: InputDecoration(
              hintText: "Last Name",
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your last name';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              hintText: "Email",
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!EmailValidator.validate(value)) {
                return 'Invalid email format';
              }
              return null;
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: _passwordController,
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
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: _confirmPasswordController,
            decoration: InputDecoration(
              hintText: "Confirm Password",
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please confirm your password';
              }
              if (value != _passwordController.text) {
                return 'Passwords do not match';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Perform signup functionality
                String firstName = _firstNameController.text;
                String lastName = _lastNameController.text;
                String email = _emailController.text;
                String password = _passwordController.text;
                String confirmPassword = _confirmPasswordController.text;

                // Add your signup logic here

                print('First Name: $firstName');
                print('Last Name: $lastName');
                print('Email: $email');
                print('Password: $password');
                print('Confirm Password: $confirmPassword');
              }
            },
            child: Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xfff27d28),
              minimumSize: Size(318, 46),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(height: 20),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 1,
          ),
          SizedBox(height: 20),
          Text(
            "or connect with",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
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
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, LoginPage.routeName);
            },
            child: Text(
              "Already have an account? Login",
              style: TextStyle(
                color: Color(0xfff27d28),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
