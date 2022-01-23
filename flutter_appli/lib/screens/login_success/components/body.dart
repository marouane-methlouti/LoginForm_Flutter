import 'package:flutter/material.dart';
import 'package:flutter_appli/components/default_button.dart';
import 'package:flutter_appli/screens/splash/splash_screen.dart';
import 'package:flutter_appli/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Authentification réussie",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
child:DefaultButton(
                      text: "Retour à l'accueil",
                      press: () {
                        Navigator.pushNamed(context, SplashScreen.routeName);
                      },
                    ),
        ),
        Spacer(),
      ],
    );
  }
}