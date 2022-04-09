import 'package:batiment_revolution/presentation/page/contruction_calculator/calculator_constructor_view.dart';
import 'package:batiment_revolution/presentation/page/floor_plan/floor_plan_inspiration_view.dart';
import 'package:flutter/material.dart';

import 'presentation/page/homePage.dart';
import 'presentation/page/make_devise/widgets/make_devis_view.dart';
import 'presentation/page/plan_inspiration/plan_inspiration_view.dart';
import 'presentation/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case PageRoutes.calculatorConstructor:
            return MaterialPageRoute(
                builder: (_) => const CalculatorConstructorView(),
                settings: settings);
          case PageRoutes.makeDevis:
            return MaterialPageRoute(
                builder: (_) => const MakeDevisView(), settings: settings);
          case PageRoutes.floorPlanInspiration:
            return MaterialPageRoute(
                builder: (_) => const FloorPlanInspirationView(),
                settings: settings);
          case PageRoutes.planInspiration:
            return MaterialPageRoute(
                builder: (_) => const PlanInspirationView(),
                settings: settings);
          default:
            {
              return MaterialPageRoute(
                  builder: (context) => const HomePage(), settings: settings);
            }
        }
      },
      home: const HomePage(),
    );
  }
}
