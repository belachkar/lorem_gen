// ignore_for_file: avoid_print

import 'package:lorem_gen/lorem_gen.dart';

main() {
  var sentence = Lorem.sentence();
  var paragraph = Lorem.paragraph();
  var text = Lorem.text(numParagraphs: 3, numSentences: 5);

  print("Generating random words: ${Lorem.word(numWords: 4)}");
  print("\nGenerating a random sentence:\n\n$sentence");
  print("\nGenerating a random paragraph:\n\n$paragraph");
  print("\nGenerating a random text:\n\n$text");
}
