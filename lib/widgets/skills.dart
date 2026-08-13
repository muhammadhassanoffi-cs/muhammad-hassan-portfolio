import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/responsive.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isdesktop=Responsive.isDesktop(context);
    return Responsive(
      mobile: Padding(padding: EdgeInsets.all(18),
      child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 2,
                  width: 40,
                  color: Colors.redAccent,
                ),
                SizedBox(width: 12,),
                 Text(
                'SKILLS',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 13,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w700,
                ),
              ),
              ],
            ),
            const SizedBox(height: 12),
          const Text(
            'What I work with',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
           ConstrainedBox(
  constraints: const BoxConstraints(maxWidth: 480),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Technologies I use',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'to build real solutions.',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
      ),
      const SizedBox(height: 12),
      Text(
        'I enjoy turning ideas into clean, efficient and impactful '
        'applications using modern tools and technologies.',
        style: TextStyle(
          color: Colors.grey[400],
          fontSize: 13,
        ),
      ),
    ],
  ),
),
SizedBox(height: 30,),
Wrap(
  children: [
     Card(
  elevation: 2,
  color: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: 70,
    height:70,
    padding: const EdgeInsets.all(10),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.flutter_dash, color: Colors.blueAccent),
        const SizedBox(height: 8),
        Text(
          'Flutter',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    ),
  ),
),
    SizedBox(width: 5,),
    Card(
  elevation: 2,
  color: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: 70,
    height: 70,
    padding: const EdgeInsets.all(10),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.code, color: Colors.tealAccent),
        const SizedBox(height: 8),
        Text(
          'Dart',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    ),
  ),
),
  SizedBox(width: 5,),
    Card(
  elevation: 2,
  color: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: 70,
    height: 70,
    padding: const EdgeInsets.all(10),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.memory, color:  Colors.deepPurpleAccent),
        const SizedBox(height: 8),
        Text(
          'C++',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    ),
  ),
),
 SizedBox(width: 5,),
    Card(
  elevation: 2,
  color: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: 70,
    height: 70,
    padding: const EdgeInsets.all(10),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.hub, color:  Colors.orangeAccent),
        const SizedBox(height: 8),
        Text(
          'API',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    ),
  ),
),
 SizedBox(width: 5,),
    Card(
  elevation: 2,
  color: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: 70,
    height: 70,
    padding: const EdgeInsets.all(10),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.storage, color:  Colors.amberAccent),
        const SizedBox(height: 8),
        Text(
          'SupaBase',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    ),
  ),
),
 SizedBox(width: 5,),
    Card(
  elevation: 2,
  color: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: 70,
    height: 70,
    padding: const EdgeInsets.all(10),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.merge_type, color: Colors.pinkAccent),
        const SizedBox(height: 8),
        Text(
          'Git',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    ),
  ),
),
 SizedBox(width: 5,),
    Card(
  elevation: 2,
  color: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: 70,
    height: 70,
    padding: const EdgeInsets.all(10),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.design_services, color: Colors.cyanAccent),
        const SizedBox(height: 8),
        Text(
          'UI/UX',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    ),
  ),
),
 SizedBox(width: 5,),
    Card(
  elevation: 2,
  color: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: 70,
    height: 70,
    padding: const EdgeInsets.all(10),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.psychology, color: Colors.greenAccent),
        const SizedBox(height: 8),
        Text(
          'Problem Solving',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    ),
  ),
),
  ],
),
SizedBox(height: 15,),
Card(
  elevation: 2,
  color: const Color.fromARGB(255, 33, 32, 32),
  child: Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          
          children: [
            Container(width: 12, height: 12, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.red)),
            const SizedBox(width: 6),
            Container(width: 12, height: 12, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.yellow)),
            const SizedBox(width: 6),
            Container(width: 12, height: 12, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.green)),
          ],
        ),
        const SizedBox(height: 20),

        RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 14.5, fontFamily: 'monospace'),
            children: [
              TextSpan(text: 'class', style: TextStyle(color: Colors.purpleAccent)),
              TextSpan(text: '  Skills', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 6),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 14.5, fontFamily: 'monospace'),
              children: [
                TextSpan(text: 'implements', style: TextStyle(color: Colors.orangeAccent)),
                TextSpan(text: '  Toolkits {', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 6),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 14.5, fontFamily: 'monospace'),
              children: [
                TextSpan(text: 'languages', style: TextStyle(color: Colors.lightBlueAccent)),
                TextSpan(text: "  = ['C++', 'Dart'];", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 6),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 14.5, fontFamily: 'monospace'),
              children: [
                TextSpan(text: 'framework', style: TextStyle(color: Colors.lightBlueAccent)),
                TextSpan(text: "  = 'Flutter';", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 6),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 14.5, fontFamily: 'monospace'),
              children: [
                TextSpan(text: 'backend', style: TextStyle(color: Colors.lightBlueAccent)),
                TextSpan(text: "  = 'supabase';", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 6),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 14.5, fontFamily: 'monospace'),
              children: [
                TextSpan(text: 'tools', style: TextStyle(color: Colors.lightBlueAccent)),
                TextSpan(text: "  = ['Git' , 'GitHub' ,'APIs'];", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 6),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 14.5, fontFamily: 'monospace'),
              children: [
                TextSpan(text: 'softskills', style: TextStyle(color: Colors.lightBlueAccent)),
               TextSpan(text: "  = 'problemsolving';", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 6),
          child: Text('}', style: TextStyle(color: Colors.lightBlueAccent, fontFamily: 'monospace', fontSize: 14.5)),
        ),
      ],
    ),
  ),
),


          ],
        ),
      ) ,
      ),
       desktop: Padding(padding: EdgeInsets.all(34),
       child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 2,
                  width: 40,
                  color: Colors.redAccent,
                ),
                SizedBox(width: 12,),
                 Text(
                'SKILLS',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 13,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w700,
                ),
              ),
              ],
            ),
