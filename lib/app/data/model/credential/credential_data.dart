
import 'package:json_annotation/json_annotation.dart';

part 'credential_data.g.dart';

@JsonSerializable(explicitToJson: true)
class CredentialData {
  String username;
  String password;

  CredentialData({required this.username, required this.password});

  factory CredentialData.fromJson(Map<String, dynamic> data) => _$CredentialDataFromJson(data);

  Map<String, dynamic> toJson() => _$CredentialDataToJson(this);
}