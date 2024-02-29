import 'package:flutter/material.dart';

import 'stats_page.dart';
import 'connect_page.dart';
import 'timeline_page.dart';
import 'settings_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Highdrate',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade200),
          textTheme: Typography.blackMountainView,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade50))),
      home: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Theme.of(context).colorScheme.background,
                padding: const EdgeInsets.all(5.0),
                margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                alignment: Alignment.center,
                child: Text('Highdrate',
                    style: Theme.of(context).textTheme.titleLarge),
              ),
              SizedBox(
                width: 105,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StatsPage()),
                    );
                  },
                  child: Text('Stats',
                      style: Theme.of(context).textTheme.labelLarge),
                ),
              ),
              const SizedBox(
                height: 3.0,
              ),
              SizedBox(
                width: 105,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ConnectPage()),
                    );
                  },
                  child: Text('Connect',
                      style: Theme.of(context).textTheme.labelLarge),
                ),
              ),
              const SizedBox(
                height: 3.0,
              ),
              SizedBox(
                width: 105,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TimelinePage()),
                    );
                  },
                  child: Text('Timeline',
                      style: Theme.of(context).textTheme.labelLarge),
                ),
              ),
              const SizedBox(
                height: 3.0,
              ),
              SizedBox(
                  width: 105,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsPage()),
                      );
                    },
                    child: Text('Settings',
                        style: Theme.of(context).textTheme.labelLarge),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}