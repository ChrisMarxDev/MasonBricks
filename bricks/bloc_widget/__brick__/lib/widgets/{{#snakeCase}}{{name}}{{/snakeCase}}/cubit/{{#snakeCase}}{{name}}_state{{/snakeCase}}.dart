part of '{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.dart';

abstract class {{#pascalCase}}{{name}}{{/pascalCase}}State extends Equatable {
  const {{#pascalCase}}{{name}}{{/pascalCase}}State();


  @override
    List<Object> get props => [];
}


class {{#pascalCase}}{{name}}{{/pascalCase}}InitialState extends {{#pascalCase}}{{name}}{{/pascalCase}}State {
  const {{#pascalCase}}{{name}}{{/pascalCase}}InitialState() : super();
}