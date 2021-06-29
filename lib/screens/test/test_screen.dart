import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/test_cubit.dart';


class TestScreen extends StatelessWidget {
const TestScreen({Key? key}) : super(key: key);

static PageRoute route() {
  return MaterialPageRoute(builder: (context) => const TestScreen());
}

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
        TestCubit(),
        child: TestContent(),
      );
  }
}

class TestContent extends StatelessWidget {
  const TestContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO implement
    return Container();
  }
}
