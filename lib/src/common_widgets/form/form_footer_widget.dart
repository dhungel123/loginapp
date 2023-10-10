import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class FormFooterWidget extends StatelessWidget {
  const FormFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Or'),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(onPressed: (){},
              icon: const Icon(FlutterIcons.google_ant),
              label: Text('Sign-in with Google')),
        ),
        TextButton(
            onPressed: () {  },
            child: const Text.rich(
                TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          text: ' Signup',
                          style: TextStyle(color: Colors.blue)

                      )
                    ]
                )
            )
        )
      ],
    );
  }
}
