import 'package:diagnos_ai/OnBoarding/View/widget.dart';
import 'package:flutter/material.dart';
enum ReportStatus { normal, borderline, critical }

class LabReport {
  final String title;
  final String date;
  final String sampleType;
  final String sampleTypeAr;
  final IconData icon;
  final ReportStatus status;

  const LabReport({
    required this.title,
    required this.date,
    required this.sampleType,
    required this.sampleTypeAr,
    required this.icon,
    required this.status,
  });
}



class AllReportsPage extends StatefulWidget {
  const AllReportsPage({super.key});

  @override
  State<AllReportsPage> createState() => _AllReportsPageState();
}

class _AllReportsPageState extends State<AllReportsPage> {
  // ── Design Tokens ──────────────────────────
  static const _bg = Color(0xFF111317);
  static const _surface = Color(0xFF1A1C1F);
  static const _surfaceHigh = Color(0xFF282A2D);
  static const _onSurface = Color(0xFFE2E2E6);
  static const _onSurfaceVar = Color(0xFFBBC9CF);
  static const _outlineVar = Color(0xFF3C494E);
  static const _primary = Color(0xFF00D2FF);
  static const _primarySoft = Color(0xFFA5E7FF);
  static const _secondary = Color(0xFFEDB1FF);
  static const _error = Color(0xFFFFB4AB);
  static const _onPrimary = Color(0xFF003543);

  int _selectedNavIndex = 1;

  // ── Sample Data ────────────────────────────
  final List<LabReport> _reports = const [
    LabReport(
      title: 'CBC (Complete Blood Count)',
      date: 'OCT 24, 2023 • 09:15 AM',
      sampleType: 'Blood',
      sampleTypeAr: 'دم',
      icon: Icons.bloodtype_outlined,
      status: ReportStatus.normal,
    ),
    LabReport(
      title: 'Lipid Profile',
      date: 'SEP 12, 2023 • 08:30 AM',
      sampleType: 'Blood',
      sampleTypeAr: 'دم',
      icon: Icons.biotech_outlined,
      status: ReportStatus.borderline,
    ),
    LabReport(
      title: 'Routine Urinalysis',
      date: 'AUG 05, 2023 • 11:20 AM',
      sampleType: 'Urine',
      sampleTypeAr: 'بول',
      icon: Icons.water_drop_outlined,
      status: ReportStatus.normal,
    ),
    LabReport(
      title: 'HbA1c (Glycated Hemoglobin)',
      date: 'JUL 19, 2023 • 10:00 AM',
      sampleType: 'Blood',
      sampleTypeAr: 'دم',
      icon: Icons.warning_amber_rounded,
      status: ReportStatus.critical,
    ),
    LabReport(
      title: 'Parasitology Screen',
      date: 'JUN 30, 2023 • 07:45 AM',
      sampleType: 'Stool',
      sampleTypeAr: 'براز',
      icon: Icons.science_outlined,
      status: ReportStatus.normal,
    ),
    LabReport(
      title: 'MTHFR Mutation Analysis',
      date: 'MAY 15, 2023 • 01:20 PM',
      sampleType: 'Genetic',
      sampleTypeAr: 'جينات',
      icon: Icons.hub_outlined,
      status: ReportStatus.normal,
    ),
  ];

  // ── Helpers ────────────────────────────────
  Color _statusColor(ReportStatus s) {
    switch (s) {
      case ReportStatus.normal:
        return _primary;
      case ReportStatus.borderline:
        return _secondary;
      case ReportStatus.critical:
        return _error;
    }
  }

  String _statusLabel(ReportStatus s) {
    switch (s) {
      case ReportStatus.normal:
        return 'Normal';
      case ReportStatus.borderline:
        return 'Borderline';
      case ReportStatus.critical:
        return 'Critical';
    }
  }

  // ── Build ──────────────────────────────────
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bg,
      extendBody: true,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  // ── AppBar ─────────────────────────────────
  PreferredSizeWidget _buildAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(64),
      child: Container(
        color: const Color(0xFF0C0E11),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.science, color: _primary, size: 22),
                  const SizedBox(width: 8),
                  Text(
                    'ALL REPORTS',
                    style: TextStyle(
                      fontFamily: 'SpaceGrotesk',
                      color: _primary,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 3,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.notifications_outlined,
                        color: _onSurface),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 4),
                  Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: _surfaceHigh,
                      shape: BoxShape.circle,
                      border: Border.all(color: _outlineVar),
                    ),
                    child: const Icon(Icons.person_outline,
                        size: 18, color: _primarySoft),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ── Body ───────────────────────────────────
  Widget _buildBody() {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 160),
      children: [
        // Header
        Text(
          'Synthetic Analysis Feed',
          style: TextStyle(
            color: _onSurfaceVar,
            fontSize: 11,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5,
          ),
        ),
        const SizedBox(height: 6),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              height: 1.2,
            ),
            children: [
              const TextSpan(
                  text: 'Laboratory\n', style: TextStyle(color: _onSurface)),
              TextSpan(
                  text: 'Pulse Stream',
                  style: TextStyle(color: _primary)),
            ],
          ),
        ),
        const SizedBox(height: 24),

        // Report Cards
        ...List.generate(_reports.length, (i) {
          final r = _reports[i];
          return Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: _ReportCard(
              report: r,
              accentColor: _statusColor(r.status),
              statusLabel: _statusLabel(r.status),
              onTap: () {
                context.push('/CBCReportScreen');



              },
            ),
          );
        }),

        const SizedBox(height: 28),

        // Compare Button
        Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [_primarySoft, _primary],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: _primary.withValues(alpha:0.25),
                blurRadius: 24,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.compare_arrows_rounded,
                        color: _onPrimary, size: 22),
                    SizedBox(width: 10),
                    Text(
                      'Compare Last Two Results',
                      style: TextStyle(
                        color: _onPrimary,
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 16),
        Text(
          'END OF SYNCHRONIZED RECORDS',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: _onSurfaceVar.withValues(alpha:0.5),
            fontSize: 10,
            letterSpacing: 2.5,
          ),
        ),
      ],
    );
  }


}

class _ReportCard extends StatelessWidget {
  final LabReport report;
  final Color accentColor;
  final String statusLabel;
  final VoidCallback onTap;

  const _ReportCard({
    required this.report,
    required this.accentColor,
    required this.statusLabel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF1A1C1F).withValues(alpha:0.85),
            borderRadius: BorderRadius.circular(16),
            border: Border(
              left: BorderSide(color: accentColor, width: 2.5),
            ),
          ),
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top row
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Icon box
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: accentColor.withValues(alpha:0.10),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:
                    Icon(report.icon, color: accentColor, size: 22),
                  ),
                  const SizedBox(width: 14),
                  // Title + date
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          report.title,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFE2E2E6),
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          report.date,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Color(0xFFBBC9CF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Status badge
                  Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: accentColor.withValues(alpha:0.08),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            color: accentColor,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: accentColor.withValues(alpha:0.5),
                                  blurRadius: 6)
                            ],
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          statusLabel.toUpperCase(),
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            color: accentColor,
                            letterSpacing: 0.8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Divider
              const SizedBox(height: 14),
              Container(
                  height: 1,
                  color: const Color(0xFF3C494E).withValues(alpha:0.3)),
              const SizedBox(height: 12),

              // Bottom row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.opacity_outlined,
                          size: 14,
                          color: const Color(0xFFBBC9CF)),
                      const SizedBox(width: 6),
                      Text(
                        '${report.sampleType} (${report.sampleTypeAr})',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFFBBC9CF),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.chevron_right_rounded,
                      color: Color(0xFFBBC9CF), size: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
