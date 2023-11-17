import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jollof_express/src/global/providers/ably_provider.dart';
import 'package:jollof_express/src/global/providers/global_provider.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'src/app.dart';
import 'src/modules/authentication/providers/authentication_provider.dart';

// This is the beginning of everything...
// let's walk through this project together
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        // this provider handles both google and github sign in
        Provider(create: (context) => const AuthenticationProvider()),

        // this is a memory pool that holds only states that are referenced
        // in more than one place in the app.
        // This approach helps to reduce data duplicates
        // and it improves memory efficiency
        ChangeNotifierProvider(create: (context) => GlobalProvider()),

        // This holds everything that has to do with Ably
        ChangeNotifierProvider(create: (context) => AblyProvider(context)),
      ],
      child: const JollofExpressApp(),
    ),
  );
}
