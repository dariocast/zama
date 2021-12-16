import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zama/zama_theme.dart';

void main() {
  runApp(Zamapp());
}

class Zamapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zamapp',
      home: MainPage(title: 'Zamapp'),
      darkTheme: zamaThemes[ThemeMode.dark],
      theme: zamaThemes[ThemeMode.light],
      themeMode: ThemeMode.dark,
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: ZamaTextStyles.headline6(context, color: ZamaColors.onBackground(context)),
        ),
        centerTitle: true,
        actions: [
          Theme.of(context).brightness == Brightness.light
              ? Icon(
                  Icons.nightlight_round,
                  color: ZamaColors.onBackground(context),
                )
              : Icon(
                  Icons.wb_sunny,
                  color: ZamaColors.onBackground(context),
                ),
        ],
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            Text(
              'headline1',
              style: ZamaTextStyles.headline1(context),
            ),
            Text(
              'headline2',
              style: ZamaTextStyles.headline2(context),
            ),
            Text(
              'headline3',
              style: ZamaTextStyles.headline3(context),
            ),
            Text(
              'headline4',
              style: ZamaTextStyles.headline4(context),
            ),
            Text(
              'headline5',
              style: ZamaTextStyles.headline5(context),
            ),
            Text(
              'headline6',
              style: ZamaTextStyles.headline6(context),
            ),
            Text(
              'subtitle1',
              style: ZamaTextStyles.subtitle1(context),
            ),
            Text(
              'subtitle2',
              style: ZamaTextStyles.subtitle2(context),
            ),
            Text(
              'body1',
              style: ZamaTextStyles.body1(context),
            ),
            Text(
              'body2',
              style: ZamaTextStyles.body2(context),
            ),
            Text(
              'button',
              style: ZamaTextStyles.button(context),
            ),
            Text(
              'caption',
              style: ZamaTextStyles.caption(context),
            ),
            Text(
              'overline',
              style: ZamaTextStyles.overline(context),
            ),
          ],
        ),
      ),
    );
  }
}
