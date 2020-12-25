// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_history_suggestions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetHistorySuggestionsTearOff {
  const _$SetHistorySuggestionsTearOff();

// ignore: unused_element
  SetHistorySuggestionsAddAll addAll({List<String> historyList}) {
    return SetHistorySuggestionsAddAll(
      historyList: historyList,
    );
  }

// ignore: unused_element
  SetHistorySuggestionsAdd add({String history}) {
    return SetHistorySuggestionsAdd(
      history: history,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetHistorySuggestions = _$SetHistorySuggestionsTearOff();

/// @nodoc
mixin _$SetHistorySuggestions {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addAll(List<String> historyList),
    @required Result add(String history),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addAll(List<String> historyList),
    Result add(String history),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addAll(SetHistorySuggestionsAddAll value),
    @required Result add(SetHistorySuggestionsAdd value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addAll(SetHistorySuggestionsAddAll value),
    Result add(SetHistorySuggestionsAdd value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SetHistorySuggestionsCopyWith<$Res> {
  factory $SetHistorySuggestionsCopyWith(SetHistorySuggestions value, $Res Function(SetHistorySuggestions) then) =
      _$SetHistorySuggestionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetHistorySuggestionsCopyWithImpl<$Res> implements $SetHistorySuggestionsCopyWith<$Res> {
  _$SetHistorySuggestionsCopyWithImpl(this._value, this._then);

  final SetHistorySuggestions _value;

  // ignore: unused_field
  final $Res Function(SetHistorySuggestions) _then;
}

/// @nodoc
abstract class $SetHistorySuggestionsAddAllCopyWith<$Res> {
  factory $SetHistorySuggestionsAddAllCopyWith(
          SetHistorySuggestionsAddAll value, $Res Function(SetHistorySuggestionsAddAll) then) =
      _$SetHistorySuggestionsAddAllCopyWithImpl<$Res>;

  $Res call({List<String> historyList});
}

/// @nodoc
class _$SetHistorySuggestionsAddAllCopyWithImpl<$Res> extends _$SetHistorySuggestionsCopyWithImpl<$Res>
    implements $SetHistorySuggestionsAddAllCopyWith<$Res> {
  _$SetHistorySuggestionsAddAllCopyWithImpl(
      SetHistorySuggestionsAddAll _value, $Res Function(SetHistorySuggestionsAddAll) _then)
      : super(_value, (v) => _then(v as SetHistorySuggestionsAddAll));

  @override
  SetHistorySuggestionsAddAll get _value => super._value as SetHistorySuggestionsAddAll;

  @override
  $Res call({
    Object historyList = freezed,
  }) {
    return _then(SetHistorySuggestionsAddAll(
      historyList: historyList == freezed ? _value.historyList : historyList as List<String>,
    ));
  }
}

/// @nodoc
class _$SetHistorySuggestionsAddAll implements SetHistorySuggestionsAddAll {
  const _$SetHistorySuggestionsAddAll({this.historyList});

  @override
  final List<String> historyList;

  @override
  String toString() {
    return 'SetHistorySuggestions.addAll(historyList: $historyList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetHistorySuggestionsAddAll &&
            (identical(other.historyList, historyList) ||
                const DeepCollectionEquality().equals(other.historyList, historyList)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(historyList);

  @override
  $SetHistorySuggestionsAddAllCopyWith<SetHistorySuggestionsAddAll> get copyWith =>
      _$SetHistorySuggestionsAddAllCopyWithImpl<SetHistorySuggestionsAddAll>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addAll(List<String> historyList),
    @required Result add(String history),
  }) {
    assert(addAll != null);
    assert(add != null);
    return addAll(historyList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addAll(List<String> historyList),
    Result add(String history),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addAll != null) {
      return addAll(historyList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addAll(SetHistorySuggestionsAddAll value),
    @required Result add(SetHistorySuggestionsAdd value),
  }) {
    assert(addAll != null);
    assert(add != null);
    return addAll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addAll(SetHistorySuggestionsAddAll value),
    Result add(SetHistorySuggestionsAdd value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addAll != null) {
      return addAll(this);
    }
    return orElse();
  }
}

abstract class SetHistorySuggestionsAddAll implements SetHistorySuggestions {
  const factory SetHistorySuggestionsAddAll({List<String> historyList}) = _$SetHistorySuggestionsAddAll;

  List<String> get historyList;

  $SetHistorySuggestionsAddAllCopyWith<SetHistorySuggestionsAddAll> get copyWith;
}

/// @nodoc
abstract class $SetHistorySuggestionsAddCopyWith<$Res> {
  factory $SetHistorySuggestionsAddCopyWith(
          SetHistorySuggestionsAdd value, $Res Function(SetHistorySuggestionsAdd) then) =
      _$SetHistorySuggestionsAddCopyWithImpl<$Res>;

  $Res call({String history});
}

/// @nodoc
class _$SetHistorySuggestionsAddCopyWithImpl<$Res> extends _$SetHistorySuggestionsCopyWithImpl<$Res>
    implements $SetHistorySuggestionsAddCopyWith<$Res> {
  _$SetHistorySuggestionsAddCopyWithImpl(SetHistorySuggestionsAdd _value, $Res Function(SetHistorySuggestionsAdd) _then)
      : super(_value, (v) => _then(v as SetHistorySuggestionsAdd));

  @override
  SetHistorySuggestionsAdd get _value => super._value as SetHistorySuggestionsAdd;

  @override
  $Res call({
    Object history = freezed,
  }) {
    return _then(SetHistorySuggestionsAdd(
      history: history == freezed ? _value.history : history as String,
    ));
  }
}

/// @nodoc
class _$SetHistorySuggestionsAdd implements SetHistorySuggestionsAdd {
  const _$SetHistorySuggestionsAdd({this.history});

  @override
  final String history;

  @override
  String toString() {
    return 'SetHistorySuggestions.add(history: $history)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetHistorySuggestionsAdd &&
            (identical(other.history, history) || const DeepCollectionEquality().equals(other.history, history)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(history);

  @override
  $SetHistorySuggestionsAddCopyWith<SetHistorySuggestionsAdd> get copyWith =>
      _$SetHistorySuggestionsAddCopyWithImpl<SetHistorySuggestionsAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addAll(List<String> historyList),
    @required Result add(String history),
  }) {
    assert(addAll != null);
    assert(add != null);
    return add(history);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addAll(List<String> historyList),
    Result add(String history),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(history);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addAll(SetHistorySuggestionsAddAll value),
    @required Result add(SetHistorySuggestionsAdd value),
  }) {
    assert(addAll != null);
    assert(add != null);
    return add(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addAll(SetHistorySuggestionsAddAll value),
    Result add(SetHistorySuggestionsAdd value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class SetHistorySuggestionsAdd implements SetHistorySuggestions {
  const factory SetHistorySuggestionsAdd({String history}) = _$SetHistorySuggestionsAdd;

  String get history;

  $SetHistorySuggestionsAddCopyWith<SetHistorySuggestionsAdd> get copyWith;
}
