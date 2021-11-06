import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moviesinfo/domain/entities/app_error.dart';
import 'package:moviesinfo/domain/entities/movie_entity.dart';
import 'package:moviesinfo/domain/entities/no_params.dart';
import 'package:moviesinfo/domain/usecases/get_trending.dart';
import 'package:pedantic/pedantic.dart';
import 'di/get_it.dart' as getIt;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
  unawaited(getIt.init());
  runApp(MovieApp());
}
// Future<void> main() async {
//   unawaited(getIt.init());
//   GetTrending getTrending = getIt.getItInstance<GetTrending>();
//   final Either<AppError, List<MovieEntity>> eitherResponse =
//       await getTrending(NoParams());
//   eitherResponse.fold((l) {
//     print('error');
//     print(l);
//   }, (r) {
//     print('list of movies');
//     print(r);
//   });
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'MoviesInfo',
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
