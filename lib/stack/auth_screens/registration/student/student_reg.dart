import 'package:flutter/material.dart';
import 'package:rentit/stack/auth_screens/verfiy_email.dart';

class StudentReg extends StatefulWidget {
  const StudentReg({super.key});

  @override
  _StudentRegState createState() => _StudentRegState();
}

class _StudentRegState extends State<StudentReg> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailAddressController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _institutionController = TextEditingController();
  bool _isStudent = false;
  bool _acceptTerms = false;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      if (!_acceptTerms) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text("Please accept the terms and conditions.")),
        );
        return;
      }
      // Process the form submission
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Form submitted successfully!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up Renter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _firstNameController,
                decoration: const InputDecoration(labelText: "First Name"),
                validator: (value) =>
                    value!.isEmpty ? "Please enter your first name" : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _lastNameController,
                decoration: const InputDecoration(labelText: "Last Name"),
                validator: (value) =>
                    value!.isEmpty ? "Please enter your last name" : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailAddressController,
                decoration: const InputDecoration(labelText: "Email Address"),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your email address";
                  }
                  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                  if (!emailRegex.hasMatch(value)) {
                    return "Please enter a valid email address";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _mobileNumberController,
                decoration: const InputDecoration(labelText: "Mobile Number"),
                keyboardType: TextInputType.phone,
                validator: (value) =>
                    value!.isEmpty ? "Please enter your mobile number" : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: "Password"),
                obscureText: true,
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a password";
                  } else if (value.length < 6) {
                    return "Password must be at least 6 characters long";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: "Confirm Password"),
                obscureText: true,
                controller: _confirmPasswordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please confirm your password";
                  } else if (value != _passwordController.text) {
                    return "Passwords do not match";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Visibility(
                visible: _isStudent,
                child: TextFormField(
                  controller: _institutionController,
                  decoration: const InputDecoration(labelText: "institution"),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Input Institution";
                    }
                    return null;
                  },
                ),
              ),
              CheckboxListTile(
                title: const Text("Are you a student?"),
                value: _isStudent,
                onChanged: (value) {
                  setState(() {
                    _isStudent = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text("I agree to the terms and conditions"),
                value: _acceptTerms,
                onChanged: (value) {
                  setState(() {
                    _acceptTerms = value!;
                  });
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text("Submit"),
              ),
              ElevatedButton(
                onPressed: () {
                  final _route =
                      MaterialPageRoute(builder: (_) => VerfiyEmail());
                  Navigator.push(context, _route);
                },
                child: const Text("navigate"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
