# MY NOTES

## Setup · Assets
- Error: "The asset directory 'assets/images/' doesn't exist" (analyzer) and "Asset not found" at runtime.
- Cause: the assets folder was inside lib/. Flutter only looks for assets at the project root.
- Fix: moved assets/ to the root, at the same level as lib/ and pubspec.yaml.
- Lesson: the analyzer message already gave the exact path. Reading it first would have saved me time.

## Header Image
- It mentions it must be inside a BoxFit.Cover (I don't know why, I just did it).

## Zona 2 · Títol
- Error: text overflowing the right edge of the image.
- Cause: Positioned only had `left`, so the Column had no width limit and the Text never wrapped.
- Fix: added `right` to Positioned, which bounds the width.
- Lesson: a positioned child needs both edges to know its width.