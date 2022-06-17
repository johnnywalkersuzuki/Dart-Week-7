import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({ Key? key }) : super(key: key);

    @override
    Widget build(BuildContext context) {

      final screenSize = MediaQuery.of(context).size;
      print('Screen Size:');
      print(screenSize.height);
      print('Screen Size 10%:');
      print(screenSize.height * 0.1);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF0092B9),
              Color(0xff0167b2),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Image.asset('assets/images/logo.png'),
              SizedBox(height: screenSize.height * 0.2,),
              SizedBox(
                width: screenSize.width * .8,
                height: 49,
                child: ElevatedButton(
                  onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200],
                  ),
                  child: Image.asset('assets/images/google.png'),
                  ),
                )
            ],
          ),
        )
      ),
    );
    }
}