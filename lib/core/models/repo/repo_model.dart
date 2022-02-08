import 'package:test_sejutacita/core/models/repo/repo_item_model.dart';

class RepoResults {
  int totalCount;
  List<RepoItemModel> item;

  RepoResults.fromJson(Map<dynamic, dynamic> json) {
    totalCount = json['total_count'];
    if (json['items'] != null) {
      item = [];
      json['items'].forEach((v) {
        item.add(new RepoItemModel.fromJson(v));
      });
    }
  }
}
