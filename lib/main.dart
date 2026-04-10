import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color.fromARGB(255, 2, 109, 142);
    const Color secondaryColor = Color.fromARGB(255, 4, 210, 255);
    const Color whiteColor = Color.fromARGB(255, 220, 218, 218);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: primaryColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          primary: primaryColor,
          secondary: secondaryColor,
          tertiary: whiteColor,
        ),
        textTheme: GoogleFonts.interTextTheme(
          const TextTheme(
            titleLarge: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            bodyLarge: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            titleMedium: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          isDense: true,
          prefixIconColor: primaryColor,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          labelStyle: const TextStyle(fontSize: 15, color: Colors.black),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(secondaryColor),
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 32, 0, 32),
            child: Center(
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                width: 300,
                height: 300,
              ),
            ),
          ),
          Center(
            child: Text('LOGIN', style: Theme.of(context).textTheme.titleLarge),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(48, 48, 48, 32),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'example@gmail.com',
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.tertiary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(CupertinoIcons.envelope),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(48, 0, 48, 32),
            child: TextField(
              decoration: InputDecoration(
                labelText: '*******************',
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.tertiary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(CupertinoIcons.lock),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(48, 0, 48, 32),
            child: SizedBox(
              height: 42,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all(6),
                  shadowColor: WidgetStateProperty.all(Colors.black),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Log In',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(width: 2),
                    Icon(Icons.login),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              'Forget Password?',
              style: TextStyle(
                fontSize: 18,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Row(
              children: [
                Expanded(child: Divider(thickness: 2, color: Colors.black)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("OR"),
                ),
                Expanded(child: Divider(thickness: 2, color: Colors.black)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(48, 0, 48, 32),
            child: SizedBox(
              height: 42,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all(0),
                  backgroundColor: WidgetStateProperty.all(Colors.transparent),
                  side: WidgetStateProperty.all(
                    BorderSide(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 2,
                    ),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign Up',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(width: 2),
                    const Icon(Icons.login),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
