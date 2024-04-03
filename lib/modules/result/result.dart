import 'package:flutter/material.dart';

class result_screen extends StatelessWidget {
  int result;

  result_screen({
    required this.result,
});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black,
    ),
    backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Your BMI',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white
              ),
            ),
            SizedBox(
              height: 20,

            ),
            Image(
                image: AssetImage('assets/images/DivinLanding.png'),
                height: 150,
                width: 150,

            ),
            SizedBox(
              height: 30,

            ),
            Text(
              '$result',
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white
              ),
            ),
            SizedBox(
              height: 30,

            ),
            if(result>=18.5&&result<=25)
              Text(


                'You have Normal body weight !',


                style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF4cb79f)
                ),

              ),
            if(result>25||result<18.5)
              Text(


                'You have Abnormal  body weight !',


                style: TextStyle(
                    fontSize: 12,
                    color: Colors.red
                ),

              ),


          ],
        ),
      ),


    );
  }
}
