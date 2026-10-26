# MY NOTES

## ToDo
- In catalan decimal numbers are separated by ',' not '.'. Must add a util to fix this when converting from double to String.
- Fix Tag icon size
- Clean styles file (divide by zones)

## Setup · Assets
- Error: "The asset directory 'assets/images/' doesn't exist" (analyzer) and "Asset not found" at runtime.
- Cause: the assets folder was inside lib/. Flutter only looks for assets at the project root.
- Fix: moved assets/ to the root, at the same level as lib/ and pubspec.yaml.

## Header Image
- It mentions it must be inside a BoxFit.Cover (I don't know why, I just did it).

## Zona 2 · Title
- Error: text overflowing the right edge of the image.
- Cause: Positioned only had `left`, so the Column had no width limit and the Text never wrapped.
- Fix: added `right` to Positioned, which bounds the width.

## Zone 3 · Divider
- Error: VerticalDivider filling the whole row.
- Cause: VerticalDivider doesn't have height so it fills everything from its cointainer.
- Fix: added a `SizedBox` containing the VerticalDivider.

## Zone 4 · About and tags
- Built: TrailAbout section with a Wrap of TagChip widgets.
- Error: chips stretched to the full width of the Wrap instead of hugging their text.
- Cause: the Row inside TagChip took all available width. A row defaults to MainAxisSize.max.
- Fix: mainAxisSize: MainAxisSize.min on the Row inside TagChip.

## Zone 5 · Photos Grid
- Built: A Grid of photos that reads all the available photos of a Trail with a title over it.
- Error: The Grid had extra padding creating a huge separation from the title.
- Cause: Grids come with a default padding.
- Fix: Setting the padding myself overwrote the default one.

## Zone 2 · Buttons
- As the 3 buttons look exactly the same, I'm building them as a widget on header_button.dart

## Zone 2 + 3 · Trail Data over Header
- Trail data showing under the screen.
- Solved by using: clipBehavior: Clip.none,
