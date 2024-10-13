class AddTaskDto {
  final String todo;
  final bool completed;
  final int userId;

  AddTaskDto(
      {required this.todo, required this.completed, required this.userId});
  Map<String, dynamic> toJson() =>
      {'todo': todo, 'completed': completed, 'userId': userId};
}
