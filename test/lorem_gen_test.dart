import 'package:lorem_gen/lorem_gen.dart';
import 'package:test/test.dart';

void main() {
  group("Lorem Generator", () {
    test("Shoud get 6 words", () {
      String s = Lorem.word(numWords: 6);
      expect(s.split(" ").length, 6);
    });

    test("Shoud get 1 word if words Nbr <= 1", () {
      String s1 = Lorem.word(numWords: 1);
      String s2 = Lorem.word(numWords: 0);
      String s3 = Lorem.word(numWords: -1);
      expect(s1.split(" ").length, 1);
      expect(s2.split(" ").length, 1);
      expect(s3.split(" ").length, 1);
    });

    test("Sentence shoud contain a period", () {
      String s = Lorem.sentence();
      expect(r".".allMatches(s).length, 1);
    });

    test(
        "Sentence should contain only one word when sentenceLength is set to 1",
        () {
      String s = Lorem.sentence(sentenceLength: 1);
      expect(s.split(" ").length, 1);
    });

    test(
        "Sentence should contain between 5-20 words when sentenceLength is NOT set",
        () {
      String s = Lorem.sentence();
      int words = s.split(" ").length;
      expect(words >= 5 && words <= 20, true, reason: "words: $words");
    });

    test(
        "Paragraph should contain only one sentence when numSentences is set to 1",
        () {
      String p = Lorem.paragraph(numSentences: 1);
      int paragraphs = p.split(r".").length;

      //remove empty slot
      paragraphs = paragraphs > 0 ? paragraphs - 1 : paragraphs;

      expect(paragraphs, 1, reason: "paragraphs: $paragraphs");
    });

    test(
        "Paragraph should contain between 3-5 sentences when numSentences is NOT set",
        () {
      String p = Lorem.paragraph();
      int paragraphs = p.split(r".").length;

      //remove empty slot
      paragraphs = paragraphs > 0 ? paragraphs - 1 : paragraphs;

      expect(paragraphs >= 3 && paragraphs <= 5, true,
          reason: "paragraphs: $paragraphs");
    });

    test(
        "Text should contain only one paragraph when numParagraphs is set to 1",
        () {
      String t = Lorem.text(numParagraphs: 1);
      int texts = t.split("\n").length;
      expect(texts, 1, reason: "texts: $texts");
    });

    test(
        "Text should contain between 3-7 paragraph when numParagraphs is NOT set",
        () {
      String t = Lorem.text();
      int texts = t.split("\n").length;
      expect(texts >= 3 && texts <= 7, true, reason: "texts: $texts");
    });
  });
}
