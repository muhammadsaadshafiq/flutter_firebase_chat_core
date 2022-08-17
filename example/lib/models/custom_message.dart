class CustomMessage {
  final String authorId;
  final String createdAt;
  final String text;
  final String updatedAt;

  CustomMessage({
    required this.authorId,
    required this.createdAt,
    required this.text,
    required this.updatedAt,
  });

  factory CustomMessage.fromJson(Map<String, dynamic> json) => CustomMessage(
        authorId: json['authorId'],
        createdAt: json['createdAt'].toString(),
        text: json['text'],
        updatedAt: json['updatedAt'].toString(),
      );

  Map<String, dynamic> toJson() => {
        'authorId': authorId,
        'createdAt': createdAt,
        'text': text,
        'updatedAt': updatedAt,
      };
}
