
import 'package:diagnos_ai/OnBoarding/View/widget.dart';
import 'package:diagnos_ai/screens/Authentication/LogIn/build_logo_section.dart';
import 'package:diagnos_ai/screens/Authentication/LogIn/custom_input_field.dart';
import 'package:diagnos_ai/screens/Authentication/LogIn/custom_phone_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _selectedType = 'email';
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _selectedCountryCode = '+966';

  bool isPasswordVisible = true;
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111317),
      body: Stack(
        children: [
          // Background Glows
          Positioned(
            top: -100,
            right: -100,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [const Color(0xFF00D2FF).withOpacity(0.15), Colors.transparent],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -150,
            left: -100,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [const Color(0xFFEDB1FF).withOpacity(0.10), Colors.transparent],
                ),
              ),
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Form(
                key: _formKey,

                autovalidateMode: AutovalidateMode.onUnfocus,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    BuildLogoSection(),
                    const SizedBox(height: 50),
                    _buildLoginCard(),
                    const SizedBox(height: 40),
                    _buildBottomHint(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildLoginCard() {
    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1C1F),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withOpacity(0.08)),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 30, offset: const Offset(0, 10))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Access Your Lab', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
          const SizedBox(height: 4),
          Container(width: 48, height: 3, decoration: BoxDecoration(color: const Color(0xFF00D2FF), borderRadius: BorderRadius.circular(2))),

          const SizedBox(height: 32),

          Row(
            children: [
              _buildTypeButton('Email', Icons.email_outlined, _selectedType == 'email', () {
                setState(() => _selectedType = 'email');
              }),
              const SizedBox(width: 12),
              _buildTypeButton('Phone', Icons.phone_outlined, _selectedType == 'phone', () {
                setState(() => _selectedType = 'phone');
              }),
            ],
          ),

          const SizedBox(height: 24),

          // الحقل الديناميكي
          if (_selectedType == 'email')

    CustomInputField(
      label: 'Email Address',
      hint: 'example@labsync.com',
      icon: Icons.email_outlined,
      controller: _emailController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Email is required';
        }
        if (!value.contains('@')) {
          return 'Invalid email';
        }
        return null;
      },
    )

          else

          CustomPhoneField(
            controller: _phoneController,
            selectedCountryCode: _selectedCountryCode,
            onCountryChanged: (code) {
              setState(() {
                _selectedCountryCode = code;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Phone number required';
              }
              if (value.length < 7) {
                return 'Invalid phone number';
              }
              return null;
            },
          ),

          const SizedBox(height: 24),


          CustomInputField(
            label: 'Access Cipher',
            hint: '••••••••••••',
            icon: Icons.lock_outline,
            controller: _passwordController,
            isPassword: true,


             isPasswordVisible: isPasswordVisible,
            onTogglePassword: () {
              setState(() {
                isPasswordVisible = !isPasswordVisible;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password required';
              }
              if (value.length < 6) {
                return 'Min 6 characters';
              }
              return null;
            },
          ),

          const SizedBox(height: 8),

          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text('Forgot Password?', style: TextStyle(color: Color(0xFFEDB1FF), fontSize: 13)),
            ),
          ),

          const SizedBox(height: 32),

          // Login Button
          SizedBox(
            width: double.infinity,
            height: 58,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00D2FF),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              ),
              child: const Text('EXECUTE LOGIN', style: TextStyle(color:Colors.white, fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1.5)),
            ),
          ),

          const SizedBox(height: 24),

          GestureDetector(
            onTap: () {

              context.go('/PatientRegistrationScreen');

            },



            child: Center(
              child: RichText(

                text: const TextSpan(
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                  children: [
                    TextSpan(text: "Don't have an account? ",style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,wordSpacing: 1,fontSize: 14),),
                    TextSpan(text: 'Sign Up', style: TextStyle(color: Color(0xFF00D2FF), fontWeight: FontWeight.bold,fontSize: 14)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTypeButton(String text, IconData icon, bool isSelected, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xFF00D2FF) : const Color(0xFF1E2023),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: isSelected ? Colors.black : Colors.white, size: 20),
              const SizedBox(width: 8),
              Text(text, style: TextStyle(color: isSelected ? Colors.black : Colors.white, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildBottomHint() {
    return const Text(
      'SECURE LINK ESTABLISHED • v4.0.21-alpha',
      style: TextStyle(fontSize: 11, color: Colors.grey, letterSpacing: 2),
    );
  }
}

