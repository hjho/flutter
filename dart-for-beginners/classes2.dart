// ## 4.7 - Abstract Classes
abstract class Human {
  void walk();
}

class Coach extends Human {
   void walk() {
    print('The coach is walking');
  }
}

// ## 4.6 - Enums
enum Team { red, blue }
enum XPLevel { beginner, medium, pro}

// ## 4.5 - Cascade Notation
class Player extends Human {
  String name;
  XPLevel xp;
  Team team;
  
  Player({required this.name, required this.xp, required this.team});
  
  void sayHello() => print("Hi, My name is $name and my team is $team , xp=$xp");
  
  void walk() {
    print('i`m walk');
  }
}

void main() {
  var hjho = Player(name: 'Junho', xp: XPLevel.beginner, team: Team.red);
  var junho = hjho
    ..name = 'Heo'
    ..xp = XPLevel.pro
    ..team = Team.blue
    ..sayHello();
}