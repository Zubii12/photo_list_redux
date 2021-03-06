// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final BuiltList<Photo> photos;
  @override
  final BuiltList<String> words;
  @override
  final int page;
  @override
  final String query;
  @override
  final BuiltList<String> historySuggestions;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.photos, this.words, this.page, this.query, this.historySuggestions})
      : super._() {
    if (photos == null) {
      throw new BuiltValueNullFieldError('AppState', 'photos');
    }
    if (words == null) {
      throw new BuiltValueNullFieldError('AppState', 'words');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError('AppState', 'page');
    }
    if (historySuggestions == null) {
      throw new BuiltValueNullFieldError('AppState', 'historySuggestions');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        photos == other.photos &&
        words == other.words &&
        page == other.page &&
        query == other.query &&
        historySuggestions == other.historySuggestions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, photos.hashCode), words.hashCode), page.hashCode),
            query.hashCode),
        historySuggestions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('photos', photos)
          ..add('words', words)
          ..add('page', page)
          ..add('query', query)
          ..add('historySuggestions', historySuggestions))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  ListBuilder<Photo> _photos;
  ListBuilder<Photo> get photos => _$this._photos ??= new ListBuilder<Photo>();
  set photos(ListBuilder<Photo> photos) => _$this._photos = photos;

  ListBuilder<String> _words;
  ListBuilder<String> get words => _$this._words ??= new ListBuilder<String>();
  set words(ListBuilder<String> words) => _$this._words = words;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  String _query;
  String get query => _$this._query;
  set query(String query) => _$this._query = query;

  ListBuilder<String> _historySuggestions;
  ListBuilder<String> get historySuggestions =>
      _$this._historySuggestions ??= new ListBuilder<String>();
  set historySuggestions(ListBuilder<String> historySuggestions) =>
      _$this._historySuggestions = historySuggestions;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _photos = _$v.photos?.toBuilder();
      _words = _$v.words?.toBuilder();
      _page = _$v.page;
      _query = _$v.query;
      _historySuggestions = _$v.historySuggestions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              photos: photos.build(),
              words: words.build(),
              page: page,
              query: query,
              historySuggestions: historySuggestions.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'photos';
        photos.build();
        _$failedField = 'words';
        words.build();

        _$failedField = 'historySuggestions';
        historySuggestions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
