import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';


part '{{#snakeCase}}{{name}}{{/snakeCase}}_state.dart';


class {{#pascalCase}}{{name}}{{/pascalCase}}Cubit extends Cubit<{{#pascalCase}}{{name}}{{/pascalCase}}State> {
{{#pascalCase}}{{name}}{{/pascalCase}}Cubit() : super({{#pascalCase}}{{name}}{{/pascalCase}}InitialState());
}
