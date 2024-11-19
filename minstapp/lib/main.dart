import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:minstapp/Common/MyRouters.dart';
import 'package:minstapp/widgets/default/drawer.dart';
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: MyRouters.generateRoute,
      initialRoute: ROUTE_PREVIEW,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        key: scaffoldKey,
        drawer: SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: const DrawerNav(),
        ),// Reemplaza esto si tienes un widget específico
      ),
    );
  }
}

