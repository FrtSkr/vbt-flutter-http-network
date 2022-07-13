import 'package:flutter/material.dart';
import 'package:flutter_state_management_second_project/feature/model/post_model.dart';
import 'package:flutter_state_management_second_project/feature/service/post_service.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  //Verilerimizi çekmek için servisimizi tanımladık.
  final PostService _postService = PostService();
  //Veriler için bir liste değişkeni oluşturduk.
  List<PostModel>? _postModel;
  //Servis katmanından veriler yüklenirken durum kontrolü için bir değişken tanımladık.
  //Bu değişkeni progress bar için kullanacağız.
  bool isLoading = false;

//Fonksiyonumuzda isLoading değşkenimizin değişimini kontrol ediyoruz.
  void changeLoading() {
    //Yapılan değişikliği ekrana da bildirmek için setState metodunu kullanıyoruz.
    setState(() {
      isLoading = !isLoading;
    });
  }

//verileri _postModel içerisine servisten çekecek olan metodumuz.
  Future<void> init() async {
    _postModel = await _postService.fetchPost();
    //Veriler çekildiyse isLoading değişken değerini değiştirdik.
    changeLoading();
  }

//??
  @override
  void initState() {
    init();
    super.initState();
  }

//Veriler yüklendiyse ListView builder ile ekranımıza verilerimiz oluşturulacak.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
