import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';

import '../forget_password/forget_password_options/forget_password_btn_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person_outline_outlined),
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
            ),
            SizedBox(height: 12,),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  labelText: 'password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  suffixIcon: IconButton(onPressed: (){},
                      icon: const Icon(Icons.remove_red_eye)
                  )
              ),
            ),
            SizedBox(height: 8  ,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {
                showModalBottomSheet(context: context,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    builder: (context)=>Container(
                      padding: const EdgeInsets.all(uDefaultSize),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Make Selection',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 32),),
                          Text("Select one of the option given below to reset your password",
                          style: Theme.of(context).textTheme.titleMedium ,),
                          const SizedBox(height: uDefaultSize,),
                          ForgetPasswordBtnWidget(
                            title: 'E-mail',
                            subTitle: 'Reset via Mail Verification',
                            btnIcon:Icons.email_outlined ,
                            onTap: () {
                              Get.to(()=>ForgetPasswordMail());

                            },
                          ),
                          SizedBox(
                            height: 12,
                          ),
                         ForgetPasswordBtnWidget(
                             title: 'Phone No',
                             subTitle: 'Reset via Phone Verification',
                             btnIcon: Icons.mobile_friendly_outlined,
                             onTap:(){

                             }
                         )


                        ],
                      ),
                    )
                );
              },
                  child: Text('Forget Password?')),
            ),

            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: Text('Login')))


          ],
        ),
      ),
    );
  }
}

