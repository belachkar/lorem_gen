import 'package:lorem_gen/lorem_gen.dart';

main() {
  final words = Lorem.word(numWords: 4);
  final sentence = Lorem.sentence();
  final paragraph = Lorem.paragraph();
  final text = Lorem.text(numParagraphs: 3, numSentences: 5);

  print("Generating random words (4 words):\t$words");
  print("\nGenerating a random sentence:\n\n$sentence");
  print("\nGenerating a random paragraph:\n\n$paragraph");
  print("\nGenerating a random text (3 paragraphs, 5 sentences each):"
      "\n\n$text");
}
