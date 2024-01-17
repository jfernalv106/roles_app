// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_local.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRolLocalCollection on Isar {
  IsarCollection<RolLocal> get rolLocals => this.collection();
}

const RolLocalSchema = CollectionSchema(
  name: r'RolLocal',
  id: -6635042967568418207,
  properties: {
    r'anoreaSii': PropertySchema(
      id: 0,
      name: r'anoreaSii',
      type: IsarType.string,
    ),
    r'areaHa': PropertySchema(
      id: 1,
      name: r'areaHa',
      type: IsarType.long,
    ),
    r'codicomu': PropertySchema(
      id: 2,
      name: r'codicomu',
      type: IsarType.long,
    ),
    r'descClasif': PropertySchema(
      id: 3,
      name: r'descClasif',
      type: IsarType.string,
    ),
    r'descComu': PropertySchema(
      id: 4,
      name: r'descComu',
      type: IsarType.string,
    ),
    r'escaIngr': PropertySchema(
      id: 5,
      name: r'escaIngr',
      type: IsarType.long,
    ),
    r'fechIngr': PropertySchema(
      id: 6,
      name: r'fechIngr',
      type: IsarType.long,
    ),
    r'idGeo': PropertySchema(
      id: 7,
      name: r'idGeo',
      type: IsarType.string,
    ),
    r'lugarBn': PropertySchema(
      id: 8,
      name: r'lugarBn',
      type: IsarType.string,
    ),
    r'msLink': PropertySchema(
      id: 9,
      name: r'msLink',
      type: IsarType.string,
    ),
    r'nombrePredio': PropertySchema(
      id: 10,
      name: r'nombrePredio',
      type: IsarType.string,
    ),
    r'ortoFoto': PropertySchema(
      id: 11,
      name: r'ortoFoto',
      type: IsarType.string,
    ),
    r'ortoImage': PropertySchema(
      id: 12,
      name: r'ortoImage',
      type: IsarType.string,
    ),
    r'perimetros': PropertySchema(
      id: 13,
      name: r'perimetros',
      type: IsarType.objectList,
      target: r'PerimetroLocal',
    ),
    r'prediosId': PropertySchema(
      id: 14,
      name: r'prediosId',
      type: IsarType.long,
    ),
    r'propietario': PropertySchema(
      id: 15,
      name: r'propietario',
      type: IsarType.string,
    ),
    r'rol': PropertySchema(
      id: 16,
      name: r'rol',
      type: IsarType.string,
    ),
    r'rolId': PropertySchema(
      id: 17,
      name: r'rolId',
      type: IsarType.long,
    )
  },
  estimateSize: _rolLocalEstimateSize,
  serialize: _rolLocalSerialize,
  deserialize: _rolLocalDeserialize,
  deserializeProp: _rolLocalDeserializeProp,
  idName: r'id',
  indexes: {
    r'id_rol': IndexSchema(
      id: 5763849217172837568,
      name: r'id_rol',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'rolId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'PerimetroLocal': PerimetroLocalSchema},
  getId: _rolLocalGetId,
  getLinks: _rolLocalGetLinks,
  attach: _rolLocalAttach,
  version: '3.1.0+1',
);

int _rolLocalEstimateSize(
  RolLocal object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.anoreaSii;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.descClasif;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.descComu;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.idGeo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lugarBn;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.msLink;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.nombrePredio;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ortoFoto;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ortoImage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.perimetros.length * 3;
  {
    final offsets = allOffsets[PerimetroLocal]!;
    for (var i = 0; i < object.perimetros.length; i++) {
      final value = object.perimetros[i];
      bytesCount +=
          PerimetroLocalSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  {
    final value = object.propietario;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.rol;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _rolLocalSerialize(
  RolLocal object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.anoreaSii);
  writer.writeLong(offsets[1], object.areaHa);
  writer.writeLong(offsets[2], object.codicomu);
  writer.writeString(offsets[3], object.descClasif);
  writer.writeString(offsets[4], object.descComu);
  writer.writeLong(offsets[5], object.escaIngr);
  writer.writeLong(offsets[6], object.fechIngr);
  writer.writeString(offsets[7], object.idGeo);
  writer.writeString(offsets[8], object.lugarBn);
  writer.writeString(offsets[9], object.msLink);
  writer.writeString(offsets[10], object.nombrePredio);
  writer.writeString(offsets[11], object.ortoFoto);
  writer.writeString(offsets[12], object.ortoImage);
  writer.writeObjectList<PerimetroLocal>(
    offsets[13],
    allOffsets,
    PerimetroLocalSchema.serialize,
    object.perimetros,
  );
  writer.writeLong(offsets[14], object.prediosId);
  writer.writeString(offsets[15], object.propietario);
  writer.writeString(offsets[16], object.rol);
  writer.writeLong(offsets[17], object.rolId);
}

RolLocal _rolLocalDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RolLocal();
  object.anoreaSii = reader.readStringOrNull(offsets[0]);
  object.areaHa = reader.readLongOrNull(offsets[1]);
  object.codicomu = reader.readLongOrNull(offsets[2]);
  object.descClasif = reader.readStringOrNull(offsets[3]);
  object.descComu = reader.readStringOrNull(offsets[4]);
  object.escaIngr = reader.readLongOrNull(offsets[5]);
  object.fechIngr = reader.readLongOrNull(offsets[6]);
  object.id = id;
  object.idGeo = reader.readStringOrNull(offsets[7]);
  object.lugarBn = reader.readStringOrNull(offsets[8]);
  object.msLink = reader.readStringOrNull(offsets[9]);
  object.nombrePredio = reader.readStringOrNull(offsets[10]);
  object.ortoFoto = reader.readStringOrNull(offsets[11]);
  object.ortoImage = reader.readStringOrNull(offsets[12]);
  object.perimetros = reader.readObjectList<PerimetroLocal>(
        offsets[13],
        PerimetroLocalSchema.deserialize,
        allOffsets,
        PerimetroLocal(),
      ) ??
      [];
  object.prediosId = reader.readLongOrNull(offsets[14]);
  object.propietario = reader.readStringOrNull(offsets[15]);
  object.rol = reader.readStringOrNull(offsets[16]);
  object.rolId = reader.readLongOrNull(offsets[17]);
  return object;
}

P _rolLocalDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readObjectList<PerimetroLocal>(
            offset,
            PerimetroLocalSchema.deserialize,
            allOffsets,
            PerimetroLocal(),
          ) ??
          []) as P;
    case 14:
      return (reader.readLongOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _rolLocalGetId(RolLocal object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _rolLocalGetLinks(RolLocal object) {
  return [];
}

void _rolLocalAttach(IsarCollection<dynamic> col, Id id, RolLocal object) {
  object.id = id;
}

extension RolLocalByIndex on IsarCollection<RolLocal> {
  Future<RolLocal?> getByRolId(int? rolId) {
    return getByIndex(r'id_rol', [rolId]);
  }

  RolLocal? getByRolIdSync(int? rolId) {
    return getByIndexSync(r'id_rol', [rolId]);
  }

  Future<bool> deleteByRolId(int? rolId) {
    return deleteByIndex(r'id_rol', [rolId]);
  }

  bool deleteByRolIdSync(int? rolId) {
    return deleteByIndexSync(r'id_rol', [rolId]);
  }

  Future<List<RolLocal?>> getAllByRolId(List<int?> rolIdValues) {
    final values = rolIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'id_rol', values);
  }

  List<RolLocal?> getAllByRolIdSync(List<int?> rolIdValues) {
    final values = rolIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'id_rol', values);
  }

  Future<int> deleteAllByRolId(List<int?> rolIdValues) {
    final values = rolIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'id_rol', values);
  }

  int deleteAllByRolIdSync(List<int?> rolIdValues) {
    final values = rolIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'id_rol', values);
  }

  Future<Id> putByRolId(RolLocal object) {
    return putByIndex(r'id_rol', object);
  }

  Id putByRolIdSync(RolLocal object, {bool saveLinks = true}) {
    return putByIndexSync(r'id_rol', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByRolId(List<RolLocal> objects) {
    return putAllByIndex(r'id_rol', objects);
  }

  List<Id> putAllByRolIdSync(List<RolLocal> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'id_rol', objects, saveLinks: saveLinks);
  }
}

extension RolLocalQueryWhereSort on QueryBuilder<RolLocal, RolLocal, QWhere> {
  QueryBuilder<RolLocal, RolLocal, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterWhere> anyRolId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'id_rol'),
      );
    });
  }
}

