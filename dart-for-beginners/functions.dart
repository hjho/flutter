// ## 3.0 - Definig a Funtion
// fat arrow syntax same return
String sayHello(String name) => "Hello $name nice to meet you!!";

num plus(num a, num b) => a + b;

// ## 3.1 - Named Parameters
String sayHello2({
  required String name, 
  int age = -1, 
  String country = 'Korea'
}) {
  return "Hello $name, you are $age, and you come from $country";
}

// ## 3.2 - Recap
// ## 3.3 - Optional Positional Parameters
String sayHello3(String name, int age, [String? country = 'Korea']) {
  return 'Hello $name, you are $age, and you come from $country';
}

// ## 3.4 - Operator
String capitalizeName(String? name) => 
  // name != null ? name.toUpperCase() : 'ANON';
  name?.toUpperCase() ?? 'ANON';

// ## 3.5 - Typedef
typedef ListOfInts = List<int>;
ListOfInts reverseListOfNuimbers(ListOfInts list) {
  var reversed = list.reversed;
  // list를 reversed하면 list랑은 조금 다른 iterable이 됨.
  // 그래서 toList();
  return reversed.toList();
}
typedef UserInfo = Map<String, String>;
String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {
  // print(sayHello("hjho")); // Hello hjho nice to meet you!!
  // print(sayHello("heojunho")); // Hello heojunho nice to meet you!!
  
  // print(sayHello2(age: 28, name: 'Junho.heo', country: 'South Korea')); // Hello Junho.heo, you are 28, and you come from South Korea
  // print(sayHello2(name: 'test', age: 28)); // Hello test, you are 28, and you come from Korea
  
  // var results = sayHello3('hjho', 28);
  // print(results); // Hello hjho, you are 28, and you come from Korea
  
  // String? name;
  // name ??= 'hjho';
  // print(capitalizeName('hjho')); // HJHO
  // print(capitalizeName(null));   // ANON
  
  // print(reverseListOfNuimbers([1, 2, 3])); // [3, 2, 1]
  // print(sayHi({"name": 'hjho'})); // Hi hjho
  
}