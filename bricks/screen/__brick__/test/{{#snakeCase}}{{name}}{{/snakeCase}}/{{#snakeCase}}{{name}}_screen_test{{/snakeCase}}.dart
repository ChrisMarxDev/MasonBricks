import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../lib//screens/{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}_screen.dart';
import '../../lib/screens/{{#snakeCase}}{{name}}{{/snakeCase}}/cubit/{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:bloc_test/bloc_test.dart';


class Mock{{#pascalCase}}{{name}}{{/pascalCase}}Cubit extends Mock implements {{#pascalCase}}{{name}}{{/pascalCase}}Cubit {}

void main() {
  late {{#pascalCase}}{{name}}{{/pascalCase}}Cubit cubit;

  Widget materialApp() => MaterialApp(
    routes: {},
    home: BlocProvider<{{#pascalCase}}{{name}}{{/pascalCase}}State>(
      create: (_) => cubit,
      child: {{#pascalCase}}{{name}}{{/pascalCase}}View(),
    ),
  );

  setUp(() {
    cubit = Mock{{#pascalCase}}{{name}}{{/pascalCase}}Cubit();
    when(() => cubit.close()).thenAnswer((invocation) async {});
    whenListen<{{#pascalCase}}{{name}}{{/pascalCase}}State>(
      cubit,
      Stream.fromIterable([]),
      initialState: const {{#pascalCase}}{{name}}{{/pascalCase}}InitialState(),
  );
  });

  group('{{#pascalCase}}{{name}}{{/pascalCase}}View:', () {
    testWidgets('Renders', (WidgetTester tester) async {
      final app = materialApp();

      await tester.pumpWidget(app);
      await tester.pumpAndSettle();

      expect(find.byType({{#pascalCase}}{{name}}{{/pascalCase}}View), findsOneWidget);
    });

    testWidgets('Builds initial state', (WidgetTester tester) async {
      when(()=>cubit.state).thenReturn({{#pascalCase}}{{name}}{{/pascalCase}}InitialState());

      final app = materialApp();

      await tester.pumpWidget(app);
      await tester.pumpAndSettle();

      expect(find.byType({{#pascalCase}}{{name}}{{/pascalCase}}View), findsOneWidget);
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