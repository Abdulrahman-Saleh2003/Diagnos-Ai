import 'package:diagnos_ai/OnBoarding/View/widget.dart';


class BuildAiBrainVisualization extends StatelessWidget {
  const BuildAiBrainVisualization({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      decoration: BoxDecoration(
        color: const Color(0xFF1A1C1F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Glow Effects
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  const Color(0xFF00D2FF).withOpacity(0.25),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          // Main Brain Image
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              AppImageAsset.onboarding3,
              height: 340,
              fit: BoxFit.cover,
            ),
          ),
          // Accuracy Overlay
          Positioned(
            bottom: 40,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.75),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFF00D2FF).withOpacity(0.4)),
              ),
              child: Column(
                children: const [
                  Text(
                    '98.4%',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00D2FF),
                    ),
                  ),
                  Text(
                    'Accuracy Index',
                    style: TextStyle(fontSize: 12, color: Colors.grey, letterSpacing: 1),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
