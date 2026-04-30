import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CBCReportScreen extends StatefulWidget {
  const CBCReportScreen({super.key});

  @override
  State<CBCReportScreen> createState() => _CBCReportScreenState();
}

class _CBCReportScreenState extends State<CBCReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111317),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0C0E11),
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Color(0xFF00D2FF)),
        title: Text(
          'Complete Blood Count',
          style: GoogleFonts.spaceGrotesk(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF00D2FF),
            letterSpacing: -0.5,
          ),
        ),
        actions: const [
          Icon(Icons.more_vert, color: Color(0xFFE2E2E6)),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Report Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LABORATORY PARTNER',
                      style: GoogleFonts.manrope(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2,
                        color: const Color(0xFFBBC9CF),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Quest Diagnostics',
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'ISSUE DATE',
                      style: GoogleFonts.manrope(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2,
                        color: const Color(0xFFBBC9CF),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'OCT 12, 2023',
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF00D2FF),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 32),

            // Lab Results Cards
            _buildResultCard(
              title: 'RBC',
              subtitle: 'Red Blood Cell Count',
              value: '4.8',
              unit: 'M/µL',
              ref: '4.2 - 5.4',
              progress: 0.72,
              statusColor: const Color(0xFF10B981),
              statusText: 'Normal',
            ),

            _buildResultCard(
              title: 'RBC',
              subtitle: 'Red Blood Cell Count',
              value: '4.8',
              unit: 'M/µL',
              ref: '4.2 - 5.4',
              progress: 0.66,
              statusColor: Colors.green,
              statusText: 'Normal',
            ),

            _buildResultCard(
              title: 'HGB',
              subtitle: 'Hemoglobin',
              value: '14.2',
              unit: 'g/dL',
              ref: '12.0 - 16.0',
              progress: 0.75,
              statusColor: Colors.green,
              statusText: 'Normal',
            ),

            _buildResultCard(
              title: 'WBC',
              subtitle: 'White Blood Cell Count',
              value: '11.4',
              unit: 'K/µL',
              ref: '4.5 - 11.0',
              progress: 0.85,
              statusColor: Colors.orange,
              statusText: 'Borderline High',
            ),

            _buildResultCard(
              title: 'PLT',
              subtitle: 'Platelet Count',
              value: '245',
              unit: 'K/µL',
              ref: '150 - 450',
              progress: 0.45,
              statusColor: Colors.green,
              statusText: 'Normal',
            ),

            _buildResultCard(
              title: 'Lymphocytes',
              subtitle: 'Immune Memory',
              value: '15',
              unit: '%',
              ref: '20 - 45',
              progress: 0.25,
              statusColor: Colors.red,
              statusText: 'Critical Low',
            ),

            _buildResultCard(
              title: 'HGB',
              subtitle: 'Hemoglobin',
              value: '14.1',
              unit: 'g/dL',
              ref: '13.5 - 17.5',
              progress: 0.65,
              statusColor: const Color(0xFF10B981),
              statusText: 'Normal',
            ),

            _buildResultCard(
              title: 'HCT',
              subtitle: 'Hematocrit',
              value: '51.6',
              unit: '%',
              ref: '41 - 53',
              progress: 0.88,
              statusColor: const Color(0xFFF59E0B),
              statusText: 'High',
            ),
            // 1. Normal (أخضر)
            _buildResultCard(
              title: "RBC",
              subtitle: "Red Blood Cell",
              value: "4.8",
              unit: "M/µL",
              ref: "4.2 - 5.4",
              progress: 0.72,
              statusColor: const Color(0xFF10B981), // أخضر
              statusText: "Normal",
            ),

            // 2. High / Borderline (برتقالي)
            _buildResultCard(
              title: "Lymphocytes",
              subtitle: "Lymphocytes",
              value: "43",
              unit: "%",
              ref: "20 - 40",
              progress: 0.95,
              statusColor: const Color(0xFFF59E0B), // برتقالي
              statusText: "High",
            ),

            // 3. Critical (أحمر) ← تم إضافة اللون الأحمر
            _buildResultCard(
              title: "Eosinophils",
              subtitle: "Eosinophils",
              value: "7",
              unit: "%",
              ref: "1 - 4",
              progress: 1.0,
              statusColor: const Color(0xFFEF4444), // أحمر
              statusText: "Critical",
            ),


            // يمكنك إضافة باقي البطاقات بنفس الطريقة (MCV, MCH, WBC, Neutrophils, Lymphocytes, ...)

            const SizedBox(height: 40),

            // AI Analysis Button
            Container(
              width: double.infinity,
              height: 68,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(999),
                gradient: const LinearGradient(
                  colors: [Color(0xFF00D2FF), Color(0xFF6E208C)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF00D2FF).withValues(alpha:0.3),
                    blurRadius: 20,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(999),
                  onTap: () {
                    // TODO: Generate AI Analysis
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('AI Analysis coming soon...')),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.psychology, color: Colors.white, size: 28),
                      const SizedBox(width: 12),
                      Text(
                        'Generate AI Analysis',
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.auto_awesome, color: Color(0xFFEDB1FF)),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),

            // Doctor Verification

          ],
        ),
      ),

    );
  }


  Widget _buildResultCard({
    required String title,
    required String subtitle,
    required String value,
    required String unit,
    required String ref,
    required double progress,
    required Color statusColor,
    required String statusText,
  }) {
    final isCritical = statusText.toLowerCase().contains("critical");

    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1C1F),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF333538)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: GoogleFonts.spaceGrotesk(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.white)),
                  Text(subtitle, style: GoogleFonts.manrope(fontSize: 13.5, color: const Color(0xFFBBC9CF))),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(width: 11, height: 11, decoration: BoxDecoration(color: statusColor, shape: BoxShape.circle)),
                      const SizedBox(width: 8),
                      Text(
                        value,
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: statusColor,
                        ),
                      ),
                    ],
                  ),
                  Text("$ref $unit", style: GoogleFonts.manrope(fontSize: 12, color: const Color(0xFF859399))),
                ],
              ),
            ],
          ),

          const SizedBox(height: 18),

          // Progress Bar
          ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: const Color(0xFF333538),
              valueColor: AlwaysStoppedAnimation<Color>(statusColor),
              minHeight: 7,
            ),
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                statusText,
                style: GoogleFonts.manrope(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: statusColor,
                ),
              ),
              Text(
                isCritical ? "Immediate Review Required" : "Measured Value",
                style: GoogleFonts.manrope(fontSize: 12, color: const Color(0xFF859399)),
              ),
            ],
          ),
        ],
      ),
    );
  }


}