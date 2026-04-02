import 'package:flutter/material.dart';

class BuildAlertItem extends StatelessWidget {
  const BuildAlertItem({super.key, required this.text, required this.isCritical});
  final String text;

  final bool isCritical;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: isCritical ? const Color(0xFF3A1F1F) : const Color(0xFF1F2A1F),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            isCritical ? Icons.warning_amber : Icons.check_circle,
            color: isCritical ? Colors.red : Colors.green,
            size: 20,
          ),
          const SizedBox(width: 12),
          Text(
            text,
            style: const TextStyle(color: Colors.white,fontSize: 14),
          ),
        ],
      ),
    );
  }
}
