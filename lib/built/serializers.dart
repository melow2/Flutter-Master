import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:quiz_flutter/built/person.dart';

part 'serializers.g.dart';

/// Collection of generated serializers for the built_value chat example.
@SerializersFor([
  Person,
])
final Serializers serializers = _$serializers;

final standardSerializers = (serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Person)]),
        () => ListBuilder<Person>(),
      ))
    .build();

