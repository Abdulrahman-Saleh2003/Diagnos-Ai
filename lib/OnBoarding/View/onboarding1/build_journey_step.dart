
import 'package:flutter/material.dart';

class BuildJourneyStep extends StatelessWidget {
  const BuildJourneyStep({super.key, required this.icon, required this.title, required this.time, required this.isCompleted,  this.isActive=false});
final IconData icon;
final String title;
final String time;
final bool isCompleted;
final bool isActive;

  @override
  Widget build(BuildContext context) {
    final color = isActive
        ? const Color(0xFF00D2FF)
        : isCompleted
        ? Colors.white
        : Colors.grey;
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? const Color(0xFF00D2FF).withOpacity(0.2) : Colors.transparent,
            border: Border.all(
              color: color,
              width: isActive ? 3 : 2,
            ),
          ),
          child: Icon(icon, color: color, size: 28),
        ),
        const SizedBox(height: 12),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isActive ? const Color(0xFF00D2FF) : color,
          ),
        ),
        Text(
          time,
          style: TextStyle(fontSize: 12, color: isActive ? const Color(0xFF00D2FF) : Colors.grey),
        ),
      ],
    );  }
}
