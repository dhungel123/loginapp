import 'package:flutter/material.dart';
import 'package:login_app/src/common_widgets/form/form_header_widget.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';

import '../../../../common_widgets/form/form_footer_widget.dart';
import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormHeaderWidget(
                  title: fTitle,
                  image: uWelcomeImage,
                  subtitle: fSubtitle,
                imgHeight:0.4,
              ),

              SizedBox(height: 20,),


              LoginForm(),

              FormFooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}




