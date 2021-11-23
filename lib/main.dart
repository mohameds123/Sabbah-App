import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'modules/lottidesign/lotti.dart';
import 'network/cach-helper.dart';

void main()
async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  int counter = CacheHelper.getData(key: 'counter');
  runApp(MyApp(
    counter,
  ));
}
class MyApp extends StatelessWidget {
  int?counter;
  MyApp(
     this.counter,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black38,
      ),
      // themeMode: isDark? ThemeMode.dark : ThemeMode.light,
    );
  }
}