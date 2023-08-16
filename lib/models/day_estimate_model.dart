import 'dart:convert';

class DayModel {
  final double buffer = 1.25;
  final String moduleName;
  final String features;
  final int numOfBE;
  final int numOfFE;
  final int numOfFS;

  DayModel({
    required this.moduleName,
    required this.features,
    required this.numOfBE,
    required this.numOfFE,
    required this.numOfFS,
  });

  DayModel copyWith({
    String? moduleName,
    String? features,
    int? numOfBE,
    int? numOfFE,
    int? numOfFS,
  }) {
    return DayModel(
      moduleName: moduleName ?? this.moduleName,
      features: features ?? this.features,
      numOfBE: numOfBE ?? this.numOfBE,
      numOfFE: numOfFE ?? this.numOfFE,
      numOfFS: numOfFS ?? this.numOfFS,
    );
  }

  // get BE with buffer
  double get backEndWithBuffer {
    return numOfBE * buffer;
  }

  // get BE with buffer
  double get frontEndWithBuffer {
    return numOfFE * buffer;
  }

  // get BE with buffer
  double get fullStackWithBuffer {
    return numOfFS * buffer;
  }

  int get totalBeforeBuffer {
    return numOfBE + numOfFS + numOfFE;
  }

  Map<String, dynamic> toMap() {
    return {
      'moduleName': moduleName,
      'features': features,
      'numOfBE': numOfBE,
      'numOfFE': numOfFE,
      'numOfFS': numOfFS,
    };
  }

  factory DayModel.fromMap(Map<String, dynamic> map) {
    return DayModel(
      moduleName: map['moduleName'] ?? '',
      features: map['features'] ?? '',
      numOfBE: map['numOfBE']?.toInt() ?? 0,
      numOfFE: map['numOfFE']?.toInt() ?? 0,
      numOfFS: map['numOfFS']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory DayModel.fromJson(String source) =>
      DayModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DayModel(moduleName: $moduleName, features: $features, numOfBE: $numOfBE, numOfFE: $numOfFE, numOfFS: $numOfFS)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DayModel &&
        other.moduleName == moduleName &&
        other.features == features &&
        other.numOfBE == numOfBE &&
        other.numOfFE == numOfFE &&
        other.numOfFS == numOfFS;
  }

  @override
  int get hashCode {
    return moduleName.hashCode ^
        features.hashCode ^
        numOfBE.hashCode ^
        numOfFE.hashCode ^
        numOfFS.hashCode;
  }
}
