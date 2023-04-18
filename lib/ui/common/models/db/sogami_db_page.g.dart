// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sogami_db_page.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSogamiDbPageCollection on Isar {
  IsarCollection<SogamiDbPage> get sogamiDbPages => this.collection();
}

const SogamiDbPageSchema = CollectionSchema(
  name: r'SogamiDbPage',
  id: -9458498609062081,
  properties: {
    r'baseType': PropertySchema(
      id: 0,
      name: r'baseType',
      type: IsarType.string,
    ),
    r'childrenIds': PropertySchema(
      id: 1,
      name: r'childrenIds',
      type: IsarType.stringList,
    ),
    r'createdById': PropertySchema(
      id: 2,
      name: r'createdById',
      type: IsarType.string,
    ),
    r'createdOn': PropertySchema(
      id: 3,
      name: r'createdOn',
      type: IsarType.dateTime,
    ),
    r'id': PropertySchema(
      id: 4,
      name: r'id',
      type: IsarType.string,
    ),
    r'lastModifiedById': PropertySchema(
      id: 5,
      name: r'lastModifiedById',
      type: IsarType.string,
    ),
    r'lastModifiedOn': PropertySchema(
      id: 6,
      name: r'lastModifiedOn',
      type: IsarType.dateTime,
    ),
    r'links': PropertySchema(
      id: 7,
      name: r'links',
      type: IsarType.objectList,
      target: r'SogamiDbLink',
    ),
    r'parentId': PropertySchema(
      id: 8,
      name: r'parentId',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 9,
      name: r'title',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 10,
      name: r'type',
      type: IsarType.string,
    )
  },
  estimateSize: _sogamiDbPageEstimateSize,
  serialize: _sogamiDbPageSerialize,
  deserialize: _sogamiDbPageDeserialize,
  deserializeProp: _sogamiDbPageDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {r'SogamiDbLink': SogamiDbLinkSchema},
  getId: _sogamiDbPageGetId,
  getLinks: _sogamiDbPageGetLinks,
  attach: _sogamiDbPageAttach,
  version: '3.1.0',
);

int _sogamiDbPageEstimateSize(
  SogamiDbPage object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.baseType.length * 3;
  bytesCount += 3 + object.childrenIds.length * 3;
  {
    for (var i = 0; i < object.childrenIds.length; i++) {
      final value = object.childrenIds[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.createdById.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.lastModifiedById.length * 3;
  bytesCount += 3 + object.links.length * 3;
  {
    final offsets = allOffsets[SogamiDbLink]!;
    for (var i = 0; i < object.links.length; i++) {
      final value = object.links[i];
      bytesCount += SogamiDbLinkSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.parentId.length * 3;
  bytesCount += 3 + object.title.length * 3;
  bytesCount += 3 + object.type.length * 3;
  return bytesCount;
}

void _sogamiDbPageSerialize(
  SogamiDbPage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.baseType);
  writer.writeStringList(offsets[1], object.childrenIds);
  writer.writeString(offsets[2], object.createdById);
  writer.writeDateTime(offsets[3], object.createdOn);
  writer.writeString(offsets[4], object.id);
  writer.writeString(offsets[5], object.lastModifiedById);
  writer.writeDateTime(offsets[6], object.lastModifiedOn);
  writer.writeObjectList<SogamiDbLink>(
    offsets[7],
    allOffsets,
    SogamiDbLinkSchema.serialize,
    object.links,
  );
  writer.writeString(offsets[8], object.parentId);
  writer.writeString(offsets[9], object.title);
  writer.writeString(offsets[10], object.type);
}

SogamiDbPage _sogamiDbPageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SogamiDbPage(
    childrenIds: reader.readStringList(offsets[1]) ?? [],
    createdById: reader.readString(offsets[2]),
    createdOn: reader.readDateTime(offsets[3]),
    id: reader.readString(offsets[4]),
    lastModifiedById: reader.readString(offsets[5]),
    lastModifiedOn: reader.readDateTime(offsets[6]),
    parentId: reader.readString(offsets[8]),
    title: reader.readString(offsets[9]),
    type: reader.readString(offsets[10]),
  );
  object.links = reader.readObjectList<SogamiDbLink>(
        offsets[7],
        SogamiDbLinkSchema.deserialize,
        allOffsets,
        SogamiDbLink(),
      ) ??
      [];
  return object;
}

P _sogamiDbPageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringList(offset) ?? []) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readObjectList<SogamiDbLink>(
            offset,
            SogamiDbLinkSchema.deserialize,
            allOffsets,
            SogamiDbLink(),
          ) ??
          []) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _sogamiDbPageGetId(SogamiDbPage object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _sogamiDbPageGetLinks(SogamiDbPage object) {
  return [];
}

void _sogamiDbPageAttach(
    IsarCollection<dynamic> col, Id id, SogamiDbPage object) {}

extension SogamiDbPageQueryWhereSort
    on QueryBuilder<SogamiDbPage, SogamiDbPage, QWhere> {
  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SogamiDbPageQueryWhere
    on QueryBuilder<SogamiDbPage, SogamiDbPage, QWhereClause> {
  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SogamiDbPageQueryFilter
    on QueryBuilder<SogamiDbPage, SogamiDbPage, QFilterCondition> {
  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      baseTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'baseType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      baseTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'baseType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      baseTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'baseType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      baseTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'baseType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      baseTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'baseType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      baseTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'baseType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      baseTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'baseType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      baseTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'baseType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      baseTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'baseType',
        value: '',
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      baseTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'baseType',
        value: '',
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      childrenIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'childrenIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      childrenIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'childrenIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      childrenIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'childrenIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      childrenIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'childrenIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      childrenIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'childrenIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      childrenIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'childrenIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      childrenIdsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'childrenIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      childrenIdsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'childrenIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      childrenIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'childrenIds',
        value: '',
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      childrenIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'childrenIds',
        value: '',
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      childrenIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'childrenIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      childrenIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'childrenIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      childrenIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'childrenIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      childrenIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'childrenIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      childrenIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'childrenIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      childrenIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'childrenIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      createdByIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      createdByIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      createdByIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      createdByIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdById',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      createdByIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'createdById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      createdByIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'createdById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      createdByIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      createdByIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdById',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      createdByIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdById',
        value: '',
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      createdByIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdById',
        value: '',
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      createdOnEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdOn',
        value: value,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      createdOnGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdOn',
        value: value,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      createdOnLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdOn',
        value: value,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      createdOnBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdOn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      lastModifiedByIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastModifiedById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      lastModifiedByIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastModifiedById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      lastModifiedByIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastModifiedById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      lastModifiedByIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastModifiedById',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      lastModifiedByIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastModifiedById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      lastModifiedByIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastModifiedById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      lastModifiedByIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastModifiedById',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      lastModifiedByIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastModifiedById',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      lastModifiedByIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastModifiedById',
        value: '',
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      lastModifiedByIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastModifiedById',
        value: '',
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      lastModifiedOnEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastModifiedOn',
        value: value,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      lastModifiedOnGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastModifiedOn',
        value: value,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      lastModifiedOnLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastModifiedOn',
        value: value,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      lastModifiedOnBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastModifiedOn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      linksLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'links',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      linksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'links',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      linksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'links',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      linksLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'links',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      linksLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'links',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      linksLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'links',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      parentIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      parentIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'parentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      parentIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'parentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      parentIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'parentId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      parentIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'parentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      parentIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'parentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      parentIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'parentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      parentIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'parentId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      parentIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentId',
        value: '',
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      parentIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'parentId',
        value: '',
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> typeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition>
      typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }
}

extension SogamiDbPageQueryObject
    on QueryBuilder<SogamiDbPage, SogamiDbPage, QFilterCondition> {
  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterFilterCondition> linksElement(
      FilterQuery<SogamiDbLink> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'links');
    });
  }
}

