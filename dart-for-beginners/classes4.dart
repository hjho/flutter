// ## 4.9 - Mixins
// Mixin은 생성자가 없는 클래스를 의미한다.
// 프로퍼티를 추가할 때 사용한다. (재사용)
class Strong {
  final double strenghtLevel = 1500.99;
}
class QuickRunner {
  void runQuick() {
    print('ruuuuuuuuuun!!!');
  }
}
class Tall {
  final double height = 1.99;
}

enum Team { red, blue }

class Player with Strong, QuickRunner, Tall {
  final Team team;
  Player({
    required this.team, 
  });
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main() {
  var player = Player(team: Team.red);
  player.runQuick();
}