extension RolLocalQueryWhere on QueryBuilder<RolLocal, RolLocal, QWhereClause> {
  QueryBuilder<RolLocal, RolLocal, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterWhereClause> rolIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'id_rol',
        value: [null],
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterWhereClause> rolIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'id_rol',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterWhereClause> rolIdEqualTo(int? rolId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'id_rol',
        value: [rolId],
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterWhereClause> rolIdNotEqualTo(
      int? rolId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id_rol',
              lower: [],
              upper: [rolId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id_rol',
              lower: [rolId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id_rol',
              lower: [rolId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id_rol',
              lower: [],
              upper: [rolId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterWhereClause> rolIdGreaterThan(
    int? rolId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'id_rol',
        lower: [rolId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterWhereClause> rolIdLessThan(
    int? rolId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'id_rol',
        lower: [],
        upper: [rolId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterWhereClause> rolIdBetween(
    int? lowerRolId,
    int? upperRolId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'id_rol',
        lower: [lowerRolId],
        includeLower: includeLower,
        upper: [upperRolId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RolLocalQueryFilter
    on QueryBuilder<RolLocal, RolLocal, QFilterCondition> {
  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> anoreaSiiIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'anoreaSii',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> anoreaSiiIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'anoreaSii',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> anoreaSiiEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'anoreaSii',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> anoreaSiiGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'anoreaSii',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> anoreaSiiLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'anoreaSii',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> anoreaSiiBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'anoreaSii',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> anoreaSiiStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'anoreaSii',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> anoreaSiiEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'anoreaSii',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> anoreaSiiContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'anoreaSii',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> anoreaSiiMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'anoreaSii',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> anoreaSiiIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'anoreaSii',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      anoreaSiiIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'anoreaSii',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> areaHaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'areaHa',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> areaHaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'areaHa',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> areaHaEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'areaHa',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> areaHaGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'areaHa',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> areaHaLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'areaHa',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> areaHaBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'areaHa',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> codicomuIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'codicomu',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> codicomuIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'codicomu',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> codicomuEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'codicomu',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> codicomuGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'codicomu',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> codicomuLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'codicomu',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> codicomuBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'codicomu',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descClasifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descClasif',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      descClasifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descClasif',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descClasifEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descClasif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descClasifGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descClasif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descClasifLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descClasif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descClasifBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descClasif',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descClasifStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descClasif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descClasifEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descClasif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descClasifContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descClasif',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descClasifMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descClasif',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descClasifIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descClasif',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      descClasifIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descClasif',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descComuIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descComu',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descComuIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descComu',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descComuEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descComu',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descComuGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descComu',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descComuLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descComu',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descComuBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descComu',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descComuStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descComu',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descComuEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descComu',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descComuContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descComu',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descComuMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descComu',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descComuIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descComu',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> descComuIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descComu',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> escaIngrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'escaIngr',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> escaIngrIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'escaIngr',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> escaIngrEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'escaIngr',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> escaIngrGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'escaIngr',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> escaIngrLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'escaIngr',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> escaIngrBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'escaIngr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> fechIngrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechIngr',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> fechIngrIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechIngr',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> fechIngrEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechIngr',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> fechIngrGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechIngr',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> fechIngrLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechIngr',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> fechIngrBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechIngr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idGeoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idGeo',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idGeoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idGeo',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idGeoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idGeo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idGeoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idGeo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idGeoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idGeo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idGeoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idGeo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idGeoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idGeo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idGeoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idGeo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idGeoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idGeo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idGeoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idGeo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idGeoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idGeo',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> idGeoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idGeo',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> lugarBnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lugarBn',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> lugarBnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lugarBn',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> lugarBnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lugarBn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> lugarBnGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lugarBn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> lugarBnLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lugarBn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> lugarBnBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lugarBn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> lugarBnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lugarBn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> lugarBnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lugarBn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> lugarBnContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lugarBn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> lugarBnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lugarBn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> lugarBnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lugarBn',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> lugarBnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lugarBn',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> msLinkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'msLink',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> msLinkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'msLink',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> msLinkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'msLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> msLinkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'msLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> msLinkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'msLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> msLinkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'msLink',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> msLinkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'msLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> msLinkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'msLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> msLinkContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'msLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> msLinkMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'msLink',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> msLinkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'msLink',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> msLinkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'msLink',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> nombrePredioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nombrePredio',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      nombrePredioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nombrePredio',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> nombrePredioEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombrePredio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      nombrePredioGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombrePredio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> nombrePredioLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombrePredio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> nombrePredioBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombrePredio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      nombrePredioStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombrePredio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> nombrePredioEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombrePredio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> nombrePredioContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombrePredio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> nombrePredioMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombrePredio',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      nombrePredioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombrePredio',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      nombrePredioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombrePredio',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoFotoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ortoFoto',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoFotoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ortoFoto',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoFotoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ortoFoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoFotoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ortoFoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoFotoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ortoFoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoFotoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ortoFoto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoFotoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ortoFoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoFotoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ortoFoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoFotoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ortoFoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoFotoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ortoFoto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoFotoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ortoFoto',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoFotoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ortoFoto',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoImageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ortoImage',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoImageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ortoImage',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoImageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ortoImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoImageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ortoImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoImageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ortoImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoImageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ortoImage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoImageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ortoImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoImageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ortoImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoImageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ortoImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoImageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ortoImage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> ortoImageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ortoImage',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      ortoImageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ortoImage',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      perimetrosLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'perimetros',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> perimetrosIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'perimetros',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      perimetrosIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'perimetros',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      perimetrosLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'perimetros',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      perimetrosLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'perimetros',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      perimetrosLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'perimetros',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> prediosIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prediosId',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> prediosIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prediosId',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> prediosIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prediosId',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> prediosIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prediosId',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> prediosIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prediosId',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> prediosIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prediosId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> propietarioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'propietario',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      propietarioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'propietario',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> propietarioEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'propietario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      propietarioGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'propietario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> propietarioLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'propietario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> propietarioBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'propietario',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> propietarioStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'propietario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> propietarioEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'propietario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> propietarioContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'propietario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> propietarioMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'propietario',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> propietarioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'propietario',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition>
      propietarioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'propietario',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rol',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rol',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rol',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rol',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rol',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rol',
        value: '',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rolId',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rolId',
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rolId',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rolId',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rolId',
        value: value,
      ));
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> rolIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rolId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RolLocalQueryObject
    on QueryBuilder<RolLocal, RolLocal, QFilterCondition> {
  QueryBuilder<RolLocal, RolLocal, QAfterFilterCondition> perimetrosElement(
      FilterQuery<PerimetroLocal> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'perimetros');
    });
  }
}

extension RolLocalQueryLinks
    on QueryBuilder<RolLocal, RolLocal, QFilterCondition> {}

extension RolLocalQuerySortBy on QueryBuilder<RolLocal, RolLocal, QSortBy> {
  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByAnoreaSii() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anoreaSii', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByAnoreaSiiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anoreaSii', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByAreaHa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'areaHa', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByAreaHaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'areaHa', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByCodicomu() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codicomu', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByCodicomuDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codicomu', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByDescClasif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descClasif', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByDescClasifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descClasif', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByDescComu() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descComu', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByDescComuDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descComu', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByEscaIngr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'escaIngr', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByEscaIngrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'escaIngr', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByFechIngr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechIngr', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByFechIngrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechIngr', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByIdGeo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idGeo', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByIdGeoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idGeo', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByLugarBn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lugarBn', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByLugarBnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lugarBn', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByMsLink() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'msLink', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByMsLinkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'msLink', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByNombrePredio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombrePredio', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByNombrePredioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombrePredio', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByOrtoFoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ortoFoto', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByOrtoFotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ortoFoto', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByOrtoImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ortoImage', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByOrtoImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ortoImage', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByPrediosId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prediosId', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByPrediosIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prediosId', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByPropietario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'propietario', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByPropietarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'propietario', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByRol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rol', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByRolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rol', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByRolId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rolId', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> sortByRolIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rolId', Sort.desc);
    });
  }
}

extension RolLocalQuerySortThenBy
    on QueryBuilder<RolLocal, RolLocal, QSortThenBy> {
  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByAnoreaSii() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anoreaSii', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByAnoreaSiiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anoreaSii', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByAreaHa() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'areaHa', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByAreaHaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'areaHa', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByCodicomu() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codicomu', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByCodicomuDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'codicomu', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByDescClasif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descClasif', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByDescClasifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descClasif', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByDescComu() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descComu', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByDescComuDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descComu', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByEscaIngr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'escaIngr', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByEscaIngrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'escaIngr', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByFechIngr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechIngr', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByFechIngrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechIngr', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByIdGeo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idGeo', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByIdGeoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idGeo', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByLugarBn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lugarBn', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByLugarBnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lugarBn', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByMsLink() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'msLink', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByMsLinkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'msLink', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByNombrePredio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombrePredio', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByNombrePredioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombrePredio', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByOrtoFoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ortoFoto', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByOrtoFotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ortoFoto', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByOrtoImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ortoImage', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByOrtoImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ortoImage', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByPrediosId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prediosId', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByPrediosIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prediosId', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByPropietario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'propietario', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByPropietarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'propietario', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByRol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rol', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByRolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rol', Sort.desc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByRolId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rolId', Sort.asc);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QAfterSortBy> thenByRolIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rolId', Sort.desc);
    });
  }
}

extension RolLocalQueryWhereDistinct
    on QueryBuilder<RolLocal, RolLocal, QDistinct> {
  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByAnoreaSii(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'anoreaSii', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByAreaHa() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'areaHa');
    });
  }

  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByCodicomu() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'codicomu');
    });
  }

  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByDescClasif(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descClasif', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByDescComu(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descComu', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByEscaIngr() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'escaIngr');
    });
  }

  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByFechIngr() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechIngr');
    });
  }

  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByIdGeo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idGeo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByLugarBn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lugarBn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByMsLink(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'msLink', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByNombrePredio(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombrePredio', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByOrtoFoto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ortoFoto', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByOrtoImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ortoImage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByPrediosId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prediosId');
    });
  }

  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByPropietario(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'propietario', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByRol(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rol', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RolLocal, RolLocal, QDistinct> distinctByRolId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rolId');
    });
  }
}

