import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:path_provider/path_provider.dart';
import 'package:practice_hive3/hive_controller/noteModel.dart';
import 'package:practice_hive3/pages/homePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>('note');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange.shade900),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
