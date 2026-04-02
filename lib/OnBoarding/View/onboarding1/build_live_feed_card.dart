import 'package:diagnos_ai/OnBoarding/View/widget.dart';


class BuildLiveFeedCard extends StatelessWidget {
  const BuildLiveFeedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return       Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1A1C1F),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // Live Indicator + Title
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Color(0xFF00D2FF),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: Text(
                          'LIVE LABORATORY FEED',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            letterSpacing: 2,
                          ),
                          overflow: TextOverflow.ellipsis,   // ← مهم
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),

                // Camera Info
                const SizedBox(width: 12),
                Text(
                  'CAM_042',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          // Image Area
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(16)),
              child: Stack(
                children: [
                  Image.asset(
                    AppImageAsset.onboarding,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[900],
                        child: const Center(
                          child: Icon(Icons.image_not_supported, color: Colors.grey, size: 50),
                        ),
                      );
                    },
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black54],
                      ),
                    ),
                  ),
                  // Overlay Data
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BuildScanOverlay
                        (
                          icon: Icons.qr_code_2,
                          title: 'Scanning Vial',
                          value: '#VX-992-04',
                          color: const Color(0xFF00D2FF),
                        ),
                        const SizedBox(height: 12),
                        BuildScanOverlay(
                          icon: Icons.biotech,
                          title: 'Molecular Integrity',
                          value: '99.84%',
                          color: const Color(0xFFEDB1FF),
                        ),
                      ],
                    ),
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