const SizedBox(height: 16),
          const Text(
            'What I work with',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              ConstrainedBox(
  constraints: const BoxConstraints(maxWidth: 480),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Technologies I use',
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'to build real solutions.',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
      ),
      const SizedBox(height: 12),
      Text(
        'I enjoy turning ideas into clean, efficient and impactful '
        'applications using modern tools and technologies.',
        style: TextStyle(
          color: Colors.grey[400],
          fontSize: 15,
        ),
      ),
    ],
  ),
),
SizedBox(height: 30,),
Row(
  children: [
   Card(
  elevation: 2,
  color: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: 70,
    height:70,
    padding: const EdgeInsets.all(10),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.flutter_dash, color: Colors.blueAccent),
        const SizedBox(height: 8),
        Text(
          'Flutter',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    ),
  ),
),
    SizedBox(width: 5,),
    Card(
  elevation: 2,
  color: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: 70,
    height: 70,
    padding: const EdgeInsets.all(10),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.code, color: Colors.tealAccent),
        const SizedBox(height: 8),
        Text(
          'Dart',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    ),
  ),
),
  SizedBox(width: 5,),
    Card(
  elevation: 2,
  color: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: 70,
    height: 70,
    padding: const EdgeInsets.all(10),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.memory, color:  Colors.deepPurpleAccent),
        const SizedBox(height: 8),
        Text(
          'C++',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    ),
  ),
),
 SizedBox(width: 5,),
    Card(
  elevation: 2,
  color: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: 70,
    height: 70,
    padding: const EdgeInsets.all(10),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.hub, color:  Colors.orangeAccent),
        const SizedBox(height: 8),
        Text(
          'API',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    ),
  ),
),
 SizedBox(width: 5,),
    Card(
  elevation: 2,
  color: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: 70,
    height: 70,
    padding: const EdgeInsets.all(10),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.storage, color:  Colors.amberAccent),
        const SizedBox(height: 8),
        Text(
          'SupaBase',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    ),
  ),
),
 SizedBox(width: 5,),
    Card(
  elevation: 2,
  color: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: 70,
    height: 70,
    padding: const EdgeInsets.all(10),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.merge_type, color: Colors.pinkAccent),
        const SizedBox(height: 8),
        Text(
          'Git',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    ),
  ),
),
 SizedBox(width: 5,),
    Card(
  elevation: 2,
  color: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: 70,
    height: 70,
    padding: const EdgeInsets.all(10),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.design_services, color: Colors.cyanAccent),
        const SizedBox(height: 8),
        Text(
          'UI/UX',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    ),
  ),
),
 SizedBox(width: 5,),
    Card(
  elevation: 2,
  color: const Color.fromARGB(255, 29, 29, 29),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: 70,
    height: 70,
    padding: const EdgeInsets.all(10),
    child: Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.psychology, color: Colors.greenAccent),
        const SizedBox(height: 8),
        Text(
          'Problem Solving',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 12,
          ),
        ),
      ],
    ),
  ),
),
  ],
)
            ],
          ),
 Card(
  elevation: 2,
  color: const Color.fromARGB(255, 33, 32, 32),
  child: Padding(
    padding: const EdgeInsets.all(24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          
          children: [
            Container(width: 12, height: 12, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.red)),
            const SizedBox(width: 6),
            Container(width: 12, height: 12, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.yellow)),
            const SizedBox(width: 6),
            Container(width: 12, height: 12, decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.green)),
          ],
        ),
        const SizedBox(height: 20),

        RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 14.5, fontFamily: 'monospace'),
            children: [
              TextSpan(text: 'class', style: TextStyle(color: Colors.purpleAccent)),
              TextSpan(text: '  Skills', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 6),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 14.5, fontFamily: 'monospace'),
              children: [
                TextSpan(text: 'implements', style: TextStyle(color: Colors.orangeAccent)),
                TextSpan(text: '  Toolkits {', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 6),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 14.5, fontFamily: 'monospace'),
              children: [
                TextSpan(text: 'languages', style: TextStyle(color: Colors.lightBlueAccent)),
                TextSpan(text: "  = ['C++', 'Dart'];", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 6),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 14.5, fontFamily: 'monospace'),
              children: [
                TextSpan(text: 'framework', style: TextStyle(color: Colors.lightBlueAccent)),
                TextSpan(text: "  = 'Flutter';", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 6),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 14.5, fontFamily: 'monospace'),
              children: [
                TextSpan(text: 'backend', style: TextStyle(color: Colors.lightBlueAccent)),
                TextSpan(text: "  = 'supabase';", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 6),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 14.5, fontFamily: 'monospace'),
              children: [
                TextSpan(text: 'tools', style: TextStyle(color: Colors.lightBlueAccent)),
                TextSpan(text: "  = ['Git' , 'GitHub' ,'APIs'];", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 6),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 14.5, fontFamily: 'monospace'),
              children: [
                TextSpan(text: 'softskills', style: TextStyle(color: Colors.lightBlueAccent)),
               TextSpan(text: "  = 'problemsolving';", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 6),
          child: Text('}', style: TextStyle(color: Colors.lightBlueAccent, fontFamily: 'monospace', fontSize: 14.5)),
        ),
      ],
    ),
  ),
),
            ],
          )
          


          ],
        ),
       ),
       ),
       
       );
  }
}