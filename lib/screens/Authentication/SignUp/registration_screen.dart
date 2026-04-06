import 'package:flutter/material.dart';

class PatientRegistrationScreen extends StatefulWidget {
  const PatientRegistrationScreen({super.key});

  @override
  State<PatientRegistrationScreen> createState() => _PatientRegistrationScreenState();
}

class _PatientRegistrationScreenState extends State<PatientRegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nationalIdController = TextEditingController();

  String _selectedGender = 'Male';
  double _weight = 75.0;

  @override
  void dispose() {
    _phoneController.dispose();
    _emailController.dispose();
    _nationalIdController.dispose();
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
            top: -150,
            right: -100,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [const Color(0xFF00D2FF).withOpacity(0.12), Colors.transparent],
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
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    _buildHeader(),

                    const SizedBox(height: 40),

                    // Hero Title
                    const Text(
                      "INITIALIZE",
                      style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    ),
                    const Text(
                      "NODE",
                      style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF00D2FF),
                        letterSpacing: 2,
                      ),
                    ),

                    const SizedBox(height: 8),
                    const Text(
                      "Synchronize your biological profile with our distributed clinical laboratory network.",
                      style: TextStyle(fontSize: 15, color: Colors.grey, height: 1.5),
                    ),

                    const SizedBox(height: 40),

                    // Form Card
                    Container(
                      padding: const EdgeInsets.all(28),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1A1C1F),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: Colors.white.withOpacity(0.08)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 30,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          _buildPhoneField(),
                          const SizedBox(height: 24),
                          _buildEmailField(),
                          const SizedBox(height: 24),
                          _buildNationalIdField(),
                          const SizedBox(height: 24),
                          _buildGenderField(),
                          const SizedBox(height: 32),
                          _buildWeightSlider(),
                          const SizedBox(height: 40),

                          // Initialize Button
                          SizedBox(
                            width: double.infinity,
                            height: 62,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // TODO: Handle registration
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Node Initialized Successfully')),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF00D2FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                elevation: 0,
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.power_settings_new, color: Colors.black),
                                  SizedBox(width: 12),
                                  Text(
                                    'INITIALIZE NODE',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 40),

                    // Footer Link
                    Center(
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                          children: [
                            TextSpan(text: "Existing node detected? "),
                            TextSpan(
                              text: "Access Terminal",
                              style: TextStyle(
                                color: Color(0xFFEDB1FF),
                                fontWeight: FontWeight.bold,
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
        ],
      ),
    );
  }

  // ==================== Widgets ====================

  Widget _buildHeader() {
    return Row(
      children: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Color(0xFF00D2FF)),
        ),
        const Text(
          "REGISTRATION",
          style: TextStyle(
            fontFamily: 'SpaceGrotesk',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Color(0xFF00D2FF),
          ),
        ),
      ],
    );
  }

  Widget _buildPhoneField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Patient Phone Number", style: TextStyle(fontSize: 12, color: Colors.grey, letterSpacing: 1)),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(color: const Color(0xFF1E2023), borderRadius: BorderRadius.circular(16)),
          child: TextFormField(
            controller: _phoneController,
            keyboardType: TextInputType.phone,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              hintText: "000-000-0000",
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 16, right: 8),
                child: Text("+1", style: TextStyle(color: Color(0xFF00D2FF), fontSize: 16)),
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 18),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEmailField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Patient Email", style: TextStyle(fontSize: 12, color: Colors.grey, letterSpacing: 1)),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(color: const Color(0xFF1E2023), borderRadius: BorderRadius.circular(16)),
          child: TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              hintText: "synapse@labsync.io",
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNationalIdField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("National ID", style: TextStyle(fontSize: 12, color: Colors.grey, letterSpacing: 1)),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(color: const Color(0xFF1E2023), borderRadius: BorderRadius.circular(16)),
          child: TextFormField(
            controller: _nationalIdController,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              hintText: "ID-XXXX-XXXX",
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGenderField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Gender Selection", style: TextStyle(fontSize: 12, color: Colors.grey, letterSpacing: 1)),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(color: const Color(0xFF1E2023), borderRadius: BorderRadius.circular(16)),
          child: DropdownButtonFormField<String>(
            value: _selectedGender,
            dropdownColor: const Color(0xFF1E2023),
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(border: InputBorder.none),
            items: const [
              DropdownMenuItem(value: "Male", child: Text("Male")),
              DropdownMenuItem(value: "Female", child: Text("Female")),
              DropdownMenuItem(value: "Non-binary", child: Text("Non-binary")),
              DropdownMenuItem(value: "Decline to specify", child: Text("Decline to specify")),
            ],
            onChanged: (value) {
              setState(() => _selectedGender = value!);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildWeightSlider() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Biological Weight (kg)", style: TextStyle(fontSize: 12, color: Colors.grey, letterSpacing: 1)),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Slider(
                value: _weight,
                min: 30,
                max: 300,
                activeColor: const Color(0xFF00D2FF),
                inactiveColor: Colors.grey.withOpacity(0.3),
                onChanged: (value) {
                  setState(() => _weight = value);
                },
              ),
            ),
            Container(
              width: 70,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                color: const Color(0xFF1E2023),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "${_weight.toStringAsFixed(1)} kg",
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF00D2FF)),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}