
import 'package:diagnos_ai/OnBoarding/View/widget.dart';


class OnboardingPage4 extends StatelessWidget {
  const OnboardingPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 100),
      child: Column(
        children: [
          const SizedBox(height: 30),


          BuildHolographicCenter(),

          const SizedBox(height: 40),

          const Text(
            'Welcome to',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const Text(
            'LabSync',
            style: TextStyle(
              fontFamily: 'SpaceGrotesk',
              fontSize: 52,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00D2FF),
            ),
          ),

          const SizedBox(height: 16),

          const Text(
            'Your laboratory results, smarter and faster than ever before.\nExperience diagnostic intelligence at your fingertips.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey, height: 1.6),
          ),



          const SizedBox(height: 60),

          BuildIntelligenceCards(),
          const SizedBox(height: 10),

          BuildActionButtons(),
          const SizedBox(height: 40),


          const OnboardingNextButton(),

          const SizedBox(height: 20),

        ],
      ),

    );

  }

}