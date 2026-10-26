/// Response models for the Background Remover API.

/// API Response wrapper.
class BackgroundremoverResponse {
  final String status;
  final dynamic error;
  final BackgroundremoverData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  BackgroundremoverResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory BackgroundremoverResponse.fromJson(Map<String, dynamic> json) => BackgroundremoverResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BackgroundremoverData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Background Remover API.

class BackgroundremoverData {
  String? id;
  num? width;
  num? height;
  String? background;
  num? foregroundRatio;
  num? outputSize;
  String? mimeType;
  num? expires;
  String? downloadURL;

  BackgroundremoverData({
    this.id,
    this.width,
    this.height,
    this.background,
    this.foregroundRatio,
    this.outputSize,
    this.mimeType,
    this.expires,
    this.downloadURL,
  });

  factory BackgroundremoverData.fromJson(Map<String, dynamic> json) => BackgroundremoverData(
      id: json['id'],
      width: json['width'],
      height: json['height'],
      background: json['background'],
      foregroundRatio: json['foregroundRatio'],
      outputSize: json['outputSize'],
      mimeType: json['mimeType'],
      expires: json['expires'],
      downloadURL: json['downloadURL'],
    );
}

class BackgroundremoverRequest {
  String? url;
  String? bgColor;

  BackgroundremoverRequest({
    this.url,
    this.bgColor,
  });

  Map<String, dynamic> toJson() => {
      if (url != null) 'url': url,
      if (bgColor != null) 'bgColor': bgColor,
    };
}
