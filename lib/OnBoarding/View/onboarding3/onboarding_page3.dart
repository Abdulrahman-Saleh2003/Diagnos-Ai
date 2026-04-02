
import 'package:diagnos_ai/OnBoarding/View/widget.dart';


class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hero Section
          const Text(
            'AI-Powered',
            style: TextStyle(
              fontFamily: 'SpaceGrotesk',
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Text(
            'Analysis',
            style: TextStyle(
              fontFamily: 'SpaceGrotesk',
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00D2FF),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Our advanced AI analyzes your lab data to provide deep insights and trend alerts with clinical precision.',
            style: TextStyle(fontSize: 16, color: Colors.grey, height: 1.5),
          ),
          const SizedBox(height: 32),


           BuildAiBrainVisualization(),

          const SizedBox(height: 40),

           BuildFeaturesSection(),

          const SizedBox(height: 40),

          const Text(
            'Analysis Stream',
            style: TextStyle(
              fontFamily: 'SpaceGrotesk',
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          BuildAnalysisStream(),
          // const SizedBox(height: 10),

          const SizedBox(height: 40),

          const OnboardingNextButton(),

          const SizedBox(height: 20),

        ],
      ),

    );
  }

}
