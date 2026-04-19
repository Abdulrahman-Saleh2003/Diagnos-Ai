
import 'package:diagnos_ai/core/constant/app_color.dart';
import 'package:diagnos_ai/screens/HomeScreen/Home/health_trajectory.dart';
import 'package:diagnos_ai/screens/HomeScreen/Home/hero_section_widget.dart';
import 'package:diagnos_ai/screens/HomeScreen/Home/recent_analytics_header.dart';
import 'package:diagnos_ai/screens/HomeScreen/Home/result_item.dart';
import 'package:diagnos_ai/screens/HomeScreen/Home/top_app_bar_widget.dart';
import 'package:diagnos_ai/screens/HomeScreen/Home/vital_summary_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final scale = size.width / 375; // أساس التصميم 375 (موبايل قياسي)

    return Scaffold(
      backgroundColor: const Color(0xFF0C0E11),
      body: Stack(
        children: [
          // Background Glows - Responsive
          Positioned(
            top: -100 * scale,
            right: -80 * scale,
            child: Container(
              width: 400 * scale,
              height: 400 * scale,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFF00D2FF).withOpacity(0.08),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -120 * scale,
            left: -80 * scale,
            child: Container(
              width: 450 * scale,
              height: 450 * scale,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFFEDB1FF).withOpacity(0.06),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(
                16 * scale,
                12 * scale,
                16 * scale,
                100 * scale,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top AppBar
                  TopAppBarWidget(
                    userName: "Ahmed",
                    welcomeText: "Operator Welcome",
                    onNotificationsPressed: () {
                      print("تم الضغط على أيقونة الإشعارات");
                    },
                  ),

                  SizedBox(height: 30 * scale),

                  // Hero Section
                  HeroSectionWidget(
                    onUploadPressed: () {
                      print("تم الضغط على Upload New Test");
                    },
                  ),

                  SizedBox(height: 32 * scale),

                  // Vital Summary
                  VitalSummaryWidget(
                    onTotalTestsTap: () => print("Total Tests tapped"),
                    onNormalResultsTap: () => print("Normal Results tapped"),
                    onNeedFollowUpTap: () => print("Need Follow-up tapped"),
                    onFollowingDoctorsTap: () => print("Following Doctors tapped"),
                  ),

                  SizedBox(height: 32 * scale),

                  // Recent Analytics Header
                  RecentAnalyticsHeader(
                    title: "RECENT ANALYTICS",
                    buttonText: "View Ledger",
                    onViewLedgerPressed: () {
                      print("View Ledger Pressed");
                    },
                  ),

                  Column(
                    children: [
                      ResultItemWidget(
                        icon: Icons.bloodtype,
                        title: "Comprehensive Blood Panel",
                        subtitle: "Oct 12, 2023 • Quest Diagnostics",
                        status: "NORMAL",
                        statusColor: const Color(0xFF00D2FF),
                        onTap: () => print("تم الضغط على البند الأول"),
                      ),
                      SizedBox(height: 10 * scale),

                      ResultItemWidget(
                        icon: Icons.biotech,
                        title: "Thyroid Stimulating Hormone",
                        subtitle: "Oct 08, 2023 • LabCorp HQ",
                        status: "ELEVATED",
                        statusColor: Colors.red,
                        onTap: () {},
                      ),
                      SizedBox(height: 10 * scale),

                      ResultItemWidget(
                        icon: Icons.science,
                        title: "Lipid Profile Beta-Test",
                        subtitle: "Sep 29, 2023 • Bio-Medical Systems",
                        status: "NORMAL",
                        statusColor: const Color(0xFF00D2FF),
                        onTap: () {},
                      ),
                    ],
                  ),

                  SizedBox(height: 32 * scale),

                  // Health Trajectory
                  HealthTrajectoryWidget(
                    title: "Health Trajectory",
                    subtitle: "Stability index is up by 4.2%",
                    barHeights: const [36, 48, 60, 70, 54, 66, 81],
                    accentColor: const Color(0xFF00D2FF),
                    iconColor: AppMyColor.lightLavenderPinkColor,
                  ),

                  SizedBox(height: 40 * scale), // مساحة في النهاية
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



///todo
// import 'package:diagnos_ai/core/constant/app_color.dart';
// import 'package:diagnos_ai/screens/HomeScreen/Home/health_trajectory.dart';
// import 'package:diagnos_ai/screens/HomeScreen/Home/hero_section_widget.dart';
// import 'package:diagnos_ai/screens/HomeScreen/Home/recent_analytics_header.dart';
// import 'package:diagnos_ai/screens/HomeScreen/Home/result_item.dart';
// import 'package:diagnos_ai/screens/HomeScreen/Home/top_app_bar_widget.dart';
// import 'package:diagnos_ai/screens/HomeScreen/Home/vital_summary_widget.dart';
// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.sizeOf(context);
//     final scale = size.width / 375;
//
//     return Stack(
//       children: [
//         // Background Glows
//         Positioned(
//           top: -100 * scale,
//           right: -80 * scale,
//           child: Container(
//             width: 400 * scale,
//             height: 400 * scale,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               gradient: RadialGradient(
//                 colors: [const Color(0xFF00D2FF).withOpacity(0.08), Colors.transparent],
//               ),
//             ),
//           ),
//         ),
//         Positioned(
//           bottom: -120 * scale,
//           left: -80 * scale,
//           child: Container(
//             width: 450 * scale,
//             height: 450 * scale,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               gradient: RadialGradient(
//                 colors: [const Color(0xFFEDB1FF).withOpacity(0.06), Colors.transparent],
//               ),
//             ),
//           ),
//         ),
//
//         SafeArea(
//
//
//           child: SingleChildScrollView(
//             padding: EdgeInsets.fromLTRB(16 * scale, 12 * scale, 16 * scale, 100 * scale),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 TopAppBarWidget(
//                   userName: "Ahmed",
//                   welcomeText: "Operator Welcome",
//                   onNotificationsPressed: () => print("تم الضغط على الإشعارات"),
//                 ),
//
//                 SizedBox(height: 30 * scale),
//
//                 HeroSectionWidget(
//                   onUploadPressed: () => print("تم الضغط على Upload New Test"),
//                 ),
//
//                 SizedBox(height: 32 * scale),
//
//                 VitalSummaryWidget(
//                   onTotalTestsTap: () => print("Total Tests tapped"),
//                   onNormalResultsTap: () => print("Normal Results tapped"),
//                   onNeedFollowUpTap: () => print("Need Follow-up tapped"),
//                   onFollowingDoctorsTap: () => print("Following Doctors tapped"),
//                 ),
//
//                 SizedBox(height: 32 * scale),
//
//                 RecentAnalyticsHeader(
//                   title: "RECENT ANALYTICS",
//                   buttonText: "View Ledger",
//                   onViewLedgerPressed: () => print("View Ledger Pressed"),
//                 ),
//
//                 Column(
//                   children: [
//                     ResultItemWidget(
//                       icon: Icons.bloodtype,
//                       title: "Comprehensive Blood Panel",
//                       subtitle: "Oct 12, 2023 • Quest Diagnostics",
//                       status: "NORMAL",
//                       statusColor: const Color(0xFF00D2FF),
//                       onTap: () => print("تم الضغط على البند الأول"),
//                     ),
//                     SizedBox(height: 10 * scale),
//
//                     ResultItemWidget(
//                       icon: Icons.biotech,
//                       title: "Thyroid Stimulating Hormone",
//                       subtitle: "Oct 08, 2023 • LabCorp HQ",
//                       status: "ELEVATED",
//                       statusColor: Colors.red,
//                       onTap: () {},
//                     ),
//                     SizedBox(height: 10 * scale),
//
//                     ResultItemWidget(
//                       icon: Icons.science,
//                       title: "Lipid Profile Beta-Test",
//                       subtitle: "Sep 29, 2023 • Bio-Medical Systems",
//                       status: "NORMAL",
//                       statusColor: const Color(0xFF00D2FF),
//                       onTap: () {},
//                     ),
//                   ],
//                 ),
//
//                 SizedBox(height: 32 * scale),
//
//                 HealthTrajectoryWidget(
//                   title: "Health Trajectory",
//                   subtitle: "Stability index is up by 4.2%",
//                   barHeights: const [36, 48, 60, 70, 54, 66, 81],
//                   accentColor: const Color(0xFF00D2FF),
//                   iconColor: AppMyColor.lightLavenderPinkColor,
//                 ),
//
//                 SizedBox(height: 40 * scale),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }