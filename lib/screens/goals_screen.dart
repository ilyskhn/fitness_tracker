import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class GoalsScreen extends StatelessWidget {
  const GoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.lightBg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 20),
              _buildTargetWeightCard(),
              const SizedBox(height: 14),
              _buildWeeklyWorkoutsCard(),
              const SizedBox(height: 14),
              _buildDailyWaterCard(),
              const SizedBox(height: 14),
              _buildOverallProgressCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'My goals',
          style: TextStyle(
            color: AppTheme.lightText,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const Text(
            'Edit',
            style: TextStyle(
              color: AppTheme.lightText,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTargetWeightCard() {
    return _goalCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(Icons.track_changes_rounded, size: 16, color: AppTheme.accentGreen),
                  SizedBox(width: 6),
                  Text('Target weight', style: TextStyle(color: AppTheme.lightText, fontSize: 13, fontWeight: FontWeight.w500)),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppTheme.accentGreen.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('On track', style: TextStyle(color: AppTheme.accentGreenDim, fontSize: 11, fontWeight: FontWeight.w500)),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text('70 kg', style: TextStyle(color: AppTheme.lightText, fontSize: 32, fontWeight: FontWeight.w700)),
              SizedBox(width: 10),
              Text('Current: 74.2', style: TextStyle(color: AppTheme.lightTextSecondary, fontSize: 14)),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: const LinearProgressIndicator(
              value: 0.78,
              backgroundColor: Color(0xFFEEEEEE),
              valueColor: AlwaysStoppedAnimation<Color>(AppTheme.accentGreen),
              minHeight: 6,
            ),
          ),
          const SizedBox(height: 6),
          const Text('78% complete · 4.2 remaining', style: TextStyle(color: AppTheme.lightTextSecondary, fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildWeeklyWorkoutsCard() {
    return _goalCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(Icons.show_chart_rounded, size: 16, color: AppTheme.accentBlue),
                  SizedBox(width: 6),
                  Text('Weekly workouts', style: TextStyle(color: AppTheme.lightText, fontSize: 13, fontWeight: FontWeight.w500)),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: AppTheme.accentBlue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('4 / 5 days', style: TextStyle(color: AppTheme.accentBlue, fontSize: 11, fontWeight: FontWeight.w500)),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text('5 days', style: TextStyle(color: AppTheme.lightText, fontSize: 32, fontWeight: FontWeight.w700)),
              SizedBox(width: 8),
              Text('per week', style: TextStyle(color: AppTheme.lightTextSecondary, fontSize: 14)),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: const LinearProgressIndicator(
              value: 0.8,
              backgroundColor: Color(0xFFEEEEEE),
              valueColor: AlwaysStoppedAnimation<Color>(AppTheme.accentBlue),
              minHeight: 6,
            ),
          ),
          const SizedBox(height: 6),
          const Text('4 completed this week', style: TextStyle(color: AppTheme.lightTextSecondary, fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildDailyWaterCard() {
    return _goalCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(Icons.water_drop_outlined, size: 16, color: AppTheme.accentBlue),
                  SizedBox(width: 6),
                  Text('Daily water', style: TextStyle(color: AppTheme.lightText, fontSize: 13, fontWeight: FontWeight.w500)),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: AppTheme.accentBlue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text('72%', style: TextStyle(color: AppTheme.accentBlue, fontSize: 11, fontWeight: FontWeight.w500)),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text('2.5 L', style: TextStyle(color: AppTheme.lightText, fontSize: 32, fontWeight: FontWeight.w700)),
              SizedBox(width: 8),
              Text('Today: 1.8L', style: TextStyle(color: AppTheme.lightTextSecondary, fontSize: 14)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOverallProgressCard() {
    return _goalCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Overall progress', style: TextStyle(color: AppTheme.lightText, fontSize: 14, fontWeight: FontWeight.w600)),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: const LinearProgressIndicator(
              value: 0.76,
              backgroundColor: Color(0xFFEEEEEE),
              valueColor: AlwaysStoppedAnimation<Color>(AppTheme.accentGreen),
              minHeight: 10,
            ),
          ),
          const SizedBox(height: 8),
          const Align(
            alignment: Alignment.centerRight,
            child: Text('76%', style: TextStyle(color: AppTheme.lightTextSecondary, fontSize: 13, fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }

  Widget _goalCard({required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: child,
    );
  }
}