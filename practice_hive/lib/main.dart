import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:practice_hive/controller/dialog.dart';
import 'package:practice_hive/controller/noteModel.dart';
import 'package:practice_hive/pages/homePage.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox('note');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NoteProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          useMaterial3: true,
        ),
        home: HomePage(),
      ),
    );
  }
}
