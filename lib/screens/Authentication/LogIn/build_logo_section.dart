import 'package:flutter/material.dart';

class BuildLogoSection extends StatelessWidget {
  const BuildLogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFF1A1C1F),
            border: Border.all(color: const Color(0xFF00D2FF).withOpacity(0.3), width: 2),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF00D2FF).withOpacity(0.3),
                blurRadius: 30,
                spreadRadius: 5,
              ),
            ],
          ),
          child: const Icon(Icons.science, size: 55, color: Color(0xFF00D2FF)),
        ),
        const SizedBox(height: 16),
        const Text('LABSYNC', style: TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF00D2FF), letterSpacing: 4)),
        const Text('SYNTHETIC ALCHEMY PROTOCOL', style: TextStyle(fontSize: 11, letterSpacing: 3, color: Colors.grey)),
      ],
    );  }
}
