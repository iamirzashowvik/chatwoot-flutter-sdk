

import 'package:json_annotation/json_annotation.dart';

import 'chatwoot_action_data.dart';

part 'chatwoot_action.g.part';

@JsonSerializable(explicitToJson: true)
class ChatwootAction{

  @JsonKey()
  final String identifier;

  @JsonKey()
  final String command;

  @JsonKey()
  final ChatwootActionData? data;

  ChatwootAction({
    required this.identifier,
    required this.data,
    required this.command
  });

  factory ChatwootAction.fromJson(Map<String, dynamic> json) => _$ChatwootActionFromJson(json);

  Map<String, dynamic> toJson() => _$ChatwootActionToJson(this);

}