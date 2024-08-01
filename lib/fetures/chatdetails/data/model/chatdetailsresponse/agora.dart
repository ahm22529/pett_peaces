class Agora {
  String? rtcToken;
  String? channel;

  Agora({this.rtcToken, this.channel});

  factory Agora.fromJson(Map<String, dynamic> json) => Agora(
        rtcToken: json['rtc_token'] as String?,
        channel: json['channel'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'rtc_token': rtcToken,
        'channel': channel,
      };
}
