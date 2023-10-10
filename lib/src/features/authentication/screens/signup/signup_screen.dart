import 'package:flutter/material.dart';
import 'package:login_app/src/common_widgets/form/form_footer_widget.dart';
import 'package:login_app/src/common_widgets/form/form_header_widget.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';

import '../../../../constants/image_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
            child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FormHeaderWidget(
                      title: fTitle,
                      image: uWelcomeImage,
                      subtitle: fSubtitle,
                    imgHeight: 0.4,
                  ),
                  SignUpFormWidget(),

                  FormFooterWidget()

          ]
    )
    )
    )
    );
  }
}

