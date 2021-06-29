import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../lib/screens/test/cubit/test_cubit.dart';


void main() {
  // MockRepository mockRepository;
  late TestCubit cubit;

  setUp(() {
    // mockRepository = MockRepository();
    // when(mockRepository.call()).thenReturn(mock);

    cubit = TestCubit(
      // repository: mockRepository,
    );
  });

  group('TestCubit:', () {
    // rework once watch SDK is built in
    test('TestInitialState is initial', () {
      expect(
        cubit.state,
        isA<TestInitialState>(),
      );
    });

    blocTest(
      'initializes correctly',
      build: () {
        return cubit;
      },
      act: (TestCubit cubit) async {
        // await cubit.doSomething();
      },
      expect:()=>[
        isA<TestInitialState>()
        // .having(
        //   (TestInitialState state) => state.props,
        //   'Correct properties',
        //   [],
        // )
        ,
      ],
    );
  });
}