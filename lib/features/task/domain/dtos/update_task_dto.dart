class UpdateTaskDto {
  final int todoId;
  final String todo;
  final bool completed;
  final int userId;

  UpdateTaskDto(
      {required this.todoId,
      required this.userId,
      required this.completed,
      required this.todo});
  Map<String, dynamic> toJson() => {
        'todoId': todoId,
        'todo': todo,
        'completed': completed,
        'userId': userId
      };
}
