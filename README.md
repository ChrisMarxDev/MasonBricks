# flutter_bricks

Collection of mason flutter bricks

## How to use
1. First off install [Mason](https://pub.dev/packages/mason)
2. Run `mason init` in your project
3. Add the following to your `mason.yaml` (This is an example for the screen brick):
    ```yaml
     screen:
       git:
         url: https://github.com/ChrisMarxDev/MasonBricks
         path: bricks/screen
    ```
4. Run `mason get`
5. Run `mason make screen` (from your root) and follow the terminal instruction

## Bricks
#### Screen
Builds a complete null safe screen with screen, cubit, state, screen_test & cubit_test. Just takes in a `name` variable to generate everything.

## Getting Started with Flutter
A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
