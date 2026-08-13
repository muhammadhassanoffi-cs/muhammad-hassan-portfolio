import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/responsive.dart';
import 'package:go_router/go_router.dart';
class Navbar extends StatelessWidget {
  final VoidCallback onHomeTap;
  final VoidCallback onAboutTap;
  final VoidCallback onSkillsTap;
  final VoidCallback onContactTap;
const Navbar({
    super.key,
    required this.onHomeTap,
    required this.onAboutTap,
    required this.onSkillsTap,
    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: SizedBox(height: 0,), desktop: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    InkWell(
      onTap: onHomeTap,
      child: Text('Home', style: TextStyle(color: Colors.grey[300], fontSize: 20, fontWeight: FontWeight.w500)),
    ),
    InkWell(
      onTap: onAboutTap,
      child: Text('About', style: TextStyle(color: Colors.grey[300], fontSize: 20, fontWeight: FontWeight.w500)),
    ),
    InkWell(
      onTap: onSkillsTap,
      child: Text('Skills', style: TextStyle(color: Colors.grey[300], fontSize: 20, fontWeight: FontWeight.w500)),
    ),
    InkWell(
      onTap: () => context.go('/projects'),
      child: Text('Projects', style: TextStyle(color: Colors.grey[300], fontSize: 20, fontWeight: FontWeight.w500)),
    ),
    InkWell(
      onTap: onContactTap,
      child: Text('Contact', style: TextStyle(color: Colors.grey[300], fontSize: 20, fontWeight: FontWeight.w500)),
    ),
  ],
),);
  }
}