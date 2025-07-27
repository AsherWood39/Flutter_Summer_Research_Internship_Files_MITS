class ChatModel {
  final String profileImage;
  final String profileName;
  final String messagePreview;
  final String messageTime;
  final String messageCount;

  ChatModel(
      {required this.profileImage,
      required this.profileName,
      required this.messagePreview,
      required this.messageTime,
      required this.messageCount});
}
