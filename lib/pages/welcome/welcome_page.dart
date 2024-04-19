import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // variable Text
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // IMAGE CONTAINER
            Container(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 20.0, right: 20.0, bottom: 35.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bgWelcome3.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32.0),
                  bottomRight: Radius.circular(32.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      // LOGO
                      const Image(
                        image: AssetImage('assets/images/logo.png'),
                      ),
                      const SizedBox(height: 5.0),
                      // INTRODUCTION TEXT
                      Text(
                        "LevQuiz est une application permettant de faciliter le suivi de compétences des apprenants par les formateurs en rendant les tests à la fois instructifs, amusants et agréables",
                        style:
                            textTheme.bodySmall!.copyWith(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'BIENVENUE',
                        style: textTheme.headlineLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2.0),
                      Text(
                        'Merci de choisir votre profil',
                        style: textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // BUTTON APPRENANT
            const SizedBox(height: 30.0),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              height: 55.0,
              decoration: BoxDecoration(
                color: const Color(0xff274F8A),
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.school),
                label: const Text('Apprenant'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: textTheme.bodyLarge,
                  shape: const BeveledRectangleBorder(),
                ),
              ),
            ),
            // BUTTON FORMATEUR
            const SizedBox(height: 15.0),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              height: 55.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xff274F8A),
                ),
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.cast_for_education_rounded),
                label: const Text('Formateur'),
                style: TextButton.styleFrom(
                  foregroundColor: const Color(0xff274F8A),
                  textStyle: textTheme.bodyLarge,
                  shape: const BeveledRectangleBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
