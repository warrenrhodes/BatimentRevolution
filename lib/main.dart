import 'package:flutter/material.dart';

import 'presentation/page/construction_calculator/calculator_constructor_view.dart';
import 'presentation/page/floor_plan/floor_plan_inspiration_view.dart';
import 'presentation/page/home_page.dart';
import 'presentation/page/make_devis/widgets/make_devis_view.dart';
import 'presentation/page/plan_inspiration/plan_inspiration_view.dart';
import 'presentation/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

/// The entry of app.
class MyApp extends StatelessWidget {
  /// Constructor of [MyApp].
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        onGenerateRoute: (RouteSettings settings) {
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
                    builder: (BuildContext context) => const HomePage(),
                    settings: settings);
              }
          }
        },
        home: const HomePage(),
      );
}
