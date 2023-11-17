// ignore: file_names
import 'package:example2/Provider/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  State<ThemePage> createState() => _ThemeState();
}

class _ThemeState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text(
            'Theme',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: [
                const Text(
                  'Dark Mode',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
               
                Container(
                    height: 30,
                    width: 50,
                    color: Colors.purple,
                    child: Consumer<ThemeProvider>(
                      builder: (context, value, child) {
                        return ElevatedButton(
                          onPressed: () {
                           // value.darkmood();
                            value.setTheme(ThemeMode.dark);
                          },
                          child: const Icon(
                            Icons.dark_mode,
                            color: Colors.black,
                          ),
                        );
                      },
                    ),
                ),
                     Container(
                    height: 30,
                    width: 50,
                    color: Colors.purple,
                    child: Consumer<ThemeProvider>(
                      builder: (context, value, child) {
                        return ElevatedButton(
                          onPressed: () {
                            value.darkmood();
                            value.setTheme(ThemeMode.system);
                          },
                          child: const Icon(
                            Icons.dark_mode,
                            color: Colors.black,
                          ),
                        );
                      },
                    )),
                     Container(
                    height: 30,
                    width: 50,
                    color: Colors.purple,
                    child: Consumer<ThemeProvider>(
                      builder: (context, value, child) {
                        return ElevatedButton(
                          onPressed: () {
                            value.darkmood();
                            value.setTheme(ThemeMode.light);
                          },
                          child: const Icon(
                            Icons.dark_mode,
                            color: Colors.black,
                          ),
                        );
                      },
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
