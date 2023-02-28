// ## 4.0 - Your First Dart Class
// ## 4.1 - Constructors
class Player {
//   late final String name;
//   late int xp;
//   Player(String name, int xp) {
//     this.name = name;
//     this.xp = xp;
//   }
  
//   // 축약형.
//   final String name;
//   int xp;
//   Player(this.name, this.xp);

  final String name;
  int xp, age;
  String team;
  
  // ## 4.2 - Named Constructor Parameters
  Player({
    required this.name, 
    required this.xp, 
    required this.team, 
    required this.age,
  });
  
  // ## 4.3 - Named Constructor
  Player.createBluePlayer({
    required String name, 
    required int age,
  }) :  this.age = age,
        this.name = name,
        this.team = 'Blue',
        this.xp = 0;
  
  Player.createRedPlayer(String name, int age) 
     :  this.age = age,
        this.name = name,
        this.team = 'Red',
        this.xp = 0;
  
  // ## 4.4 - Recap
  Player.fromJson(Map<String, dynamic> playerJson)
    : name = playerJson['name'],
      xp = playerJson['xp'],
      team = playerJson['team'],
      age = playerJson['age'];
  
  void sayHello() {
    // this 사용을 권고하지 않음.
    print("Hi my name is $name");
  }
  void sayTeam() => print("Hi my name is $name, xp is $xp, team name is $team");
}

void main() {
//   var player = Player();
//   print(player.name); // Junho
//   player.name = 'Heo';
//   print(player.name); // Heo
//   player.sayHello(); // Hi my name is Junho
  
  var player1 = Player(
    name: 'Junho', 
    xp: 1500, 
    team: 'red', 
    age: 28
  );
  player1.sayHello(); // Hi my name is Junho
  var player2 = Player(name: 'Heo', xp: 2500, team: 'blue', age: 12);
  player2.sayHello(); // Hi my name is Heo
  print("");
  
  var bluePlayer = Player.createBluePlayer(
    name: 'Junho Heo',
    age: 27
  );
  bluePlayer.sayTeam();
  var redPlayer = Player.createRedPlayer('Junho Heo', 27);
  redPlayer.sayTeam();
  
  print("");
  var apiData = [
    {
      "name": 'Heo', "age": 1, "team": 'Red', "xp": 0
    }, {
      "name": 'Jun', "age": 2, "team": 'Red', "xp": 0
    }, {
      "name": 'Ho', "age": 3, "team": 'Blue', "xp": 0
    }
  ];
  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayTeam();
  });
}