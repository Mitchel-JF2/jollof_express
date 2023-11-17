import 'package:flutter/material.dart';
import 'package:jollof_express/src/global/widgets/jollof_scaffold.dart';
import 'package:provider/provider.dart';

import '../../providers/authentication_provider.dart';

class SignInButtons extends StatelessWidget {
  const SignInButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<AuthenticationProvider>();
    return JollofScaffold(
      appBarTitle: "Authentication",
      body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: provider.onSignInWithGoogle,
                  child: const Text("Sign in with Google"),
                ),
                ElevatedButton(
                  onPressed: provider.onSignInWithGithub,
                  child: const Text("Sign in with Github"),
                ),
              ],
            ),
          ),
        ),
    );
  }
}