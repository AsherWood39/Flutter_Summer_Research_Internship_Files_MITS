class TodoModel {
  String id;
  String titleText;
  String? status = '0';

  TodoModel({required this.id, required this.titleText, this.status});
}
