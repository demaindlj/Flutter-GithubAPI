import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:test_sejutacita/core/models/repo/repo_model.dart';
import 'package:test_sejutacita/core/service/api.dart';
import 'package:meta/meta.dart';

part 'repo_data_event.dart';
part 'repo_data_state.dart';

class RepoDataBloc extends Bloc<RepoDataEvent, RepoDataState> {
  RepoResults repo;
  int page = 1;
  RepoDataBloc() : super(RepoDataUnintialized());

  @override
  Stream<RepoDataState> mapEventToState(
    RepoDataEvent event,
  ) async* {
    if (event is FetchRepo) {
      repo = await Git.fetchRepo(event.keywords, event.page ?? 1, 10);
      repo.item.map((e) => print(e.name));
      yield RepoDataLoaded(repo: repo, hasReachedMax: false);
    }
    if (event is MoreRepo) {
      if (repo.item.length < 10) {
        yield RepoDataError(message: 'Tidak Ada Data');
      } else {
        RepoResults moreUser = await Git.fetchRepo(event.keywords, page++, 10);
        repo.item.addAll(moreUser.item);
        yield RepoDataLoaded(repo: repo, hasReachedMax: false);
      }
    }
    if (event is ClearRepo) {
      repo.item.clear();
      yield RepoDataClear(message: 't');
    }
  }
}
