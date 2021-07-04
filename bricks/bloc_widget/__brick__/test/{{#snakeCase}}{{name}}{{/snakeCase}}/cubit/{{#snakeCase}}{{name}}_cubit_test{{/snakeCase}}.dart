import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../../lib/screens/{{#snakeCase}}{{name}}{{/snakeCase}}/cubit/{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.dart';


void main() {
  // MockRepository mockRepository;
  late {{#pascalCase}}{{name}}{{/pascalCase}}Cubit cubit;

  setUp(() {
    // mockRepository = MockRepository();
    // when(()=>mockRepository.call()).thenReturn(mock);

    cubit = {{#pascalCase}}{{name}}{{/pascalCase}}Cubit(
      // repository: mockRepository,
    );
  });

  group('{{#pascalCase}}{{name}}{{/pascalCase}}Cubit:', () {
    // rework once watch SDK is built in
    test('{{#pascalCase}}{{name}}{{/pascalCase}}InitialState is initial', () {
      expect(
        cubit.state,
        isA<{{#pascalCase}}{{name}}{{/pascalCase}}InitialState>(),
      );
    });

    blocTest(
      'initializes correctly',
      build: () {
        return cubit;
      },
      act: ({{#pascalCase}}{{name}}{{/pascalCase}}Cubit cubit) async {
        // await cubit.doSomething();
      },
      expect:()=>[
        isA<{{#pascalCase}}{{name}}{{/pascalCase}}InitialState>()
        // .having(
        //   ({{#pascalCase}}{{name}}{{/pascalCase}}InitialState state) => state.props,
        //   'Correct properties',
        //   [],
        // )
        ,
      ],
    );
  });
}