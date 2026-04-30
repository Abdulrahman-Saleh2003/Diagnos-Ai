import 'package:flutter/material.dart';

class HeroSectionWidget extends StatelessWidget {
  final VoidCallback? onUploadPressed;

  const HeroSectionWidget({
    super.key,
    this.onUploadPressed,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final scale = size.width / 375;

    return Container(
      padding: EdgeInsets.all(20 * scale.clamp(0.9, 1.2)),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1A1C1F), Color(0xFF0F1215)],
        ),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: const Color(0xFF00D2FF).withValues(alpha:0.15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // System Ready Tag
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFF00D2FF).withValues(alpha:0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "SYSTEM READY",
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00D2FF),
                letterSpacing: 1,
              ),
            ),
          ),

          const SizedBox(height: 12),

          // Main Title
          Text(
            "Secure Lab\nData Processing",
            style: TextStyle(
              fontFamily: 'SpaceGrotesk',
              fontSize: 26 * scale.clamp(0.85, 1.15),
              fontWeight: FontWeight.bold,
              height: 1.1,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 8),

          // Description
          Text(
            "Instantly digitize your physical reports using our proprietary AI vision engine.",
            style: TextStyle(
              fontSize: 14 * scale.clamp(0.9, 1.1),
              color: Colors.grey,
              height: 1.4,
            ),
          ),

          const SizedBox(height: 24),

          // Upload Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: onUploadPressed,
              icon: const Icon(Icons.add_circle, color: Colors.black),
              label: const Text(
                "UPLOAD NEW TEST",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00D2FF),
                padding: EdgeInsets.symmetric(
                  horizontal: 24 * scale,
                  vertical: 16 * scale.clamp(0.9, 1.2),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),

          const SizedBox(height: 32),

          // Visual Section with Glow
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Glow Effect
                Container(
                  width: 160 * scale.clamp(0.9, 1.3),
                  height: 160 * scale.clamp(0.9, 1.3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFF00D2FF).withValues(alpha:0.12),
                  ),
                ),
                // Main Box
                Container(
                  width: size.width - 100,
                  height: 160 * scale.clamp(0.8, 1.2),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E2023),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: const Color(0xFF00D2FF).withValues(alpha:0.3),
                    ),
                  ),
                  child: const Icon(
                    Icons.biotech,
                    size: 72,
                    color: Color(0xFF00D2FF),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}