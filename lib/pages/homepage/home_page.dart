import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/responsive.dart';
import 'package:portfolio_website/widgets/about.dart';
import 'package:portfolio_website/widgets/contact.dart';
import 'package:portfolio_website/widgets/hero_section.dart';
import 'package:portfolio_website/widgets/navbar.dart';

import 'package:portfolio_website/widgets/skills.dart';
class HomePage extends StatefulWidget
{
  const HomePage({super.key});

  @override
  State<HomePage> createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>{

final GlobalKey _homeKey = GlobalKey();
final GlobalKey _aboutKey = GlobalKey();
final GlobalKey _skillsKey = GlobalKey();
final GlobalKey _contactKey = GlobalKey();
void _ScrollTo(GlobalKey key)
{
  final targetplace=key.currentContext;
  if(targetplace!=null)
  {
    Scrollable.ensureVisible(targetplace,
    duration: Duration(milliseconds: 500),
    curve: Curves.easeInOut,
    );
  }
}
  @override
  Widget build(BuildContext context) {
    final isCompact = !Responsive.isDesktop(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
         Navbar(
  onHomeTap: () => _ScrollTo(_homeKey),
  onAboutTap: () => _ScrollTo(_aboutKey),
  onSkillsTap: () => _ScrollTo(_skillsKey),
  onContactTap: () => _ScrollTo(_contactKey),
),
          
                   SizedBox(height: isCompact ? 0 : 75),
            KeyedSubtree(
  key: _homeKey,
  child: HeroSection(onExploreTap: () => _ScrollTo(_aboutKey)),
),
     
            SizedBox(height: isCompact ? 25 : 80),
        KeyedSubtree(key: _aboutKey,child:     const About(),),
            SizedBox(height: isCompact ? 25 : 50),
          KeyedSubtree(key: _skillsKey, child:   SkillsSection(),),
             SizedBox(height: isCompact ? 25 : 50),
         KeyedSubtree(key: _contactKey,child:     ContactSection(),),
               SizedBox(height: isCompact ? 25 : 50),


          ],
        ),
      ),
    );
  }
}