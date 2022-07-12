import "dart:math";

import 'words.dart';

class Lorem {
  static _randomInt(int min, int max) {
    Random rnd = Random();
    return rnd.nextInt((max - min) + 1) + min;
  }

  /// Creates [numWords] number of random words.
  static String word({int numWords = 1}) {
    Random random;

    if (numWords > 1) {
      return sentence(sentenceLength: numWords, numSentences: 1);
    }

    random = Random();
    return words[random.nextInt(words.length)];
  }

  /// Creates random sentences.
  ///
  /// Sentences are either exactly [sentenceLength] words in length, or a randomly
  /// generated length. [numSentences] defines the number of sentences generated.
  /// Returned sentences are punctuated.
  static String sentence({int sentenceLength = -1, int numSentences = 1}) {
    int wordIndex;
    String sentence;

    if (numSentences > 1) return paragraph(numSentences: numSentences);

    if (sentenceLength < 0) {
      sentenceLength = _randomInt(5, 20);
    }

    wordIndex = _randomInt(0, words.length - sentenceLength - 1);
    sentence = words.getRange(wordIndex, wordIndex + sentenceLength).join(" ");
    sentence = "${sentence[0].toUpperCase()}${sentence.substring(1)}.";

    return sentence;
  }

  /// Creates random paragraphs.
  ///
  /// Paragraphs are comprised of a random number of sentences, or explicitly
  /// [numSentences] long. [numParagraphs] specifies the number of paragraphs
  /// to generate.
  static String paragraph({int numSentences = -1, int numParagraphs = 1}) {
    List<String> sentences = [];

    if (numParagraphs > 1) {
      return text(numSentences: numSentences, numParagraphs: numParagraphs);
    }

    if (numSentences < 0) {
      numSentences = _randomInt(3, 5);
    }

    for (var i = 0; i < numSentences; i++) {
      sentences.add(sentence());
    }

    return sentences.getRange(0, sentences.length).join(" ");
  }

  /// Creates a text comprised of a number of paragraphs.
  ///
  /// Each text is comprised of [numParagraphs] paragraphs, each of which
  /// contain [numSentences] sentences. If either parameter is omitted, a
  /// random number is generated.
  static String text({int numParagraphs = -1, int numSentences = -1}) {
    List<String> paragraphs = [];

    if (numParagraphs < 0) {
      numParagraphs = _randomInt(3, 7);
    }
    for (var i = 0; i < numParagraphs; i++) {
      paragraphs.add(paragraph(numSentences: numSentences));
    }

    return paragraphs.getRange(0, paragraphs.length).join("\n");
  }
}
