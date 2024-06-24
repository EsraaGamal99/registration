import 'package:elmadsarah/Core/Routing/routs_name.dart';
import 'package:elmadsarah/Features/Register/UI/Screens/FormScreen/form_screen.dart';
import 'package:elmadsarah/Features/Register/UI/Screens/WelcomeScreen/welcome_screen.dart';
import 'package:go_router/go_router.dart';

import '../Widgets/build_page_with_default_transition.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: RoutsName.formScreen,
        builder: (context, state) => FormScreen(),
      ),
      GoRoute(
        path: RoutsName.formScreen,
        name: RoutsName.formScreen, // Add name here
        pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
          context: context,
          state: state,
          child: FormScreen(),
        ),
      ),
      // Add other routes here as needed
    ],
  );
}