extension SogamiDbPageQueryLinks
    on QueryBuilder<SogamiDbPage, SogamiDbPage, QFilterCondition> {}

extension SogamiDbPageQuerySortBy
    on QueryBuilder<SogamiDbPage, SogamiDbPage, QSortBy> {
  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> sortByBaseType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseType', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> sortByBaseTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseType', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> sortByCreatedById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdById', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy>
      sortByCreatedByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdById', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> sortByCreatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdOn', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> sortByCreatedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdOn', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy>
      sortByLastModifiedById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedById', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy>
      sortByLastModifiedByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedById', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy>
      sortByLastModifiedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedOn', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy>
      sortByLastModifiedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedOn', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> sortByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> sortByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension SogamiDbPageQuerySortThenBy
    on QueryBuilder<SogamiDbPage, SogamiDbPage, QSortThenBy> {
  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> thenByBaseType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseType', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> thenByBaseTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseType', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> thenByCreatedById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdById', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy>
      thenByCreatedByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdById', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> thenByCreatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdOn', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> thenByCreatedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdOn', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy>
      thenByLastModifiedById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedById', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy>
      thenByLastModifiedByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedById', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy>
      thenByLastModifiedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedOn', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy>
      thenByLastModifiedOnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedOn', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> thenByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> thenByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension SogamiDbPageQueryWhereDistinct
    on QueryBuilder<SogamiDbPage, SogamiDbPage, QDistinct> {
  QueryBuilder<SogamiDbPage, SogamiDbPage, QDistinct> distinctByBaseType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'baseType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QDistinct> distinctByChildrenIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'childrenIds');
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QDistinct> distinctByCreatedById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdById', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QDistinct> distinctByCreatedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdOn');
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QDistinct>
      distinctByLastModifiedById({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastModifiedById',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QDistinct>
      distinctByLastModifiedOn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastModifiedOn');
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QDistinct> distinctByParentId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SogamiDbPage, SogamiDbPage, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }
}

extension SogamiDbPageQueryProperty
    on QueryBuilder<SogamiDbPage, SogamiDbPage, QQueryProperty> {
  QueryBuilder<SogamiDbPage, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<SogamiDbPage, String, QQueryOperations> baseTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'baseType');
    });
  }

  QueryBuilder<SogamiDbPage, List<String>, QQueryOperations>
      childrenIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'childrenIds');
    });
  }

  QueryBuilder<SogamiDbPage, String, QQueryOperations> createdByIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdById');
    });
  }

  QueryBuilder<SogamiDbPage, DateTime, QQueryOperations> createdOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdOn');
    });
  }

  QueryBuilder<SogamiDbPage, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SogamiDbPage, String, QQueryOperations>
      lastModifiedByIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastModifiedById');
    });
  }

  QueryBuilder<SogamiDbPage, DateTime, QQueryOperations>
      lastModifiedOnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastModifiedOn');
    });
  }

  QueryBuilder<SogamiDbPage, List<SogamiDbLink>, QQueryOperations>
      linksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'links');
    });
  }

  QueryBuilder<SogamiDbPage, String, QQueryOperations> parentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentId');
    });
  }

  QueryBuilder<SogamiDbPage, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<SogamiDbPage, String, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}
