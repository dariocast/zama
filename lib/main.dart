import 'package:flutter/material.dart';
import 'package:zama/zama_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: zamaThemes[ThemeMode.light],
      darkTheme: zamaThemes[ThemeMode.dark],
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: ZamaTextStyles.headline1(context),
            ),
            Text(
              'You have pushed the button this many times:',
              style: ZamaTextStyles.headline2(context),
            ),
            Text(
              'You have pushed the button this many times:',
              style: ZamaTextStyles.headline3(context),
            ),
            Text(
              'You have pushed the button this many times:',
              style: ZamaTextStyles.headline4(context),
            ),
            Text(
              'You have pushed the button this many times:',
              style: ZamaTextStyles.headline5(context),
            ),
            Text(
              'You have pushed the button this many times:',
              style: ZamaTextStyles.headline6(context),
            ),
            Text(
              'You have pushed the button this many times:',
              style: ZamaTextStyles.subtitle1(context),
            ),
            Text(
              'You have pushed the button this many times:',
              style: ZamaTextStyles.subtitle2(context),
            ),
            Text(
              'You have pushed the button this many times:',
              style: ZamaTextStyles.body1(context),
            ),
            Text(
              'You have pushed the button this many times:',
              style: ZamaTextStyles.body2(context),
            ),
            Text(
              'You have pushed the button this many times:',
              style: ZamaTextStyles.button(context),
            ),
            Text(
              'You have pushed the button this many times:',
              style: ZamaTextStyles.caption(context),
            ),
            Text(
              'You have pushed the button this many times:',
              style: ZamaTextStyles.overline(context),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
