import 'package:flutter/material.dart';
import 'package:jollof_express/src/modules/authentication/providers/authentication_provider.dart';
import 'package:jollof_express/src/modules/authentication/views/components/sign_in_buttons.dart';
import 'package:jollof_express/src/modules/order_detail/providers/order_detail_provider.dart';
import 'package:jollof_express/src/modules/order_detail/views/order_detail_view.dart';
import 'package:provider/provider.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<AuthenticationProvider>();
    return StreamBuilder(
      stream: provider.auth.authStateChanges(),
      builder: (_, snapshot) {
        if (!snapshot.hasData) return const SignInButtons();
        return Provider(
          create: (context) => OrderDetailProvider(context),
          child: const OrderDetailView(),
        );
        // return const Center(
        //   child: Text("Hello World"),
        // );
      },
    );
  }
}
