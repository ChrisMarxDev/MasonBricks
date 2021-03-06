import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.dart';


class {{#pascalCase}}{{name}}{{/pascalCase}}Screen extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}Screen({Key? key}) : super(key: key);

  static PageRoute route() {
    return MaterialPageRoute(builder: (context) => const {{#pascalCase}}{{name}}{{/pascalCase}}Screen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
        {{#pascalCase}}{{name}}{{/pascalCase}}Cubit(),
        child: const {{#pascalCase}}{{name}}{{/pascalCase}}View(),
      );
  }
}

class {{#pascalCase}}{{name}}{{/pascalCase}}View extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO implement
    return BlocBuilder<{{#pascalCase}}{{name}}{{/pascalCase}}Cubit,{{#pascalCase}}{{name}}{{/pascalCase}}State>(builder: (context, state) {
      return Container();
    },);
  }
}
