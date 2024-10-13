class VideoListData {
  final List<String> titles;
  final List<String> images;

  const VideoListData({
    required this.titles,
    required this.images,
  });

  // Factory constructor to create an instance from a JSON map
  factory VideoListData.fromJson(Map<String, dynamic> json) {
    return VideoListData(
      titles: List<String>.from(json['titles']),
      images: List<String>.from(json['images']),
    );
  }

  // Method to convert an instance into a JSON map
  Map<String, dynamic> toJson() {
    return {
      'titles': titles,
      'images': images,
    };
  }
}
