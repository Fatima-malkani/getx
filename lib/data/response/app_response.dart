import 'package:myfirstapp/data/response/status.dart';

class AppResponse<T> {
  Status? status;
  T? data;
  String? message;

  AppResponse(this.status, this.data, this.message);
  AppResponse.loading() : status = Status.LOADING;
  AppResponse.completed(this.data) : status = Status.COMPLETED;
  AppResponse.error() : status = Status.ERROR;

  String toString() {
    return 'Status : $status \n Message : $message \n Data : $data';
  }
}
