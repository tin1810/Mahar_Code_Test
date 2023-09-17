class ConfigFunction {
  static changeDouble(dynamic val) {
    return (val is double)
        ? val
        : (val is int)
            ? double.tryParse(val.toString())
            : (val is String)
                ? double.tryParse(val)
                : 0.0;
  }
}
