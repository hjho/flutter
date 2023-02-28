import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screens.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  // 해당 위젯의 Key를 StatelessWidget 이라는 슈퍼클래스에 게 보낸거임.
  // 위젯은 ID같은 식별자 역할을 하는 Key가 있다는 걸 알면 됨.
  // Flutter가 위젯을 식별하기 위해 ID가 있음.
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreens(),
    );
  }
}
