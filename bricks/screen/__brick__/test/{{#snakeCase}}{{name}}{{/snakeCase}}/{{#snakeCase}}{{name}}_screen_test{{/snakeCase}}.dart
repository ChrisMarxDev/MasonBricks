import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../lib//screens/{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}_screen.dart';
import '../../lib/screens/{{#snakeCase}}{{name}}{{/snakeCase}}/cubit/{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class Mock{{#pascalCase}}{{name}}{{/pascalCase}}Cubit extends Mock implements {{#pascalCase}}{{name}}{{/pascalCase}}Cubit {}

void main() {
  late {{#pascalCase}}{{name}}{{/pascalCase}}Cubit cubit;

  Widget materialApp() => MaterialApp(
    routes: {},
    home: BlocProvider(
      create: (_) => cubit,
      child: {{#pascalCase}}{{name}}{{/pascalCase}}Content(),
    ),
  );

  setUp(() {
    cubit = Mock{{#pascalCase}}{{name}}{{/pascalCase}}Cubit();
  });

  group('{{#pascalCase}}{{name}}{{/pascalCase}}Content:', () {
    testWidgets('Renders', (WidgetTester tester) async {
      final app = materialApp();

      await tester.pumpWidget(app);
      await tester.pumpAndSettle();

      expect(find.byType({{#pascalCase}}{{name}}{{/pascalCase}}Content), findsOneWidget);
    });

    testWidgets('Builds initial state', (WidgetTester tester) async {
      when(()=>cubit.state).thenReturn({{#pascalCase}}{{name}}{{/pascalCase}}InitialState());

      final app = materialApp();

      await tester.pumpWidget(app);
      await tester.pumpAndSettle();

      expect(find.byType({{#pascalCase}}{{name}}{{/pascalCase}}Content), findsOneWidget);
    });

  // testWidgets('Calls X on tapping Y', (WidgetTester tester) async {
  //       when(cubit.state).thenReturn({{#pascalCase}}{{name}}{{/pascalCase}}InitialState());
  //
  //       final app = materialApp();
  //
  //       await tester.pumpWidget(app);
  //       await tester.pumpAndSettle();
  //
  //       await tester.tap(
  //         find.byType(RaisedButton)
  //       );
  //
  //     verify(cubit.function()).called(1);
  // });
  });
}