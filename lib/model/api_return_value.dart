class ApiReturnValue<T> {
  final T? value;
  late String? message;

   ApiReturnValue({this.value, required this.message});
}