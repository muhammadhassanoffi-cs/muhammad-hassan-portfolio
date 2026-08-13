import 'package:flutter/material.dart';
import 'package:portfolio_website/utils/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});
   
  @override
  Widget build(BuildContext context) {
    Future<void> launch(String url, {LaunchMode mode = LaunchMode.externalApplication}) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: mode);
  }
}
    return Responsive(
      mobile:SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(18),
        child:Column(
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
                'CONTACT',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 13,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w700,
                ),
              ),
              ],
            ),
            SizedBox(height: 20,),
             Row(
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.redAccent,
                  ), 
                ),
                   SizedBox(width: 10,), 
                 Text(
                'Be in touch',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 13,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w700,
                ),
              ),

              ],
            ),
             const SizedBox(height: 20),
        Text.rich(
          TextSpan(
            text: "Let's connect and build\n",
            style: const TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold, height: 1.3),
            children: [
              TextSpan(text: 'something great', style: TextStyle(color: Colors.redAccent)),
              const TextSpan(text: ' together.'),
            ],
          ),
        ),
        const SizedBox(height: 20),
       ConstrainedBox(constraints: 
       BoxConstraints(
        maxWidth: 400,
       ),
       child:  Text(
          "I'm always open to new opportunities, collaborations, or just a "
          "friendly hello. Feel free to reach out through any of the "
          "platforms below.",
          style: TextStyle(color: Colors.grey[400], fontSize: 13.5, height: 1.7),
        ),
       ),
        SizedBox(height: 20,),
       
       
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF161B22),
            borderRadius: BorderRadius.circular(12),
            border: Border(left: BorderSide(color:Colors.redAccent ,width: 3))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Icon(Icons.format_quote, color: Colors.redAccent.withValues(alpha: 0.6), size: 20),
                 const SizedBox(height: 6),
              Text(
                'Great ideas start with a conversation. I look forward to hearing from you!',
                style: TextStyle(color: Colors.grey[300], fontSize: 12, fontStyle: FontStyle.italic, height: 1.6),
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
       Row(
  children: [
    InkWell(
      onTap: () {
  launch("mailto:muhammadhassan.offi@gmail.com", mode: LaunchMode.platformDefault);
},
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 129,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFF161B22),
          borderRadius: BorderRadius.circular(12),
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
                    color: Colors.redAccent.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.mail_outline, color: Colors.redAccent, size: 16),
                ),
                const Spacer(),
                Icon(Icons.north_east, color: Colors.grey[600], size: 14),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Email',
              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              'Drop a mail',
              style: TextStyle(color: Colors.grey[500], fontSize: 10.5),
            ),
            const SizedBox(height: 6),
            const Text(
              'muhammadhassan.offi@gmail.com',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.redAccent, fontSize: 10.5, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    ),
    const SizedBox(width: 8),
    InkWell(
      onTap: () {
        launch("https://wa.me/923080620335");
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 129,
        height: 138,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFF161B22),
          borderRadius: BorderRadius.circular(12),
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
                    color: const Color.fromARGB(255, 131, 221, 134).withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.message, color: Color.fromARGB(255, 131, 221, 134), size: 16),
                ),
                const Spacer(),
                Icon(Icons.north_east, color: Colors.grey[600], size: 14),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'WhatsApp',
              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              "Let's chat",
              style: TextStyle(color: Colors.grey[500], fontSize: 10.5),
            ),
            const SizedBox(height: 6),
            const Text(
              '0308 0620335',
              style: TextStyle(color: Color.fromARGB(255, 77, 191, 81), fontSize: 10.5, fontWeight: FontWeight.w700),
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
    InkWell(
      onTap: () {
        launch("https://www.linkedin.com/in/muhammad-hassan-0886a5399/");
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 129,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFF161B22),
          borderRadius: BorderRadius.circular(12),
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
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.business_center, color: Color.fromARGB(255, 80, 156, 219), size: 16),
                ),
                const Spacer(),
                Icon(Icons.north_east, color: Colors.grey[600], size: 14),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'LinkedIn',
              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              'Connect with me',
              style: TextStyle(color: Colors.grey[500], fontSize: 10.5),
            ),
            const SizedBox(height: 6),
            const Text(
              'linkedin.com/in/muhammad-hassan',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Color.fromARGB(255, 16, 106, 179), fontSize: 10.5, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    ),
    const SizedBox(width: 8),
    InkWell(
      onTap: () {
        launch("https://github.com/muhammadhassanoffi-cs");
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 129,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFF161B22),
          borderRadius: BorderRadius.circular(12),
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
                    color: const Color.fromARGB(255, 102, 103, 102).withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.code, color: Color.fromARGB(255, 238, 240, 238), size: 16),
                ),
                const Spacer(),
                Icon(Icons.north_east, color: Colors.grey[600], size: 14),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'GitHub',
              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              'My repositories',
              style: TextStyle(color: Colors.grey[500], fontSize: 10.5),
            ),
            const SizedBox(height: 6),
            const Text(
              'github.com/muhammadhassanoffi-cs',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Color.fromARGB(255, 241, 243, 241), fontSize: 10.5, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    ),
  ],
),
SizedBox(height: 50,),
         

          ],
        ) ,
        ),
      ),
       desktop: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(24),
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
                'CONTACT',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 13,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w700,
                ),
              ),
              ],
            ),
            SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            Row(
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.redAccent,
                  ), 
                ),
                   SizedBox(width: 10,), 
                 Text(
                'Be in touch',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 13,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w700,
                ),
              ),

              ],
            ),
             const SizedBox(height: 20),
        Text.rich(
          TextSpan(
            text: "Let's connect and build\n",
            style: const TextStyle(color: Colors.white, fontSize: 34, fontWeight: FontWeight.bold, height: 1.3),
            children: [
              TextSpan(text: 'something great', style: TextStyle(color: Colors.redAccent)),
              const TextSpan(text: ' together.'),
            ],
          ),
        ),
        const SizedBox(height: 20),
       ConstrainedBox(constraints: 
       BoxConstraints(
        maxWidth: 500,
       ),
       child:  Text(
          "I'm always open to new opportunities, collaborations, or just a "
          "friendly hello. Feel free to reach out through any of the "
          "platforms below.",
          style: TextStyle(color: Colors.grey[400], fontSize: 15.5, height: 1.7),
        ),
       ),
        SizedBox(height: 20,),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFF161B22),
            borderRadius: BorderRadius.circular(14),
            border: Border(left: BorderSide(color:Colors.redAccent ,width: 3))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Icon(Icons.format_quote, color: Colors.redAccent.withValues(alpha: 0.6), size: 26),
                 const SizedBox(height: 6),
              Text(
                'Great ideas start with a conversation. I look forward to hearing from you!',
                style: TextStyle(color: Colors.grey[300], fontSize: 14, fontStyle: FontStyle.italic, height: 1.6),
              ),
            ],
          ),
        ),
              ],
            ),

            Column(
              children: [
                Row(
                  children: [
                    InkWell(
onTap: () {
  launch("mailto:muhammadhassan.offi@gmail.com", mode: LaunchMode.platformDefault);
},
  borderRadius: BorderRadius.circular(16),
  child: Container(
     width: 280,
    padding: const EdgeInsets.all(18),
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
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.redAccent.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.mail_outline, color: Colors.redAccent, size: 20),
            ),
            const SizedBox(width: 12),
            const Expanded(
              child: Text(
                'Email',
                style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
             Text(
      'Tap to open',
      style: TextStyle(color: Colors.grey[600], fontSize: 11, fontWeight: FontWeight.w500),
    ),SizedBox(width: 2,),
            Icon(Icons.north_east, color: Colors.grey[600], size: 16),
          ],
        ),
        const SizedBox(height: 14),
        Text('Drop me a mail anytime', style: TextStyle(color: Colors.grey[500], fontSize: 13)),
        const SizedBox(height: 6),
        const Text(
          'muhammadhassan.offi@gmail.com',
          style: TextStyle(color: Colors.redAccent, fontSize: 13.5, fontWeight: FontWeight.w700),
        ),
      ],
    ),
  ),
),
SizedBox(width: 15,),
 InkWell(
onTap: () {
  launch("https://wa.me/923080620335");
},
  borderRadius: BorderRadius.circular(16),
  child: Container(
     width: 280,
    padding: const EdgeInsets.all(18),
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
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 131, 221, 134).withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.message, color: Color.fromARGB(255, 131, 221, 134) , size: 20),
            ),
            const SizedBox(width: 12),
            const Expanded(
              child: Text(
                'WhatsApp',
                style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
             Text(
      'Tap to open',
      style: TextStyle(color: Colors.grey[600], fontSize: 11, fontWeight: FontWeight.w500),
    ),SizedBox(width: 2,),
            Icon(Icons.north_east, color: Colors.grey[600], size: 16),
          ],
        ),
        const SizedBox(height: 14),
        Text('Lets chat directly', style: TextStyle(color: Colors.grey[500], fontSize: 13)),
        const SizedBox(height: 6),
        const Text(
          '03080620335',
          style: TextStyle(color: Color.fromARGB(255, 77, 191, 81), fontSize: 13.5, fontWeight: FontWeight.w700),
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
                    InkWell(
onTap: () {
  launch("https://www.linkedin.com/in/muhammad-hassan-0886a5399/");
},
  borderRadius: BorderRadius.circular(16),
  child: Container(
     width: 280,
    padding: const EdgeInsets.all(18),
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
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 80, 156, 219).withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.business_center, color: Color.fromARGB(255, 80, 156, 219), size: 20),
            ),
            const SizedBox(width: 12),
            const Expanded(
              child: Text(
                'LinkedIn',
                style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
             Text(
      'Tap to open',
      style: TextStyle(color: Colors.grey[600], fontSize: 11, fontWeight: FontWeight.w500),
    ),SizedBox(width: 2,),
            Icon(Icons.north_east, color: Colors.grey[600], size: 16),
          ],
        ),
        const SizedBox(height: 14),
        Text('Connect with me professionally', style: TextStyle(color: Colors.grey[500], fontSize: 13)),
        const SizedBox(height: 6),
        const Text(
          'linkedin.com/in/muhammad-hassan',
          style: TextStyle(color: Color.fromARGB(255, 16, 106, 179), fontSize: 13.5, fontWeight: FontWeight.w700),
        ),
      ],
    ),
  ),
),
SizedBox(width: 15,),
 InkWell(
onTap: () {
  launch("https://github.com/muhammadhassanoffi-cs");
},
  borderRadius: BorderRadius.circular(16),
  child: Container(
     width: 280,
    padding: const EdgeInsets.all(18),
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
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 102, 103, 102).withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              
              child: const Icon(Icons.code, color: Color.fromARGB(255, 238, 240, 238) , size: 20),
            ),
            const SizedBox(width: 12),
            const Expanded(
              child: Text(
                'GitHub',
                style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
      'Tap to open',
      style: TextStyle(color: Colors.grey[600], fontSize: 11, fontWeight: FontWeight.w500),
    ),SizedBox(width: 2,),
            Icon(Icons.north_east, color: Colors.grey[600], size: 16),
          ],
        ),
        const SizedBox(height: 14),
        Text('Check out my repositories', style: TextStyle(color: Colors.grey[500], fontSize: 13)),
        const SizedBox(height: 6),
        const Text(
          'github.com/muhammadhassanoffi-cs',
          style: TextStyle(color: Color.fromARGB(255, 241, 243, 241), fontSize: 13.5, fontWeight: FontWeight.w700),
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
SizedBox(height: 60,),
          ],
        ),
        ),
       ));
  }
}