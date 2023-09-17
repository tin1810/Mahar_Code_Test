class Status {
  bool status;
  String message;
  String errorCode;
  dynamic data;

  Status({
    required this.status,
    required this.message,
    required this.errorCode,
    required this.data,
  });

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(
        status: json['status'],
        message: json['message'] ?? "",
        errorCode: json['error_code'] ?? "",
        data: json["data"]);
  }
}
