import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.routeName,
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.routeName,
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.routeName,
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbars',
      name: SnackbarsScreen.routeName,
      builder: (context, state) => const SnackbarsScreen(),
    ),
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.routeName,
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: '/ui-controls',
      name: UiControlsScreen.routeName,
      builder: (context, state) => const UiControlsScreen(),
    ),
    GoRoute(
      path: '/tutorial',
      name: AppTutorialScreen.routeName,
      builder: (context, state) => const AppTutorialScreen(),
    ),
    GoRoute(
      path: '/infinite',
      name: InfinityScrollScreen.routeName,
      builder: (context, state) => const InfinityScrollScreen(),
    ),
    GoRoute(
      path: '/counter',
      name: CounterScreen.routeName,
      builder: (context, state) => const CounterScreen(),
    ),
    GoRoute(
      path: '/theme-changer',
      name: ThemeChangerScreen.routeName,
      builder: (context, state) => const ThemeChangerScreen(),
    ),
  ],
);
