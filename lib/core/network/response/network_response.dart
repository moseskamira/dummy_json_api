class NetworkResponse<T> {
  T? data;
  String? error;
  String? extra;
  bool success;

  NetworkResponse(this.success, {this.data, this.error, this.extra});
}