extension RolLocalQueryProperty
    on QueryBuilder<RolLocal, RolLocal, QQueryProperty> {
  QueryBuilder<RolLocal, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RolLocal, String?, QQueryOperations> anoreaSiiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'anoreaSii');
    });
  }

  QueryBuilder<RolLocal, int?, QQueryOperations> areaHaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'areaHa');
    });
  }

  QueryBuilder<RolLocal, int?, QQueryOperations> codicomuProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'codicomu');
    });
  }

  QueryBuilder<RolLocal, String?, QQueryOperations> descClasifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descClasif');
    });
  }

  QueryBuilder<RolLocal, String?, QQueryOperations> descComuProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descComu');
    });
  }

  QueryBuilder<RolLocal, int?, QQueryOperations> escaIngrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'escaIngr');
    });
  }

  QueryBuilder<RolLocal, int?, QQueryOperations> fechIngrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechIngr');
    });
  }

  QueryBuilder<RolLocal, String?, QQueryOperations> idGeoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idGeo');
    });
  }

  QueryBuilder<RolLocal, String?, QQueryOperations> lugarBnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lugarBn');
    });
  }

  QueryBuilder<RolLocal, String?, QQueryOperations> msLinkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'msLink');
    });
  }

  QueryBuilder<RolLocal, String?, QQueryOperations> nombrePredioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombrePredio');
    });
  }

  QueryBuilder<RolLocal, String?, QQueryOperations> ortoFotoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ortoFoto');
    });
  }

  QueryBuilder<RolLocal, String?, QQueryOperations> ortoImageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ortoImage');
    });
  }

  QueryBuilder<RolLocal, List<PerimetroLocal>, QQueryOperations>
      perimetrosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'perimetros');
    });
  }

  QueryBuilder<RolLocal, int?, QQueryOperations> prediosIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prediosId');
    });
  }

  QueryBuilder<RolLocal, String?, QQueryOperations> propietarioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'propietario');
    });
  }

  QueryBuilder<RolLocal, String?, QQueryOperations> rolProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rol');
    });
  }

  QueryBuilder<RolLocal, int?, QQueryOperations> rolIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rolId');
    });
  }
}
