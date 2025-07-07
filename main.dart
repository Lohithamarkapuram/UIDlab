import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Responsive UI 235H5',
      debugShowCheckedModeBanner: false,
      home: ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  // Define breakpoints
  static const double phoneBreakpoint = 600;
  static const double tabletBreakpoint = 1024;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive UI')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;

          if (width < phoneBreakpoint) {
            return const PhoneView();
          } else if (width < tabletBreakpoint) {
            return const TabletView();
          } else {
            return const DesktopView();
          }
        },
      ),
    );
  }
}

// PHONE
class PhoneView extends StatelessWidget {
  const PhoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal[600],
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            '📱 You are using a Phone!',
            style: TextStyle(fontSize: 18, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

// TABLET
class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[800],
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            '📟 You are using a Tablet!',
            style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

// DESKTOP
class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[900],
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            '💻 You are using a Desktop!',
            style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}