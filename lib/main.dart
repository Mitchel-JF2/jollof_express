import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jollof_express/src/global/providers/ably_provider.dart';
import 'package:jollof_express/src/global/providers/global_provider.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'src/app.dart';
import 'src/modules/authentication/providers/authentication_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => const AuthenticationProvider()),
        ChangeNotifierProvider(create: (context) => GlobalProvider()),
        ChangeNotifierProvider(create: (context) => AblyProvider(context)),
      ],
      child: const JollofExpressApp(),
    ),
  );
}
