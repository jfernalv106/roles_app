// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perimetro_local.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PerimetroLocalSchema = Schema(
  name: r'PerimetroLocal',
  id: 8052410466220244927,
  properties: {
    r'latitud': PropertySchema(
      id: 0,
      name: r'latitud',
      type: IsarType.double,
    ),
    r'longitud': PropertySchema(
      id: 1,
      name: r'longitud',
      type: IsarType.double,
    ),
    r'predio': PropertySchema(
      id: 2,
      name: r'predio',
      type: IsarType.long,
    )
  },
  estimateSize: _perimetroLocalEstimateSize,
  serialize: _perimetroLocalSerialize,
  deserialize: _perimetroLocalDeserialize,
  deserializeProp: _perimetroLocalDeserializeProp,
);

int _perimetroLocalEstimateSize(
  PerimetroLocal object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _perimetroLocalSerialize(
  PerimetroLocal object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.latitud);
  writer.writeDouble(offsets[1], object.longitud);
  writer.writeLong(offsets[2], object.predio);
}

PerimetroLocal _perimetroLocalDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PerimetroLocal();
  object.latitud = reader.readDoubleOrNull(offsets[0]);
  object.longitud = reader.readDoubleOrNull(offsets[1]);
  object.predio = reader.readLongOrNull(offsets[2]);
  return object;
}

P _perimetroLocalDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PerimetroLocalQueryFilter
    on QueryBuilder<PerimetroLocal, PerimetroLocal, QFilterCondition> {
  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      latitudIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latitud',
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      latitudIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latitud',
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      latitudEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latitud',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      latitudGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latitud',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      latitudLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latitud',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      latitudBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latitud',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      longitudIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'longitud',
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      longitudIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'longitud',
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      longitudEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitud',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      longitudGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longitud',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      longitudLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longitud',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      longitudBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longitud',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      predioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'predio',
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      predioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'predio',
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      predioEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'predio',
        value: value,
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      predioGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'predio',
        value: value,
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      predioLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'predio',
        value: value,
      ));
    });
  }

  QueryBuilder<PerimetroLocal, PerimetroLocal, QAfterFilterCondition>
      predioBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'predio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PerimetroLocalQueryObject
    on QueryBuilder<PerimetroLocal, PerimetroLocal, QFilterCondition> {}
