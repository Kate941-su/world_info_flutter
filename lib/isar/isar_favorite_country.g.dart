// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_favorite_country.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFavoriteCountryCollection on Isar {
  IsarCollection<FavoriteCountry> get favoriteCountrys => this.collection();
}

const FavoriteCountrySchema = CollectionSchema(
  name: r'FavoriteCountry',
  id: -1871309494674954228,
  properties: {
    r'favoriteCountry': PropertySchema(
      id: 0,
      name: r'favoriteCountry',
      type: IsarType.string,
    )
  },
  estimateSize: _favoriteCountryEstimateSize,
  serialize: _favoriteCountrySerialize,
  deserialize: _favoriteCountryDeserialize,
  deserializeProp: _favoriteCountryDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _favoriteCountryGetId,
  getLinks: _favoriteCountryGetLinks,
  attach: _favoriteCountryAttach,
  version: '3.1.0+1',
);

int _favoriteCountryEstimateSize(
  FavoriteCountry object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.favoriteCountry;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _favoriteCountrySerialize(
  FavoriteCountry object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.favoriteCountry);
}

FavoriteCountry _favoriteCountryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FavoriteCountry();
  object.favoriteCountry = reader.readStringOrNull(offsets[0]);
  object.id = id;
  return object;
}

P _favoriteCountryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _favoriteCountryGetId(FavoriteCountry object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _favoriteCountryGetLinks(FavoriteCountry object) {
  return [];
}

void _favoriteCountryAttach(
    IsarCollection<dynamic> col, Id id, FavoriteCountry object) {
  object.id = id;
}

extension FavoriteCountryQueryWhereSort
    on QueryBuilder<FavoriteCountry, FavoriteCountry, QWhere> {
  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FavoriteCountryQueryWhere
    on QueryBuilder<FavoriteCountry, FavoriteCountry, QWhereClause> {
  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterWhereClause> idBetween(
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
}

extension FavoriteCountryQueryFilter
    on QueryBuilder<FavoriteCountry, FavoriteCountry, QFilterCondition> {
  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterFilterCondition>
      favoriteCountryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'favoriteCountry',
      ));
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterFilterCondition>
      favoriteCountryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'favoriteCountry',
      ));
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterFilterCondition>
      favoriteCountryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'favoriteCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterFilterCondition>
      favoriteCountryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'favoriteCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterFilterCondition>
      favoriteCountryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'favoriteCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterFilterCondition>
      favoriteCountryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'favoriteCountry',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterFilterCondition>
      favoriteCountryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'favoriteCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterFilterCondition>
      favoriteCountryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'favoriteCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterFilterCondition>
      favoriteCountryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'favoriteCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterFilterCondition>
      favoriteCountryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'favoriteCountry',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterFilterCondition>
      favoriteCountryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'favoriteCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterFilterCondition>
      favoriteCountryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'favoriteCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
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

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterFilterCondition>
      idLessThan(
    Id value, {
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

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
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
}

extension FavoriteCountryQueryObject
    on QueryBuilder<FavoriteCountry, FavoriteCountry, QFilterCondition> {}

extension FavoriteCountryQueryLinks
    on QueryBuilder<FavoriteCountry, FavoriteCountry, QFilterCondition> {}

extension FavoriteCountryQuerySortBy
    on QueryBuilder<FavoriteCountry, FavoriteCountry, QSortBy> {
  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterSortBy>
      sortByFavoriteCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favoriteCountry', Sort.asc);
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterSortBy>
      sortByFavoriteCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favoriteCountry', Sort.desc);
    });
  }
}

extension FavoriteCountryQuerySortThenBy
    on QueryBuilder<FavoriteCountry, FavoriteCountry, QSortThenBy> {
  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterSortBy>
      thenByFavoriteCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favoriteCountry', Sort.asc);
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterSortBy>
      thenByFavoriteCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'favoriteCountry', Sort.desc);
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FavoriteCountry, FavoriteCountry, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension FavoriteCountryQueryWhereDistinct
    on QueryBuilder<FavoriteCountry, FavoriteCountry, QDistinct> {
  QueryBuilder<FavoriteCountry, FavoriteCountry, QDistinct>
      distinctByFavoriteCountry({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'favoriteCountry',
          caseSensitive: caseSensitive);
    });
  }
}

extension FavoriteCountryQueryProperty
    on QueryBuilder<FavoriteCountry, FavoriteCountry, QQueryProperty> {
  QueryBuilder<FavoriteCountry, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FavoriteCountry, String?, QQueryOperations>
      favoriteCountryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'favoriteCountry');
    });
  }
}
