class ChatModels {
  late String name;
  late dynamic icon;
  late String time;
  late String currentMessage;
  late bool isGroup;

  ChatModels(
      {required this.name,
      this.icon,
      required this.time,
      required this.currentMessage,
      required this.isGroup});
}
