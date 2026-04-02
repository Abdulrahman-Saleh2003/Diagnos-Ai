import 'package:diagnos_ai/OnBoarding/View/widget.dart';


class BuildFeaturesSection extends StatelessWidget {
  const BuildFeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Molecular Tracking (Large Card)
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color(0xFF1A1C1F),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: const Color(0xFF00D2FF).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.bubble_chart, color: Color(0xFF00D2FF), size: 36),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text('0.02μ', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF00D2FF))),
                      Text('Precision Range', style: TextStyle(fontSize: 12, color: Colors.white,)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Molecular Tracking',
                style: TextStyle(fontSize: 22, color: Colors.white,fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Deep-level sequence monitoring to detect subtle changes in biological markers over time.',
                style: TextStyle(color: Colors.grey, height: 1.5),
              ),
              const SizedBox(height: 20),
              // Mini Bar Chart
              Container(
                height: 80,
                decoration: BoxDecoration(
                  color: const Color(0xFF111317),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    MiniBar(height: 35),
                    MiniBar(height: 55),
                    MiniBar(height: 80, isHighlighted: true),
                    MiniBar(height: 50),
                    MiniBar(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        // Smart Alerts Card
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color(0xFF1A1C1F),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFEDB1FF).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.notifications_active, color: Color(0xFFEDB1FF), size: 32),
              ),
              const SizedBox(height: 16),
              const Text(
                'Smart Alerts',
                style: TextStyle(fontSize: 22,color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Instant trend alerts triggered by anomalies in your longitudinal data streams.',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),
              BuildAlertItem(text: 'Critical Shift Detected',isCritical:  true),
              const SizedBox(height: 8),
              BuildAlertItem(text: 'Stability Maintained',isCritical:  false),
            ],
          ),
        ),
      ],
    );
  }
}
