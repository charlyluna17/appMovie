import 'package:go_router/go_router.dart';
import 'package:proyecto_cine/presentation/screens/movies/home_screen.dart';
import 'package:proyecto_cine/presentation/screens/movies/movie_screen.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) {
        final pageIndex = int.parse(state.pathParameters['page' ]?? '0');

        return HomeScreen( pageIndex : pageIndex);
      },
      routes: [
        GoRoute(
          path: 'movie/:id',
          name: MovieScreen.name,
          builder: (context, state) {
            final movieId = state.pathParameters['id'] ?? 'no-id';

            return MovieScreen(movieId: movieId);
          },
        ),
      ]),
]);
