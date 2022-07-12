# lorem_gen

[![Dart CI](https://github.com/belachkar/lorem_gen/workflows/Dart%20CI/badge.svg)](https://github.com/belachkar/lorem_gen/actions/workflows/dart.yml)
[![Pub](https://github.com/belachkar/lorem_gen/workflows/Publish%20to%20Pub.dev/badge.svg)](https://github.com/belachkar/lorem_gen/actions/workflows/pub_deploy.yml)
[![Pub](https://img.shields.io/pub/v/lorem_gen.svg)](https://pub.dartlang.org/packages/lorem_gen)

Simple and lite `Dart` package to generate [Lorem (Ipsum)](https://en.wikipedia.org/wiki/Lorem_ipsum) and populate your app with text.

## Features

- Generate **random words**.
- Generate a **random sentence(s)**.
- Generate a **random paragraph(s)**.
- Generate text with **multiple paragraphs and sentences**.

## Usage

### Import the package

```dart
import 'package:lorem_gen/lorem_gen.dart';
```

### Generate random words

```dart
print(Lorem.word(numWords: 4));

// Output:
// Est ante in nibh
```

### Generate a random sentence

```dart
print(Lorem.sentence());

// Output:
// Mauris nunc congue nisi vitae suscipit tellus mauris a diam maecenas sed enim ut sem viverra.
```

### Generate a random paragraph

```dart
print(Lorem.paragraph());

// Output:
// Laoreet non curabitur gravida arcu ac tortor dignissim convallis aenean et tortor at risus viverra adipiscing at in tellus integer. Aliquam sem fringilla ut morbi tincidunt augue interdum velit euismod in pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Mollis nunc sed id semper risus in. Proin sed libero enim sed faucibus turpis in eu mi bibendum neque egestas. Consequat id porta nibh venenatis cras sed felis eget velit aliquet sagittis id consectetur purus ut faucibus pulvinar elementum.
```

### Generate text with multiple paragraphs and sentences

```dart
print(Lorem.text(numParagraphs: 3, numSentences: 5));

// Output:
// At quis risus sed vulputate odio ut enim blandit volutpat maecenas. Odio ut sem nulla pharetra diam. Vitae proin sagittis nisl rhoncus. Malesuada bibendum arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales ut. In nisl nisi scelerisque eu ultrices vitae auctor.
// Et netus et malesuada fames ac turpis egestas integer eget aliquet nibh praesent tristique magna sit amet purus. Adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices dui sapien. Accumsan tortor posuere ac ut consequat semper viverra. Tristique sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue. Quis risus sed vulputate odio ut.
// Ornare arcu dui vivamus arcu felis bibendum ut tristique et egestas quis ipsum suspendisse ultrices fusce ut placerat. Molestie at elementum eu facilisis sed odio morbi quis commodo odio aenean sed adipiscing. Proin sed libero enim sed faucibus. Fermentum odio eu feugiat pretium nibh ipsum consequat nisl vel pretium lectus quam id leo in vitae. Ac orci phasellus egestas tellus rutrum tellus.
```

## Additional information

This package uses a collection of **1187 words** to create random words and sentences.

## Inspiration

- [lipsum](https://pub.dev/packages/lipsum)
