import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_sh/core/images.dart';
import 'package:project_sh/pages/home/view.dart';
class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.sizeOf(context).height;
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.backRound),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(height: size / 2 - 270),
                const Text(
                  textAlign: TextAlign.center,
                  'مجمع النهرين السكني',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: size / 2 - 190),
                const Text(
                  textAlign: TextAlign.center,
                  'تطبيق يخدم سكان المجمع',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),
                ),
                const SizedBox(
                  height: 180,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeView()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 47,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'انتقل للصفحة الاخرى',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
