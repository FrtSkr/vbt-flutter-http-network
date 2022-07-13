// import 'package:flutter_state_management_second_project/feature/model/post_model.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
// import 'package:vexana/vexana.dart';

// void main() {
//   // İnternet katman çıkışını sağlayan referans
//   INetworkManager? manager;

//   setUp(() {
//     const String baseUrl =
//         'https://jsonplaceholder.typicode.com/posts?userId=1';
//     manager = NetworkManager(options: BaseOptions(baseUrl: baseUrl));
//     // Logger metodumuz
//     manager?.dioIntercaptors.add(PrettyDioLogger());
//   });
//   // Bize bir liste PostModel geleceğini ve onu PostModel de işleyeceğimizi belirttik.
//   // GET metoduyla istekte bulunduk.
//   test("Post Service Test", () async {
//     final response = await manager?.send<PostModel, List<PostModel>>('',
//         parseModel: PostModel(), method: RequestType.GET);

//     print(response?.data);
//     expect(response, isNotNull);
//   });
// }


/*Vexana ile testimizi yazdık fakat http paketi eklediğimiz için vexana'yı devredışı bıraktık. Çünkü vexana, http üzerine yazılmış
bir pakettir. Bu iki paketi projeye dahil edersek çakışmalar gerçekleşir.*/