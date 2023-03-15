enum AdStatus {
  // @JsonValue('')
  all,
  // @JsonValue('new')
  neww,
  // @JsonValue('pending')
  pending,
  // @JsonValue('canceled')
  canceled,
  // @JsonValue('done')
  done;

  factory AdStatus.fromJson(String? json) => json == null
      ? values.byName('all')
      : json == 'not_status' || json == 'new'
          ? values.byName('neww')
          : values.byName(json);
}

extension AdStatusExtention on AdStatus? {
  String? get value {
    switch (this) {
      case AdStatus.all:
        return null;

      case AdStatus.neww:
        return 'new';
      default:
        return this?.name;
    }
  }
}
