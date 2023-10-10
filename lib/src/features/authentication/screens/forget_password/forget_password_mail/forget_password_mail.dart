import 'package:flutter/material.dart';
import 'package:login_app/src/constants/sizes.dart';

import '../../../../../common_widgets/form/form_header_widget.dart';

class ForgetPasswordMail extends StatelessWidget {
  const ForgetPasswordMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(uDefaultSize),
          child:  Column(
            children: [
              SizedBox(
                height: uDefaultSize*4,
              ),
              FormHeaderWidget(
                title: 'Forget Password',
                subtitle: "Select one of the option given below to reset your password",
                image: 'assets/images/forget_password/fp.png',
                imgHeight: 0.3,
                crossAxisAlignment: CrossAxisAlignment.center,
                heightBetween: 30.0,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12,),
              Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          
                          labelText: 'E-mail',
                          hintText: 'E-mail',
                          prefixIcon: Icon(Icons.email_outlined),

                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        height: 42,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (){


                        },
                            style: ElevatedButton.styleFrom(

                              backgroundColor: Colors.black,

                            ),
                            child: Text('Next')),
                      )

                    ],
                  )
              )



            ],
          ),
        ),
      ),
    );
  }
}
