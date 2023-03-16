import 'package:flutter/material.dart';


class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyCustomAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MyCustomScaffold extends StatelessWidget {
  const MyCustomScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(
        title: Text(
          'My Custom App',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Center(
        child: Text(
          'Welcome to my custom app!',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      title: 'My Custom App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyCustomScaffold(),
    ),
  );
}
