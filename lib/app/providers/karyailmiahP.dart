import 'package:get/get.dart';

class KaryaProvider extends GetConnect {
  Future<Response> getKarya(year) async {
    final url =
        'https://repository.unsoed.ac.id/cgi/exportview/year/${year}/JSON/${year}.js';
    httpClient.timeout = Duration(minutes: 2);
    return await get('$url');
  }

  Future<Response> getSearch(kata) async {
    final url =
        'https://repository.unsoed.ac.id/cgi/search/archive/simple/export_repositoryupt_JSON.js?dataset=archive&screen=Search&_action_export=1&output=JSON&exp=0%7C1%7C%7Carchive%7C-%7Cq%3A%3AALL%3AIN%3A${kata}%7C-%7C&n=&cache=';
    httpClient.timeout = Duration(minutes: 2);
    return await get('$url');
  }

  Future<Response> getSearchA(abstract) async {
    final url =
        'https://repository.unsoed.ac.id/cgi/search/archive/advanced/export_repositoryupt_JSON.js?dataset=archive&screen=Search&_action_export=1&output=JSON&exp=0%7C1%7C-date%2Fcreators_name%2Ftitle%7Carchive%7C-%7Cabstract%3Aabstract%3AALL%3AIN%3A${abstract}%7C-%7Ceprint_status%3Aeprint_status%3AANY%3AEQ%3Aarchive%7Cmetadata_visibility%3Ametadata_visibility%3AANY%3AEQ%3Ashow&n=&cache=';
    httpClient.timeout = Duration(minutes: 2);
    return await get('$url');
  }

  Future<Response> getSearchC(creator) async {
    final url =
        'https://repository.unsoed.ac.id/cgi/search/archive/advanced/export_repositoryupt_JSON.js?dataset=archive&screen=Search&_action_export=1&output=JSON&exp=0%7C1%7C-date%2Fcreators_name%2Ftitle%7Carchive%7C-%7Ccreators_name%3Acreators_name%3AALL%3AEQ%3A${creator}%7C-%7Ceprint_status%3Aeprint_status%3AANY%3AEQ%3Aarchive%7Cmetadata_visibility%3Ametadata_visibility%3AANY%3AEQ%3Ashow&n=&cache=';
    httpClient.timeout = Duration(minutes: 2);
    return await get('$url');
  }

  Future<Response> getSearchCA(creator, abstract) async {
    final url =
        'https://repository.unsoed.ac.id/cgi/search/archive/advanced/export_repositoryupt_JSON.js?dataset=archive&screen=Search&_action_export=1&output=JSON&exp=0%7C1%7C-date%2Fcreators_name%2Ftitle%7Carchive%7C-%7Cabstract%3Aabstract%3AALL%3AIN%3A${abstract}%7Ccreators_name%3Acreators_name%3AALL%3AEQ%3A${creator}%7C-%7Ceprint_status%3Aeprint_status%3AANY%3AEQ%3Aarchive%7Cmetadata_visibility%3Ametadata_visibility%3AANY%3AEQ%3Ashow&n=&cache=';
    httpClient.timeout = Duration(minutes: 2);
    return await get('$url');
  }

  Future<Response> getSearchT(title) async {
    final url =
        'https://repository.unsoed.ac.id/cgi/search/archive/advanced/export_repositoryupt_JSON.js?dataset=archive&screen=Search&_action_export=1&output=JSON&exp=0%7C1%7C-date%2Fcreators_name%2Ftitle%7Carchive%7C-%7Ctitle%3Atitle%3AALL%3AIN%3A${title}%7C-%7Ceprint_status%3Aeprint_status%3AANY%3AEQ%3Aarchive%7Cmetadata_visibility%3Ametadata_visibility%3AANY%3AEQ%3Ashow&n=&cache=';
    httpClient.timeout = Duration(minutes: 2);
    return await get('$url');
  }

  Future<Response> getSearchTA(title, abstract) async {
    final url =
        'https://repository.unsoed.ac.id/cgi/search/archive/advanced/export_repositoryupt_JSON.js?dataset=archive&screen=Search&_action_export=1&output=JSON&exp=0%7C1%7C-date%2Fcreators_name%2Ftitle%7Carchive%7C-%7Cabstract%3Aabstract%3AALL%3AIN%3A${abstract}%7Ctitle%3Atitle%3AALL%3AIN%3A${title}%7C-%7Ceprint_status%3Aeprint_status%3AANY%3AEQ%3Aarchive%7Cmetadata_visibility%3Ametadata_visibility%3AANY%3AEQ%3Ashow&n=&cache=';
    httpClient.timeout = Duration(minutes: 2);
    return await get('$url');
  }

  Future<Response> getSearchTC(title, creator) async {
    final url =
        'https://repository.unsoed.ac.id/cgi/search/archive/advanced/export_repositoryupt_JSON.js?dataset=archive&screen=Search&_action_export=1&output=JSON&exp=0%7C1%7C-date%2Fcreators_name%2Ftitle%7Carchive%7C-%7Ccreators_name%3Acreators_name%3AALL%3AEQ%3A${creator}%7Ctitle%3Atitle%3AALL%3AIN%3A${title}%7C-%7Ceprint_status%3Aeprint_status%3AANY%3AEQ%3Aarchive%7Cmetadata_visibility%3Ametadata_visibility%3AANY%3AEQ%3Ashow&n=&cache=';
    httpClient.timeout = Duration(minutes: 2);
    return await get('$url');
  }

  Future<Response> getSearchTCA(title, creator, abstract) async {
    final url =
        'https://repository.unsoed.ac.id/cgi/search/archive/advanced/export_repositoryupt_JSON.js?dataset=archive&screen=Search&_action_export=1&output=JSON&exp=0%7C1%7C-date%2Fcreators_name%2Ftitle%7Carchive%7C-%7Cabstract%3Aabstract%3AALL%3AIN%3A${abstract}%7Ccreators_name%3Acreators_name%3AALL%3AEQ%3A${creator}%7Ctitle%3Atitle%3AALL%3AIN%3A${title}%7C-%7Ceprint_status%3Aeprint_status%3AANY%3AEQ%3Aarchive%7Cmetadata_visibility%3Ametadata_visibility%3AANY%3AEQ%3Ashow&n=&cache=';
    httpClient.timeout = Duration(minutes: 2);
    return await get('$url');
  }
}
