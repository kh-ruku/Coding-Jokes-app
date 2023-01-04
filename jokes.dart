import 'dart:math';
import 'dart:io';

int randomIndex(int max) {
  Random rnd = Random();
  return rnd.nextInt(max);
}

List<String> getJokes() {
  return [
    "What do kids play when their mom is using the phone? Bored games",
    "The generation of random numbers is too important to be left to chance.",
    "What do you call an ant who fights crime? A vigilANTe!",
    "When your hammer is C++, everything begins to look like a thumb.",
    "Why are snails slow? Because they're carrying a house on their back.",
    "What’s the smartest insect? A spelling bee!",
    "Programming is like sex: One mistake and you have to support it for the rest of your life.",
    "What do you call a couple of chimpanzees sharing an Amazon account? PRIME-mates.",
    "Why did the teddy bear say no to dessert? Because she was stuffed.",
    "Name the kind of tree you can hold in your hand? A palm tree!",
    "All arrays Chuck Norris declares are of infinite size, because Chuck Norris knows no bounds.",
    "What has ears but cannot hear? A cornfield.",
    "Where did the music teacher leave her keys? In the piano!",
    "A SQL query goes into a bar, walks up to two tables, and asks, 'Can I join you?'",
    "What did the lava say to his girlfriend? “I lava you!”",
    "What's Thanos' favorite app on his phone? Snapchat.",
    "What is a room with no walls? A mushroom.",
    "How many programmers does it take to change a light bulb?None  It's a hardware problem",
    "Why do programmers always mix up Halloween and Christmas? Because Oct 31 equals Dec 25.",
    "All programmers are playwrights, and all computers are lousy actors.",
    "A coder is sent to the grocery store by her mother with the following instructions: “Buy butter and see whether they have eggs, if they do, then buy 10.” He returned with 10 butters and told his mother, “They had eggs.”",
    "The computer is mightier than the pen, the sword, and usually, the programmer.",
    "I don't see women as objects says the male coder. I consider each to be in a class of her own."
  ];
}

void runProgram() {
  List<String> jokes = getJokes();
  int index;
  String? userInput;
  do {
    userInput = stdin.readLineSync();
    index = randomIndex(jokes.length);
    switch (userInput) {
      case "next":
        String joke = jokes[index];
        print(joke);
        break;
      default:
        break;
    }
  } while (userInput != "exit");
}
