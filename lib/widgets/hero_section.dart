import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/responsive.dart';
import 'package:go_router/go_router.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onExploreTap;

  const HeroSection({super.key, required this.onExploreTap});
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile:
      Padding(padding: EdgeInsets.all(18),
      child: 
      Column(
    crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: 
           Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withValues(alpha: 0.4),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
            child: 
            
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/mypic/mypic.png"),),),),
              const SizedBox(height: 34),
                Text(
  'Hi, I\'m',
  style: TextStyle(
    color: Colors.grey[400],
    fontSize: 19,
  ),
),
Text(
  'M.Hassan',
  style: TextStyle(
    color: Colors.grey[100],
    fontSize: 35,
    fontWeight: FontWeight.bold,
  ),
),
SizedBox(height: 5,),
SizedBox(height:30,
child:AnimatedTextKit(
  animatedTexts:
  [
    TyperAnimatedText(
      'C++ Software Engineer ',
      textStyle: TextStyle(
          color: Colors.grey[100],
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        speed:Duration(milliseconds:80),
    ),
    TyperAnimatedText(
        'Flutter App Developer',
        textStyle: TextStyle(
          color: Colors.grey[100],
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        speed: const Duration(milliseconds: 80),
      ),
  ],
  repeatForever:true,
  pause:Duration(milliseconds:1500),
)
),
SizedBox(height: 25,),
Row(
  children: [
    ElevatedButton(  
      onPressed:(){
         context.go('/projects');
      },
    style: ElevatedButton.styleFrom(
       backgroundColor: Colors.white,
       padding: EdgeInsets.symmetric(horizontal: 18,vertical: 8),
       shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
       )
    )
    , child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        
        Text('Projects', style: TextStyle(color: Colors.black)),
      ],
    ))

  ],
),
        ],
      ) ,
    ),
    desktop: Column(
      children: [

        Row( 
        
          children: [
            SizedBox(width: 50,),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withValues(alpha: 0.4),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
            child: 
            
            CircleAvatar(
              radius: 135,
              backgroundImage: AssetImage("assets/mypic/mypic.png"),),),
              SizedBox(width: 48,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                 Text(
  'Hi, I\'m',
  style: TextStyle(
    color: Colors.grey[400],
    fontSize: 20,
  ),
),
Text(
  'Muhammad Hassan',
  style: TextStyle(
    color: Colors.grey[100],
    fontSize: 48,
    fontWeight: FontWeight.bold,
  ),
),
SizedBox(height:40,
child:AnimatedTextKit(
  animatedTexts:
  [
    TyperAnimatedText(
      'C++ Software Engineer ',
      textStyle: TextStyle(
          color: Colors.grey[100],
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        speed:Duration(milliseconds:80),
    ),
    TyperAnimatedText(
        'Flutter App Developer',
        textStyle: TextStyle(
          color: Colors.grey[100],
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        speed: const Duration(milliseconds: 80),
      ),
  ],
  repeatForever:true,
  pause:Duration(milliseconds:1500),
)
),
SizedBox(height: 20,),
Row(
  children: [
    ElevatedButton(  
      onPressed: onExploreTap,
    style: ElevatedButton.styleFrom(
       backgroundColor: Colors.white,
       padding: EdgeInsets.symmetric(horizontal: 24,vertical: 14),
       shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
       )
    )
    , child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.arrow_forward,color: Colors.black, size: 18),
        SizedBox(width: 4,),
        Text('Explore more', style: TextStyle(color: Colors.black)),
      ],
    ))

  ],
)
                ],
              ),
          ],
        )

      ],
    ),);

  }
}