import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../../../constants/sizes.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(uDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Code ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 42,color: Colors.black),),
            const Text('Verification',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 42,color: Colors.black),),
            const Text('Enter the verification code send at support@codingwithu.com ',style: TextStyle(color: Colors.black,fontSize: 24),),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code){
                print('OTP is $code');
              },
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: Text('Next')))



          ],
        ),
      ),
    );
  }
}
