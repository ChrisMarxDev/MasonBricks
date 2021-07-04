import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.dart';


class {{#pascalCase}}{{name}}{{/pascalCase}}Widget extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}Widget({Key? key}) : super(key: key);

{{#routable}}
  static PageRoute route() {
    return MaterialPageRoute(builder: (context) => const {{#pascalCase}}{{name}}{{/pascalCase}}Screen());
  }
{{/routable}}

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
        {{#pascalCase}}{{name}}{{/pascalCase}}Cubit(),
        child: const {{#pascalCase}}{{name}}{{/pascalCase}}Content(),
      );
  }
}

class {{#pascalCase}}{{name}}{{/pascalCase}}View extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO implement
    return BlocBuilder<{{#pascalCase}}{{name}}{{/pascalCase}}Cubit,{{#pascalCase}}{{name}}{{/pascalCase}}State>(builder: (context, state) {
      return Container();
    },);
  }
}
