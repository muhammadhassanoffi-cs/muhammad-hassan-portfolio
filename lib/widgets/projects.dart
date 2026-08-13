import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
        Future<void> launch(String url)async{
    final uri=Uri.parse(url);
    if(await canLaunchUrl(uri))
    {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
   }
    return Scaffold(
         backgroundColor: const Color(0xFF0B0F14),
         body:
    
    
     Responsive(
      mobile: SingleChildScrollView(
        child: Padding(padding:EdgeInsets.all(18) ,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
            children: [
              Container(height: 2, width: 40, color: Colors.redAccent),
              const SizedBox(width: 12),
              Text(
                'PROJECTS',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 16,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
      children: [
        Container(
          width: 6,
          height: 6,
          decoration: const BoxDecoration(color: Colors.redAccent, shape: BoxShape.circle),
        ),
        const SizedBox(width: 8),
        Text(
          'MY WORK',
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 9,
            letterSpacing: 2,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
    const SizedBox(height: 10),

    Text.rich(
      TextSpan(
        text: 'Projects that\nmake an ',
        style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold, height: 1.3),
        children: const [
          TextSpan(text: 'impact.', style: TextStyle(color: Colors.redAccent)),
        ],
      ),
    ),
    const SizedBox(height: 14),
    ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Text(
        "Here are some of the projects I've built. Each one taught me something new and brought me closer to solving real problems.",
        style: TextStyle(color: Colors.grey[400], fontSize: 11.5, height: 1.6),
      ),
    ),
    SizedBox(height: 10,),
    Row(
      children: [
        SizedBox(
  width: 130,
  height: 130,
  child: Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: const Color(0xFF161B22),
      borderRadius: BorderRadius.circular(14),
      border: Border.all(color: Colors.grey[850]!),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 80, 156, 219).withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text("♞", style: TextStyle(fontSize: 13)),
            ),
            const SizedBox(width: 6),
            const Expanded(
              child: Text(
                'Chess Game',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Icon(Icons.terminal, size: 12, color: Colors.grey[500]),
            const SizedBox(width: 4),
            Text('Console App', style: TextStyle(color: Colors.grey[500], fontSize: 9)),
          ],
        ),
SizedBox(height: 20,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.blue.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blue, width: 1),
          ),
          child: const Text('C++', style: TextStyle(color: Colors.blue, fontSize: 9, fontWeight: FontWeight.w600)),
        ),
        const SizedBox(height: 5),
        TextButton.icon(
          onPressed: () => launch("https://github.com/muhammadhassanoffi-cs/Chess-Game-OOP-Project"),
          style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: Size.zero),
          label: const Text('View Project', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w600, fontSize: 9)),
          icon: const Icon(Icons.arrow_forward, size: 11, color: Colors.redAccent),
          iconAlignment: IconAlignment.end,
        ),
      ],
    ),
  ),
),
SizedBox(width: 4,),
SizedBox(
  width: 130,
  height: 130,
  child: Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: const Color(0xFF161B22),
      borderRadius: BorderRadius.circular(14),
      border: Border.all(color: Colors.grey[850]!),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.orange.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.quiz, color: Colors.orangeAccent, size: 14),
            ),
            const SizedBox(width: 6),
            const Expanded(
              child: Text(
                'Quiz Game',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Icon(Icons.terminal, size: 12, color: Colors.grey[500]),
            const SizedBox(width: 4),
            Text('Console App', style: TextStyle(color: Colors.grey[500], fontSize: 9)),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.blue.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blue, width: 1),
          ),
          child: const Text('C++', style: TextStyle(color: Colors.blue, fontSize: 9, fontWeight: FontWeight.w600)),
        ),
        const SizedBox(height: 5),
        TextButton.icon(
          onPressed: () => launch("https://github.com/muhammadhassanoffi-cs/Console-Based-Quiz-Game"),
          style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: Size.zero),
          label: const Text('View Project', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w600, fontSize: 9)),
          icon: const Icon(Icons.arrow_forward, size: 11, color: Colors.redAccent),
          iconAlignment: IconAlignment.end,
        ),
      ],
    ),
  ),
),
      ],
    ),
    SizedBox(height: 10,),
    Row(
      children: [
        SizedBox(
  width: 130,
  height: 130,
  child: Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: const Color(0xFF161B22),
      borderRadius: BorderRadius.circular(14),
      border: Border.all(color: Colors.grey[850]!),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.green.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.account_balance, color: Colors.greenAccent, size: 14),
            ),
            const SizedBox(width: 6),
            const Expanded(
              child: Text(
                'Bank Management',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Icon(Icons.terminal, size: 12, color: Colors.grey[500]),
            const SizedBox(width: 4),
            Text('Console App', style: TextStyle(color: Colors.grey[500], fontSize: 9)),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.blue.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blue, width: 1),
          ),
          child: const Text('C++', style: TextStyle(color: Colors.blue, fontSize: 9, fontWeight: FontWeight.w600)),
        ),
        const SizedBox(height: 5),
        TextButton.icon(
          onPressed: () => launch("https://github.com/muhammadhassanoffi-cs/Bank-Account-Management-System"),
          style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: Size.zero),
          label: const Text('View Project', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w600, fontSize: 9)),
          icon: const Icon(Icons.arrow_forward, size: 11, color: Colors.redAccent),
          iconAlignment: IconAlignment.end,
        ),
      ],
    ),
  ),
), SizedBox(width: 4,),
SizedBox(
  width: 130,
  height: 130,
  child: Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: const Color(0xFF161B22),
      borderRadius: BorderRadius.circular(14),
      border: Border.all(color: Colors.grey[850]!),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.purple.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.storefront, color: Colors.purpleAccent, size: 14),
            ),
            const SizedBox(width: 6),
            const Expanded(
              child: Text(
              'Findly',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Icon(Icons.phone_android, size: 12, color: Colors.grey[500]),
            const SizedBox(width: 4),
            Text('Mobile App', style: TextStyle(color: Colors.grey[500], fontSize: 9)),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.blue.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blue, width: 1),
          ),
          child: const Text('Flutter', style: TextStyle(color: Colors.blue, fontSize: 9, fontWeight: FontWeight.w600)),
        ),
        const SizedBox(height: 5),
        TextButton.icon(
          onPressed: () => launch("https://github.com/muhammadhassanoffi-cs/Findly"),
          style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: Size.zero),
          label: const Text('View Project', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w600, fontSize: 9)),
          icon: const Icon(Icons.arrow_forward, size: 11, color: Colors.redAccent),
          iconAlignment: IconAlignment.end,
        ),
      ],
    ),
  ),
)
      ],
    ),
    SizedBox(height: 10,),
    Row(
      children: [
        SizedBox(
  width: 130,
  height: 130,
  child: Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: const Color(0xFF161B22),
      borderRadius: BorderRadius.circular(14),
      border: Border.all(color: Colors.grey[850]!),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.teal.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.insights, color: Colors.tealAccent, size: 14),
            ),
            const SizedBox(width: 6),
            const Expanded(
              child: Text(
                'GitHub Analyzer',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Icon(Icons.phone_android, size: 12, color: Colors.grey[500]),
            const SizedBox(width: 4),
            Text('Mobile App', style: TextStyle(color: Colors.grey[500], fontSize: 9)),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.cyan.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.cyan, width: 1),
          ),
          child: const Text('Flutter/Dart', style: TextStyle(color: Colors.cyan, fontSize: 9, fontWeight: FontWeight.w600)),
        ),
        const SizedBox(height: 5),
        TextButton.icon(
          onPressed: () => launch("https://github.com/muhammadhassanoffi-cs/GitHub_Analyzer"),
          style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: Size.zero),
          label: const Text('View Project', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w600, fontSize: 9)),
          icon: const Icon(Icons.arrow_forward, size: 11, color: Colors.redAccent),
          iconAlignment: IconAlignment.end,
        ),
      ],
    ),
  ),
),
SizedBox(width: 4,),
SizedBox(
  width: 130,
  height: 130,
  child: Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: const Color(0xFF161B22),
      borderRadius: BorderRadius.circular(14),
      border: Border.all(color: Colors.grey[850]!),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.amber.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.local_cafe, color: Colors.amberAccent, size: 14),
            ),
            const SizedBox(width: 6),
            const Expanded(
              child: Text(
                'Coffee Republic',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Icon(Icons.language, size: 12, color: Colors.grey[500]),
            const SizedBox(width: 4),
            Text('Web App', style: TextStyle(color: Colors.grey[500], fontSize: 9)),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.deepOrange.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.deepOrange, width: 1),
          ),
          child: const Text('HTML/CSS', style: TextStyle(color: Colors.deepOrange, fontSize: 9, fontWeight: FontWeight.w600)),
        ),
        const SizedBox(height: 5),
        TextButton.icon(
          onPressed: () => launch("https://github.com/muhammadhassanoffi-cs/Cofee-Republic"),
          style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: Size.zero),
          label: const Text('View Project', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w600, fontSize: 9)),
          icon: const Icon(Icons.arrow_forward, size: 11, color: Colors.redAccent),
          iconAlignment: IconAlignment.end,
        ),
      ],
    ),
  ),
),
      ],
    ),
    SizedBox(height: 20,),
    Row(
     
          children: [
            Column(
              children: [
                SizedBox(width: 20,),
                Text('3rd', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                Text('semester',style: TextStyle(
    color: Colors.grey[400],
    fontSize: 11,
    height: 1.8,
  ),),
              ],
            ),
            SizedBox(width: 37,),
             Column(
              children: [
                Text('6', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                Text('projects',style: TextStyle(
    color: Colors.grey[400],
    fontSize: 12,
    height: 1.8,
  ),),
              ],
            ),
              SizedBox(width: 37,),
             Column(
              children: [
                Text('100%', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                Text('Mobile self taught',style: TextStyle(
    color: Colors.grey[400],
    fontSize: 12,
    height: 1.8,
  ),),
  
              ],
            ),
        
            
          ],
        ),
        SizedBox(height: 20,)


          ],
        ) ,),
      ), 
      desktop: SingleChildScrollView(
        child: 
        Padding(padding: EdgeInsets.all(24),
        child: Column(
          children: [
             Row(
            children: [
              Container(height: 2, width: 40, color: Colors.redAccent),
              const SizedBox(width: 12),
              Text(
                'PROJECTS',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Row(
      children: [
        Container(
          width: 6,
          height: 6,
          decoration: const BoxDecoration(color: Colors.redAccent, shape: BoxShape.circle),
        ),
        const SizedBox(width: 8),
        Text(
          'MY WORK',
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 11,
            letterSpacing: 2,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
    const SizedBox(height: 8),
    Text.rich(
      TextSpan(
        text: 'Projects that\nmake an ',
        style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, height: 1.3),
        children: const [
          TextSpan(text: 'impact.', style: TextStyle(color: Colors.redAccent)),
        ],
      ),
    ),
    const SizedBox(height: 14),
    ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Text(
        "Here are some of the projects I've built. Each one taught me something new and brought me closer to solving real problems.",
        style: TextStyle(color: Colors.grey[400], fontSize: 12.5, height: 1.6),
      ),
    ),
  ],
),
ConstrainedBox(constraints: BoxConstraints(
  minHeight: 350,
  minWidth: 350,
maxHeight: 420,
maxWidth: 450,
),
child: Image.asset("assets/mypic/project.png")
),

        Row(
     
          children: [
            Column(
              children: [
                SizedBox(width: 10,),
                Text('3rd', style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                Text('semester',style: TextStyle(
    color: Colors.grey[400],
    fontSize: 16,
    height: 1.8,
  ),),
              ],
            ),
            SizedBox(width: 50,),
             Column(
              children: [
                Text('6', style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                Text('projects',style: TextStyle(
    color: Colors.grey[400],
    fontSize: 16,
    height: 1.8,
  ),),
              ],
            ),
              SizedBox(width: 50,),
             Column(
              children: [
                Text('100%', style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                Text('Mobile self taught',style: TextStyle(
    color: Colors.grey[400],
    fontSize: 16,
    height: 1.8,
  ),),
  
              ],
            ),
        
            
          ],
        )

                ],
              ),
              Column(
                children: [
                 Row(
                  children: [
                  
  


  SizedBox(
  width: 250,
  height: 180,
  child: Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: const Color(0xFF161B22),
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: Colors.grey[850]!),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 80, 156, 219).withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text("♞", style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Text(
                'Chess Game',
                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'Console-based chess game in C++ with full move validation and game logic.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey[500], fontSize: 12),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          decoration: BoxDecoration(
            color: Colors.blue.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blue, width: 1),
          ),
          child: const Text(
            'C++',
            style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ),
            SizedBox(height: 3,),
        TextButton.icon(
          onPressed: () {
            launch("https://github.com/muhammadhassanoffi-cs/Chess-Game-OOP-Project");
          },
          label: const Text(
            'View Project',
            style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w600, fontSize: 11),
          ),
          icon: const Icon(Icons.arrow_forward, size: 16, color: Colors.redAccent),
          iconAlignment: IconAlignment.end,
        ),
      ],
    ),
  ),
),
SizedBox(width: 10,),
SizedBox(
  width: 250,
  height: 180,
  child: Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: const Color(0xFF161B22),
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: Colors.grey[850]!),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.orange.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.quiz, color: Colors.orangeAccent, size: 18),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Text(
                'Quiz Game',
                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'Console-based quiz game in C++ with multiple categories, timer, score tracking, and lifelines.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey[500], fontSize: 12),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          decoration: BoxDecoration(
            color: Colors.blue.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blue, width: 1),
          ),
          child: const Text(
            'C++',
            style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ),
            SizedBox(height: 3,),
        TextButton.icon(
          onPressed: () {
            launch("https://github.com/muhammadhassanoffi-cs/Console-Based-Quiz-Game");
          },
          label: const Text(
            'View Project',
            style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w600, fontSize: 11),
          ),
          icon: const Icon(Icons.arrow_forward, size: 16, color: Colors.redAccent),
          iconAlignment: IconAlignment.end,
        ),
      ],
    ),
  ),
),
SizedBox(width: 10,),
SizedBox(
  width: 250,
  height: 180,
  
  child: Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
          color: const Color(0xFF161B22),
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: Colors.grey[850]!),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.green.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.account_balance, color: Colors.greenAccent, size: 18),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Text(
                'Bank Management System',
                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'A console-based banking system in C++ for managing accounts, deposits, withdrawals, and transaction history.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey[500], fontSize: 12),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          decoration: BoxDecoration(
            color: Colors.blue.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blue, width: 1),
          ),
          child: const Text(
            'C++',
            style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: 3,),
        TextButton.icon(
          onPressed: () {
            launch("https://github.com/muhammadhassanoffi-cs/Bank-Account-Management-System");
          },
          label: const Text(
            'View Project',
            style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w600, fontSize: 11),
          ),
          icon: const Icon(Icons.arrow_forward, size: 16, color: Colors.redAccent),
          iconAlignment: IconAlignment.end,
        ),
      ],
    ),
  ),
)

                  ],
                 ),
                 SizedBox(height: 10,),
                 Row(
                  children: [
                    SizedBox(
  width: 250,
  height: 180,
  child: Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: const Color(0xFF161B22),
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: Colors.grey[850]!),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.purple.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.storefront, color: Colors.purpleAccent, size: 18),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Text(
                'Findly',
                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'A campus marketplace and lost-and-found app for students. Built with Flutter and Supabase.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey[500], fontSize: 12),
        ),
        const Spacer(),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.blue.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue, width: 1),
              ),
              child: const Text(
                'Flutter',
                style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(width: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.green.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.green, width: 1),
              ),
              child: const Text(
                'Supabase',
                style: TextStyle(color: Colors.green, fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        const SizedBox(height: 3),
        TextButton.icon(
          onPressed: () {
            launch("https://github.com/muhammadhassanoffi-cs/Findly");
          },
          label: const Text(
            'View Project',
            style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w600, fontSize: 11),
          ),
          icon: const Icon(Icons.arrow_forward, size: 16, color: Colors.redAccent),
          iconAlignment: IconAlignment.end,
        ),
      ],
    ),
  ),
),
SizedBox(width: 10,),
SizedBox(
  width: 250,
  height: 180,
  child: Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: const Color(0xFF161B22),
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: Colors.grey[850]!),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.teal.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.insights, color: Colors.tealAccent, size: 18),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Text(
                'GitHub Profile Analyzer',
                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'Analyzes GitHub profiles, showing stats, top languages, repos, and AI-generated summaries.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey[500], fontSize: 12),
        ),
        const Spacer(),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.blue.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue, width: 1),
              ),
              child: const Text(
                'Flutter',
                style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(width: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.cyan.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.cyan, width: 1),
              ),
              child: const Text(
                'Dart',
                style: TextStyle(color: Colors.cyan, fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        const SizedBox(height: 3),
        TextButton.icon(
          onPressed: () {
            launch("https://github.com/muhammadhassanoffi-cs/GitHub_Analyzer");
          },
          label: const Text(
            'View Project',
            style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w600, fontSize: 11),
          ),
          icon: const Icon(Icons.arrow_forward, size: 16, color: Colors.redAccent),
          iconAlignment: IconAlignment.end,
        ),
      ],
    ),
  ),
),
SizedBox(width: 10,),
SizedBox(
  width: 250,
  height: 180,
  child: Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: const Color(0xFF161B22),
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: Colors.grey[850]!),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.amber.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.local_cafe, color: Colors.amberAccent, size: 18),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Text(
                'Coffee Republic',
                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'A responsive cafe website with menu, gallery, and reservation sections. Built with HTML and CSS.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey[500], fontSize: 12),
        ),
        const Spacer(),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.deepOrange.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.deepOrange, width: 1),
              ),
              child: const Text(
                'HTML',
                style: TextStyle(color: Colors.deepOrange, fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(width: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.blue.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue, width: 1),
              ),
              child: const Text(
                'CSS',
                style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        const SizedBox(height: 3),
        TextButton.icon(
          onPressed: () {
            launch("https://github.com/muhammadhassanoffi-cs/Cofee-Republic");
          },
          label: const Text(
            'View Project',
            style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w600, fontSize: 11),
          ),
          icon: const Icon(Icons.arrow_forward, size: 16, color: Colors.redAccent),
          iconAlignment: IconAlignment.end,
        ),
      ],
    ),
  ),
),

                  ],
                 ),

                ],
              )

            ],
          ),
            SizedBox(height: 30,),
          ],
        ),

        ),
      )),
      );
  }
}