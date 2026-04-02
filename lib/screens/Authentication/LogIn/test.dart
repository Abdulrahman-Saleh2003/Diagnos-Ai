import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class LoginLabScreen extends StatefulWidget {
  const LoginLabScreen({super.key});

  @override
  State<LoginLabScreen> createState() => _LoginLabScreenState();
}

class _LoginLabScreenState extends State<LoginLabScreen> {
  bool obscure = true;

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111317),
      body: SafeArea(
        child: Stack(
          children: [
            /// ===== BACKGROUND GLOW =====
            Positioned(
              top: -100,
              right: -100,
              child: _glow(const Color(0xFF6E208C)),
            ),
            Positioned(
              bottom: -100,
              left: -100,
              child: _glow(const Color(0xFF00D2FF)),
            ),

            /// ===== MAIN =====
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    /// ===== LOGO =====
                    Column(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFF00D2FF).withOpacity(0.1),
                          ),
                          child: const Icon(
                            Symbols.science,
                            size: 40,
                            color: Color(0xFF00D2FF),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "LABSYNC",
                          style: TextStyle(
                            color: Color(0xFF00D2FF),
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "SYNTHETIC ALCHEMY PROTOCOL",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white54,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 40),

                    /// ===== CARD =====
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E2023),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Access Your Lab",
                            style: TextStyle(
                              fontSize: 20,color: Colors.white,

                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 20),

                          /// ===== PHONE =====
                          const Text(
                            "Identity Signature",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 6),
                          _inputField(
                            controller: phoneController,
                            hint: "Email or Phone",
                            prefix: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text("+966",
                                    style:
                                    TextStyle(color: Color(0xFF00D2FF))),
                                SizedBox(width: 4),
                                Icon(Symbols.expand_more, size: 16),
                              ],
                            ),
                            suffix: const Icon(Symbols.fingerprint),
                          ),

                          const SizedBox(height: 20),

                          /// ===== PASSWORD =====
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Access Cipher",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white60)),
                              Text("Forgot Password?",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFF00D2FF))),
                            ],
                          ),
                          const SizedBox(height: 6),
                          _inputField(
                            controller: passwordController,
                            hint: "••••••••",
                            obscure: obscure,
                            prefix: const Icon(Symbols.lock_open),
                            suffix: GestureDetector(
                              onTap: () {
                                setState(() {
                                  obscure = !obscure;
                                });
                              },
                              child: const Icon(Symbols.visibility),
                            ),
                          ),

                          const SizedBox(height: 30),

                          /// ===== BUTTON =====
                          GestureDetector(
                            onTap: () {
                              /// لاحقاً API
                            },
                            child: Container(
                              width: double.infinity,
                              padding:
                              const EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF00D2FF),
                                    Color(0xFF6E208C)
                                  ],
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  "EXECUTE LOGIN",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                    ,color: Colors.white,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 20),

                          /// ===== SIGN UP =====
                          Center(
                            child: RichText(
                              text: const TextSpan(
                                text: "Don't have an account? ",
                                style: TextStyle(color: Colors.white),
                                children: [
                                  TextSpan(
                                    text: "Sign Up",
                                    style: TextStyle(
                                      color: Color(0xFF00D2FF),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    const SizedBox(height: 30),

                    /// ===== FOOTER =====
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Row(
                          children: [
                            Icon(Icons.circle,
                                size: 8, color: Color(0xFF00D2FF)),
                            SizedBox(width: 6),
                            Text("Secure Link Established",
                                style: TextStyle(fontSize: 10,color: Colors.white)),
                          ],
                        ),
                        Text("v.4.0.21-alpha",
                            style: TextStyle(fontSize: 10,color: Colors.white)),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// ===== INPUT FIELD =====
  Widget _inputField({
    required TextEditingController controller,
    required String hint,
    Widget? prefix,
    Widget? suffix,
    bool obscure = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF282A2D),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          if (prefix != null) prefix,
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: controller,
              obscureText: obscure,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(color: Colors.white38),
                border: InputBorder.none,
              ),
            ),
          ),
          if (suffix != null) suffix,
        ],
      ),
    );
  }

  /// ===== GLOW =====
  Widget _glow(Color color) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        shape: BoxShape.circle,
      ),
    );
  }
}