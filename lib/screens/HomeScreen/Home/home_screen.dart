import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      backgroundColor: Colors.white,


        body: Center(child: Text("Home Screen",maxLines: 2,style: TextStyle(letterSpacing: 1),), ));
  }
}




class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0E11),
      body: Stack(
        children: [
          // Background Glows
          Positioned(
            top: -100,
            right: -80,
            child: Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [const Color(0xFF00D2FF).withOpacity(0.08), Colors.transparent],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -120,
            left: -80,
            child: Container(
              width: 450,
              height: 450,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [const Color(0xFFEDB1FF).withOpacity(0.06), Colors.transparent],
                ),
              ),
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top AppBar
                  _buildTopAppBar(),

                  const SizedBox(height: 30),

                  // Hero Section
                  _buildHeroSection(),

                  const SizedBox(height: 32),

                  // Vital Summary (Bento Grid)
                  _buildVitalSummary(),

                  const SizedBox(height: 32),

                  // Recent Analytics
                  _buildRecentAnalytics(),

                  const SizedBox(height: 32),

                  // Health Trajectory
                  _buildHealthTrajectory(),
                ],
              ),
            ),
          ),

          // Bottom Navigation
          _buildBottomNavBar(),
        ],
      ),
    );
  }

  Widget _buildTopAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: const NetworkImage(
                "https://lh3.googleusercontent.com/aida-public/AB6AXuBeXZN3LYW9pQYpQVwHwi9sN-g7pN0uuEciMu4X4J37QvsYTNNAm-0In1XfNp8cAbTa-GCtfSpsP4x6rsIdvC37zYYWW6C20048NXlGUk_vzw0OBw_ipsVfrYJ1LK1_cDvbA6J9IV79vSLS_1RVlD_ChGTX2d4awXO36xv5Iihv-hDtM8WO_OIKrekevvmdiMWGKYS1fmCn1h3nzep4cC-vSmpUp7BtVd3aJwzBgl5fmOvHpLHN0A_TAoygZXzEUIrS3WCUn37zfM5H",
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Operator", style: TextStyle(fontSize: 10, color: Colors.grey, letterSpacing: 1)),
                Text("Welcome, Ahmed", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Stack(
              children: [
                IconButton(
                  icon: const Icon(Icons.notifications, color: Colors.white70),
                  onPressed: () {},
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: const Color(0xFF00D2FF),
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(color: const Color(0xFF00D2FF).withOpacity(0.6), blurRadius: 6)],
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              "LAB_TERMINAL",
              style: TextStyle(
                fontFamily: 'SpaceGrotesk',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                color: Color(0xFF00D2FF),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildHeroSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1A1C1F), Color(0xFF0F1215)],
        ),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFF00D2FF).withOpacity(0.15)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xFF00D2FF).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "SYSTEM READY",
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xFF00D2FF), letterSpacing: 1),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Secure Lab\nData Processing",
                  style: TextStyle(
                    fontFamily: 'SpaceGrotesk',
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    height: 1.1,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Instantly digitize your physical reports using our proprietary AI vision engine.",
                  style: TextStyle(fontSize: 14, color: Colors.grey, height: 1.4),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle, color: Colors.black),
                  label: const Text(
                    "UPLOAD NEW TEST",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00D2FF),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              color: const Color(0xFF1E2023),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: const Color(0xFF00D2FF).withOpacity(0.2)),
            ),
            child: const Icon(Icons.biotech, size: 60, color: Color(0xFF00D2FF)),
          ),
        ],
      ),
    );
  }

  Widget _buildVitalSummary() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("VITAL SUMMARY", style: TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 20, fontWeight: FontWeight.bold)),
            Text("Cycle 24B", style: TextStyle(fontSize: 11, color: Colors.grey, letterSpacing: 2)),
          ],
        ),
        const SizedBox(height: 16),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.6,
          children: [
            _buildSummaryCard("Total Tests", "24", "+12%", Icons.analytics, const Color(0xFF00D2FF)),
            _buildSummaryCard("Normal Results", "20", "83%", Icons.check_circle, Colors.green),
            _buildSummaryCard("Need Follow-up", "04", "Alert", Icons.priority_high, Colors.red),
            _buildSummaryCard("Following Doctors", "03", "Active", Icons.medical_services, const Color(0xFFEDB1FF)),
          ],
        ),
      ],
    );
  }

  Widget _buildSummaryCard(String title, String value, String subtitle, IconData icon, Color accent) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1C1F),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: accent.withOpacity(0.15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon, color: accent, size: 26),
              Text(subtitle, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: accent)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(value, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)),
              Text(title, style: const TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRecentAnalytics() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("RECENT ANALYTICS", style: TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 20, fontWeight: FontWeight.bold)),
            TextButton(
              onPressed: () {},
              child: const Text("View Ledger", style: TextStyle(color: Color(0xFF00D2FF), fontSize: 13)),
            ),
          ],
        ),
        const SizedBox(height: 12),
        // Add your recent items here as list of cards
      ],
    );
  }

  Widget _buildHealthTrajectory() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [Color(0xFF1E2023), Color(0xFF111317)]),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF00D2FF).withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF00D2FF).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.query_stats, color: Color(0xFF00D2FF)),
              ),
              const SizedBox(width: 12),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Health Trajectory", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Stability index is up by 4.2%", style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Simple bar visualization
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(7, (index) {
              final heights = [12, 16, 20, 24, 18, 22, 28];
              return Container(
                width: 18,
                height: heights[index].toDouble(),
                decoration: BoxDecoration(
                  color: index == 3 || index == 6 ? const Color(0xFF00D2FF) : const Color(0xFF1E2023),
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(6)),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
        decoration: const BoxDecoration(
          color: Color(0xFF0C0E11),
          border: Border(top: BorderSide(color: Color(0xFF00D2FF), width: 0.5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.grid_view, "DASHBOARD", true),
            _buildNavItem(Icons.biotech, "TESTS", false),
            _buildNavItem(Icons.event_note, "APPOINTMENTS", false),
            _buildNavItem(Icons.description, "REPORTS", false),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: isActive ? const Color(0xFF00D2FF) : Colors.grey, size: 26),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: isActive ? const Color(0xFF00D2FF) : Colors.grey,
          ),
        ),
      ],
    );
  }
}




