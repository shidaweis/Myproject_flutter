class Post{
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });
  final String title;
  final String author;
  final String imageUrl;
}
final List<Post> posts = [
  Post(
    title:'Study Web1',
    author:'ShiDaWei1',
    imageUrl: 'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',

  ),
  Post(
    title:'Study Web2',
    author:'ShiDaWei2',
    imageUrl: 'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',

  ),
  Post(
    title:'Study Web3',
    author:'ShiDaWei3',
    imageUrl: 'http://n.sinaimg.cn/sports/2_img/upload/cf0d0fdd/107/w1024h683/20181128/pKtl-hphsupx4744393.jpg',

  ),
];