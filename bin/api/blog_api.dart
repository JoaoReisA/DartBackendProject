import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../model/news_model.dart';
import '../service/generic_service.dart';

class BlogApi {
  final GenericService<NewsModel> _service;

  BlogApi(this._service);

  Handler get handler {
    Router router = Router();

    //listagem
    router.get('/blog/noticias', (Request req) {
      _service.findALl();
      return Response.ok('Choveu hoje');
    });

    // nova noticias
    router.post('/blog/noticias', (Request req) {
      // _service.save('');

      return Response.ok('Choveu hoje');
    });

    // /blog/noticias?id=1 update
    router.put('/blog/noticias', (Request req) {
      // _service.save('');

      String? id = req.url.queryParameters['id'];

      return Response.ok('Choveu hoje');
    });

    // /blog/noticias?id=1 delete
    router.delete('/blog/noticias', (Request req) {
      _service.delete(2);

      String? id = req.url.queryParameters['id'];

      return Response.ok('Choveu hoje');
    });

    return router;
  }
}
