
import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/responsive.dart';
class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile=Responsive.isMobile(context);
    return Responsive(
      mobile: SingleChildScrollView(
        child: 
        Padding(padding: EdgeInsets.all(18),
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               Align(
          alignment: Alignment.topLeft,
          child: 
          Row(
            children: [
              Container(height: 2, width: 40, color: Colors.redAccent),
              const SizedBox(width: 12),
              Text(
                'ABOUT',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 13,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 25,),
          Text(
  'I build things\nwith code — and curiosity.',
  style: TextStyle(
    color: Colors.white,
    fontSize: isMobile ? 20 : 38,
    fontWeight: FontWeight.bold,
    height: 1.25,
  ),
),
const SizedBox(height: 10),
 
Text(
  'I\'m a BSCS student at FAST-NUCES, currently shaping my skills in '
  'Flutter and mobile app development. I like taking an idea from a '
  'rough concept to a clean, working app. Alongside that, I\'m also a '
  'C++ programmer, and I\'m genuinely curious about AI and automation '
  'tools — an area I\'m actively exploring and hope to dive deeper into '
  'as I grow.',
  style: TextStyle(
    color: Colors.grey[400],
    fontSize: 16,
    height: 1.8,
  ),
),
SizedBox(height: 20,),
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
              TextSpan(text: '  Developer', style: TextStyle(color: Colors.white)),
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
                TextSpan(text: '  AI_Enthusiast, CppProgrammer {', style: TextStyle(color: Colors.grey)),
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
                TextSpan(text: 'name', style: TextStyle(color: Colors.lightBlueAccent)),
                TextSpan(text: "  = 'Muhammad Hassan';", style: TextStyle(color: Colors.grey)),
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
                TextSpan(text: 'stack', style: TextStyle(color: Colors.lightBlueAccent)),
                TextSpan(text: "  = ['Flutter', 'Dart', 'C++'];", style: TextStyle(color: Colors.grey)),
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
                TextSpan(text: 'interests', style: TextStyle(color: Colors.lightBlueAccent)),
                TextSpan(text: "  = ['AI', 'Problem Solving'];", style: TextStyle(color: Colors.grey)),
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
                TextSpan(text: 'focus', style: TextStyle(color: Colors.lightBlueAccent)),
                TextSpan(text: "  = 'Mobile Apps';", style: TextStyle(color: Colors.grey)),
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
                TextSpan(text: 'goal', style: TextStyle(color: Colors.lightBlueAccent)),
               TextSpan(text: "  = 'Build Impactful Softwares which solves problems';", style: TextStyle(color: Colors.grey)),
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
 SizedBox(height: 10,),

        Row(
          
     
          children: [
            // SizedBox(width: 10,),
            Column(
              children: [
                Text('3rd', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                Text('semester',style: TextStyle(
    color: Colors.grey[400],
    fontSize: 10,
    height: 1.8,
  ),),
              ],
            ),
            SizedBox(width: 10,),
             Column(
              children: [
                Text('6+', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                Text('projects',style: TextStyle(
    color: Colors.grey[400],
    fontSize: 10,
    height: 1.8,
  ),),
              ],
            ),
              SizedBox(width: 10,),
             Column(
              children: [
                Text('100%', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                Text('Mobile self taught',style: TextStyle(
    color: Colors.grey[400],
    fontSize: 10,
    height: 1.8,
  ),),
              ],
            ),
            SizedBox(width: 10,),
             Column(
              children: [
                Text('BSCS', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                Text('Fast Nuces',style: TextStyle(
    color: Colors.grey[400],
    fontSize: 10,
    height: 1.8,
  ),),
  
              ],
            ),
          ],
        )
        
  

          ],
        ),
      ),

      ),
     desktop:SingleChildScrollView(
     child:
     Padding(padding: EdgeInsets.all(48),
     child: 
     
      Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: 
         Row(
            children: [
              Container(height: 2, width: 40, color: Colors.redAccent),
              const SizedBox(width: 12),
              Text(
                'ABOUT',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 13,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          ConstrainedBox(constraints: BoxConstraints(
            maxWidth: 600,
          ),
          child: 

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              
            Text(
  'I build things\nwith code — and curiosity.',
  style: TextStyle(
    color: Colors.white,
    fontSize: isMobile ? 28 : 38,
    fontWeight: FontWeight.bold,
    height: 1.25,
  ),
),
const SizedBox(height: 24),
 
Text(
  'I\'m a BSCS student at FAST-NUCES, currently shaping my skills in '
  'Flutter and mobile app development. I like taking an idea from a '
  'rough concept to a clean, working app. Alongside that, I\'m also a '
  'C++ programmer, and I\'m genuinely curious about AI and automation '
  'tools — an area I\'m actively exploring and hope to dive deeper into '
  'as I grow.',
  style: TextStyle(
    color: Colors.grey[400],
    fontSize: 16,
    height: 1.8,
  ),
),

              ],
            ),
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
              TextSpan(text: '  Developer', style: TextStyle(color: Colors.white)),
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
                TextSpan(text: '  AI_Enthusiast, CppProgrammer {', style: TextStyle(color: Colors.grey)),
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
                TextSpan(text: 'name', style: TextStyle(color: Colors.lightBlueAccent)),
                TextSpan(text: "  = 'Muhammad Hassan';", style: TextStyle(color: Colors.grey)),
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
                TextSpan(text: 'stack', style: TextStyle(color: Colors.lightBlueAccent)),
                TextSpan(text: "  = ['Flutter', 'Dart', 'C++'];", style: TextStyle(color: Colors.grey)),
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
                TextSpan(text: 'interests', style: TextStyle(color: Colors.lightBlueAccent)),
                TextSpan(text: "  = ['AI', 'Problem Solving'];", style: TextStyle(color: Colors.grey)),
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
                TextSpan(text: 'focus', style: TextStyle(color: Colors.lightBlueAccent)),
                TextSpan(text: "  = 'Mobile Apps';", style: TextStyle(color: Colors.grey)),
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
                TextSpan(text: 'goal', style: TextStyle(color: Colors.lightBlueAccent)),
               TextSpan(text: "  = 'Build Impactful Softwares which solves problems';", style: TextStyle(color: Colors.grey)),
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
        SizedBox(height: 20,),
        Row(
     
          children: [
            Column(
              children: [
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
            SizedBox(width: 45,),
             Column(
              children: [
                Text('6+', style: TextStyle(
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
              SizedBox(width: 45,),
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
            SizedBox(width: 45,),
             Column(
              children: [
                Text('BSCS', style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                Text('Fast Nuces',style: TextStyle(
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
     ),
    ) );
  }
}