class RecentWork {
  final String image, category, title, description, url;
  final int id;

  RecentWork(
      {this.id,
      this.image,
      this.category,
      this.title,
      this.description,
      this.url});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Flash Chat",
    category: "Mobile Apps",
    image: "assets/images/flash_chat.png",
    description:
        "An instant messaging app which helps you easily connected with your friends",
    url: "https://github.com/TjandraD/flash-chat.git",
  ),
  RecentWork(
    id: 2,
    title: "Ngabolang",
    category: "Mobile Apps",
    image: "assets/images/ngabolang.jpg",
    description:
        "Ngabolang is an application to share your experiences when visiting tourist attractions. In Ngabolang, you can upload and also view photos from various tourist destinations. You can also find out the location of the tourist spots by using the map available in the Ngabolang app.",
    url: "https://github.com/IKHSRF/ngabolang-mobile.git",
  ),
  RecentWork(
    id: 3,
    title: "Prawitama Care (Under Development)",
    category: "Website",
    image: "assets/images/prawitama-care.jpg",
    description:
        "A crowdfunding web by Prawitama to help gather funds for internal charity acts.",
    url: "https://github.com/TjandraD/crowdfunding-web.git",
  ),
];
