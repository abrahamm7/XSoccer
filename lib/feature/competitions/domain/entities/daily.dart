import 'package:equatable/equatable.dart';

import 'articles.dart';

class Daily extends Equatable {
  late final String status;
  late final int totalResults;
  late final List<Articles> articles;

  Daily({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  @override
  // TODO: implement props
  List<Object> get props => [status, totalResults, articles];
}