class LabDashboardScreen extends StatefulWidget {
  const LabDashboardScreen({super.key});

  @override
  State<LabDashboardScreen> createState() => _LabDashboardScreenState();
}

class _LabDashboardScreenState extends State<LabDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0E11),
      body: Stack(
        children: [
          // Background decorative glows
          Positioned(
            top: -120,
            right: -80,
            child: Container(
              width: 420,
              height: 420,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [const Color(0xFF00D2FF).withOpacity(0.10), Colors.transparent],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -140,
            left: -90,
            child: Container(
              width: 460,
              height: 460,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [const Color(0xFFEDB1FF).withOpacity(0.08), Colors.transparent],
                ),
              ),
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top App Bar
                  _buildTopAppBar(),

                  const SizedBox(height: 28),

                  // Hero Section
                  _buildHeroSection(),

                  const SizedBox(height: 32),

                  // Vital Summary
                  _buildVitalSummary(),

                  const SizedBox(height: 32),

                  // Recent Analytics
                  _buildRecentAnalytics(),

                  const SizedBox(height: 32),

                  // Health Trajectory
                  _buildHealthTrajectory(),
                ],
              ),
            ),
          ),

          // Bottom Navigation Bar
          _buildBottomNavBar(),
        ],
      ),
    );
  }

  Widget _buildTopAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                "https://lh3.googleusercontent.com/aida-public/AB6AXuBeXZN3LYW9pQYpQVwHwi9sN-g7pN0uuEciMu4X4J37QvsYTNNAm-0In1XfNp8cAbTa-GCtfSpsP4x6rsIdvC37zYYWW6C20048NXlGUk_vzw0OBw_ipsVfrYJ1LK1_cDvbA6J9IV79vSLS_1RVlD_ChGTX2d4awXO36xv5Iihv-hDtM8WO_OIKrekevvmdiMWGKYS1fmCn1h3nzep4cC-vSmpUp7BtVd3aJwzBgl5fmOvHpLHN0A_TAoygZXzEUIrS3WCUn37zfM5H",
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Operator", style: TextStyle(fontSize: 10, color: Colors.grey, letterSpacing: 1.5)),
                Text("Welcome, Ahmed", style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.bold, color: Colors.white)),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_outlined, color: Colors.white70, size: 28),
                ),
                Positioned(
                  right: 6,
                  top: 6,
                  child: Container(
                    width: 9,
                    height: 9,
                    decoration: BoxDecoration(
                      color: const Color(0xFF00D2FF),
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(color: const Color(0xFF00D2FF).withOpacity(0.7), blurRadius: 8)],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 8),
            const Text(
              "LAB_TERMINAL",
              style: TextStyle(
                fontFamily: 'SpaceGrotesk',
                fontSize: 19,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                color: Color(0xFF00D2FF),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildHeroSection() {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1A1C1F), Color(0xFF111317)],
        ),
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: const Color(0xFF00D2FF).withOpacity(0.18)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFF00D2FF).withOpacity(0.12),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    "SYSTEM READY",
                    style: TextStyle(fontSize: 11.5, fontWeight: FontWeight.bold, color: Color(0xFF00D2FF), letterSpacing: 1.5),
                  ),
                ),
                const SizedBox(height: 14),
                const Text(
                  "Secure Lab\nData Processing",
                  style: TextStyle(
                    fontFamily: 'SpaceGrotesk',
                    fontSize: 27,
                    height: 1.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Instantly digitize your physical reports using our proprietary AI vision engine.",
                  style: TextStyle(fontSize: 14.5, color: Colors.grey, height: 1.45),
                ),
                const SizedBox(height: 22),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle, color: Colors.black, size: 26),
                  label: const Text(
                    "UPLOAD NEW TEST",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00D2FF),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Container(
            width: 125,
            height: 125,
            decoration: BoxDecoration(
              color: const Color(0xFF1E2023),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: const Color(0xFF00D2FF).withOpacity(0.25)),
            ),
            child: const Icon(Icons.biotech, size: 68, color: Color(0xFF00D2FF)),
          ),
        ],
      ),
    );
  }

  Widget _buildVitalSummary() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("VITAL SUMMARY", style: TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 20, fontWeight: FontWeight.bold)),
            Text("Cycle 24B", style: TextStyle(fontSize: 11, color: Colors.grey, letterSpacing: 2, fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 16),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          mainAxisSpacing: 14,
          crossAxisSpacing: 14,
          childAspectRatio: 1.65,
          children: [
            _buildSummaryCard("Total Tests", "24", "+12%", Icons.analytics, const Color(0xFF00D2FF)),
            _buildSummaryCard("Normal Results", "20", "83%", Icons.check_circle, Colors.greenAccent),
            _buildSummaryCard("Need Follow-up", "04", "Alert", Icons.priority_high, Colors.redAccent),
            _buildSummaryCard("Following Doctors", "03", "Active", Icons.medical_services, const Color(0xFFEDB1FF)),
          ],
        ),
      ],
    );
  }

  Widget _buildSummaryCard(String title, String value, String subtitle, IconData icon, Color accentColor) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1C1F),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: accentColor.withOpacity(0.15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon, color: accentColor, size: 28),
              Text(subtitle, style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: accentColor)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(value, style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white)),
              Text(title, style: const TextStyle(fontSize: 12.5, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRecentAnalytics() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("RECENT ANALYTICS", style: TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 20, fontWeight: FontWeight.bold)),
            TextButton(
              onPressed: () {},
              child: const Text("View Ledger", style: TextStyle(color: Color(0xFF00D2FF), fontSize: 13.5)),
            ),
          ],
        ),
        const SizedBox(height: 14),
        // You can expand this section with ListView of result cards if needed
      ],
    );
  }

  Widget _buildHealthTrajectory() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [Color(0xFF1E2023), Color(0xFF111317)]),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: const Color(0xFF00D2FF).withOpacity(0.12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF00D2FF).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(Icons.query_stats, color: Color(0xFF00D2FF), size: 28),
              ),
              const SizedBox(width: 14),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Health Trajectory", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                  Text("Stability index is up by 4.2%", style: TextStyle(fontSize: 13, color: Colors.grey)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              _Bar(height: 45),
              _Bar(height: 65),
              _Bar(height: 85, isHighlighted: true),
              _Bar(height: 55),
              _Bar(height: 78, isHighlighted: true, color: Color(0xFFEDB1FF)),
              _Bar(height: 40),
              _Bar(height: 95, isHighlighted: true),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 22),
        decoration: const BoxDecoration(
          color: Color(0xFF0C0E11),
          border: Border(top: BorderSide(color: Color(0xFF00D2FF), width: 0.6)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.grid_view, "DASHBOARD", true),
            _buildNavItem(Icons.biotech, "TESTS", false),
            _buildNavItem(Icons.event_note, "APPOINTMENTS", false),
            _buildNavItem(Icons.description, "REPORTS", false),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: isActive ? const Color(0xFF00D2FF) : Colors.grey[400], size: 27),
        const SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            fontSize: 10.5,
            fontWeight: FontWeight.bold,
            color: isActive ? const Color(0xFF00D2FF) : Colors.grey[500],
          ),
        ),
      ],
    );
  }
}

// Simple Bar Widget for visualization
class _Bar extends StatelessWidget {
  final double height;
  final bool isHighlighted;
  final Color? color;

  const _Bar({required this.height, this.isHighlighted = false, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22,
      height: height,
      decoration: BoxDecoration(
        color: isHighlighted ? (color ?? const Color(0xFF00D2FF)) : const Color(0xFF1E2023),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
        boxShadow: isHighlighted
            ? [BoxShadow(color: (color ?? const Color(0xFF00D2FF)).withOpacity(0.5), blurRadius: 12)]
            : null,
      ),
    );
  }
}