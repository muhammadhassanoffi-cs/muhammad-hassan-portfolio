import 'package:flutter/material.dart';
   import 'package:go_router/go_router.dart';
import 'package:portfolio_website/widgets/projects.dart';
   import 'pages/homepage/home_page.dart';


final GoRouter _router=GoRouter(
  routes: [
   GoRoute(path: '/' , builder:(context,state)=>  HomePage(), ),
   GoRoute(path: '/projects', builder:(context, state) => const Projects(),),



],);

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0D1117),
      ),
    );
  }
}