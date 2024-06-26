import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/get_news_articles/presentation/cubit/theme_cubit.dart';
import 'package:news_app/features/get_news_articles/presentation/screens/news_overview_screen.dart';
import 'package:news_app/theme.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
        // Add other providers here
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp(
            title: 'News App',
            theme: context.read<ThemeCubit>().themeData,
            home: NewsOverviewScreen(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
