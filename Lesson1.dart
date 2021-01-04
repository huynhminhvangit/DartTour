// A basic Dart program
import 'dart:math';

void printInteger(int number) {
  print('The number is $number');
}

String getVersion() {
  var rand = new Random();
  var result = rand.nextInt(100);
  if (result % 2 == 0) {
    throw new Exception("Vang IT Error");
  }
  return "Vang IT Future";
}

Future<String> checkVersion() async {
  var version = await getVersion();
  return version;
}

// Abstract classes
abstract class Person {
  void eat(String foods);
}

class HuynhMinhVang extends Person {
  int _yearsExperience = 0;

  int get yearsExperience => _yearsExperience;
  void set yearsExperience(years) => _yearsExperience = years;

  @override
  void eat(String foods) {
    print("I eat $foods");
  }
}

bool isShutdown = false;

bool shutDownRequested() {
  return isShutdown;
}

void processIncomingRequests() {
  var rand = new Random();
  var result = rand.nextInt(100);
  if (result % 2 == 0) {
    isShutdown = true;
  }
  print("Request Incoming");
}

void main() {
  // Declare variable
  var number = 42;
  // Call function
  printInteger(number);
  // Used Future
  checkVersion()
      .then((value) => print(value), onError: (error) => print(error));
  // Asynchronous language
  print("object");
  // Abstract classes
  HuynhMinhVang huynhMinhVang = new HuynhMinhVang();
  huynhMinhVang.eat("Bread");
  // As, is, is!
  if (huynhMinhVang is HuynhMinhVang) {
    huynhMinhVang.eat("Rice");
  }
  String text = null;
  String urlString = "https://huynhminhvang.it";
  // Make sure the variable has a non-null value.
  assert(text != null);

  // Make sure the value is less than 100.
  assert(number < 100);

  // Make sure this is an https URL.
  assert(urlString.startsWith('https'));
  assert(urlString.startsWith('https'),
      'URL ($urlString) should start with "https".');
  print("Assert");

  // Beark
  while (true) {
    if (shutDownRequested()) break;
    processIncomingRequests();
  }
}
