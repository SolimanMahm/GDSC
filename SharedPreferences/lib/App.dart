import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String? Name, Age, Location;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Save Objects in SharedPreferences'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  Name = value;
                },
                decoration: const InputDecoration(
                  hintText: 'Name',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  Age = value;
                },
                decoration: const InputDecoration(
                  hintText: 'Age',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  Location = value;
                },
                decoration: const InputDecoration(
                  hintText: 'Location',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        final SharedPreferences sp =
                            await SharedPreferences.getInstance();
                        await sp.setString('name', '$Name');
                        await sp.setString('age', '$Age');
                        await sp.setString('location', '$Location');
                      },
                      child: const Text('Save'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        final SharedPreferences sp =
                            await SharedPreferences.getInstance();
                        setState(() {
                          Name = sp.getString('name');
                          Age = sp.getString('age');
                          Location = sp.getString('location');
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('This is snackbar'),
                          ),
                        );
                      },
                      child: const Text('Load'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        final SharedPreferences sp =
                            await SharedPreferences.getInstance();
                        sp.remove('name');
                        sp.remove('age');
                        sp.remove('location');
                      },
                      child: const Text('Clear'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text('Name : ' + ((Name != null) ? '$Name' : '')),
              const SizedBox(
                height: 40,
              ),
              Text('Age : ' + ((Age != null) ? '$Age' : '')),
              const SizedBox(
                height: 40,
              ),
              Text('Location : ' + ((Location != null) ? '$Location' : '')),
            ],
          ),
        ),
      ),
    );
  }
}
