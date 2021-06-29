import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../lib//screens/test/test_screen.dart';
import '../../lib/screens/test/cubit/test_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockTestCubit extends Mock implements TestCubit {}

void main() {
  late TestCubit cubit;

  Widget materialApp() => MaterialApp(
    routes: {},
    home: BlocProvider(
      create: (_) => cubit,
      child: TestContent(),
    ),
  );

  setUp(() {
    cubit = MockTestCubit();
  });

  group('TestContent:', () {
    testWidgets('Renders', (WidgetTester tester) async {
      final app = materialApp();

      await tester.pumpWidget(app);
      await tester.pumpAndSettle();

      expect(find.byType(TestContent), findsOneWidget);
    });

    testWidgets('Builds initial state', (WidgetTester tester) async {
      when(cubit.state).thenReturn(TestInitialState());

      final app = materialApp();

      await tester.pumpWidget(app);
      await tester.pumpAndSettle();

      expect(find.byType(TestContent), findsOneWidget);
    });

  // testWidgets('Calls X on tapping Y', (WidgetTester tester) async {
  //       when(cubit.state).thenReturn(TestInitialState());
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