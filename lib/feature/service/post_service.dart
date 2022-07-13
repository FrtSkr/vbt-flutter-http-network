import 'package:flutter_state_management_second_project/feature/model/post_model.dart';
import 'package:http/http.dart' as http;
import '../model/post_model.dart';

class PostService {
//Datamıza erişecek olan metodumuz
  Future<List<PostModel>> fetchPost() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts?userId=1"));

    if (response.statusCode == 200) {
      // Gelen cevap içerisindeki body'e erişip verilerimizi aldık.
      return postModelFromJson(response.body);
    } else {
      throw Exception('Datalar Gelmedi.');
    }
  }
}
