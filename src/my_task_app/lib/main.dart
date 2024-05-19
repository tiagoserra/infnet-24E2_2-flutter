import 'package:flutter/material.dart';
import 'package:my_task_app/providers/task_provider.dart';
import 'package:my_task_app/screens/home_screen.dart';
import 'package:my_task_app/screens/task_details_screen.dart';
import 'package:my_task_app/screens/task_form_screen.dart';
import 'package:provider/provider.dart';

import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TaskProvider>(create: (context) => TaskProvider())
      ],
      child: MaterialApp(
        title: 'Auto Control Panel',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent)),
        routes: { // Registrando as possíveis rotas
          Routes.HOME: (context) => const HomeScreen(),
          Routes.TASK_DETAILS_SCREEN: (context) =>  TaskDetailsScreen(),
          Routes.TASK_FORM_SCREEN: (context) => const TaskFormScreen(),
        },
      ),
    );
  }
}