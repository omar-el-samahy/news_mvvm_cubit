import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> text, image;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    // Define the animations for the image and text
    image = Tween<Offset>(begin: Offset(0, -5), end: Offset(0, 0))
        .animate(animationController);
    text = Tween<Offset>(begin: Offset(0, 5), end: Offset(0, 0))
        .animate(animationController);
    animationController.forward();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushNamed(context, "home");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center the content
        children: [
          SlideTransition(
            position: image,
            child: Padding(
              padding: const EdgeInsets.all(7.5),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://media.istockphoto.com/id/1328182974/video/4k-global-earth-map-rotating-digital-world-breaking-news-studio-loop-background.jpg?s=640x640&k=20&c=rSa1fIMB4jYYUmL_E7RIZy_UXNmf1DJEqz-9QZ7JL0M="),
                      fit: BoxFit.fill),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          SlideTransition(
            position: text,
            child: Text(
              "Welcome To News",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
