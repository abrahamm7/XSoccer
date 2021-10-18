class Leagues {
  Leagues({
    required this.count,
    required this.filters,
    required this.competitions,
  });
  late final int count;
  late final Filters filters;
  late final List<Competitions> competitions;

  Leagues.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    filters = Filters.fromJson(json['filters']);
    competitions = List.from(json['competitions'])
        .map((e) => Competitions.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['count'] = count;
    _data['filters'] = filters.toJson();
    _data['competitions'] = competitions.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Filters {
  Filters();

  Filters.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}

class Competitions {
  Competitions({
    required this.id,
    required this.area,
    required this.name,
    this.code,
    this.emblemUrl,
    required this.plan,
    this.currentSeason,
    required this.numberOfAvailableSeasons,
    required this.lastUpdated,
  });
  late final int id;
  late final Area area;
  late final String name;
  late final String? code;
  late final String? emblemUrl;
  late final String plan;
  late final CurrentSeason? currentSeason;
  late final int numberOfAvailableSeasons;
  late final String lastUpdated;

  Competitions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    area = Area.fromJson(json['area']);
    name = json['name'];
    code = null;
    emblemUrl = null;
    plan = json['plan'];
    currentSeason = null;
    numberOfAvailableSeasons = json['numberOfAvailableSeasons'];
    lastUpdated = json['lastUpdated'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['area'] = area.toJson();
    _data['name'] = name;
    _data['code'] = code;
    _data['emblemUrl'] = emblemUrl;
    _data['plan'] = plan;
    _data['currentSeason'] = currentSeason;
    _data['numberOfAvailableSeasons'] = numberOfAvailableSeasons;
    _data['lastUpdated'] = lastUpdated;
    return _data;
  }
}

class Area {
  Area({
    required this.id,
    required this.name,
    required this.countryCode,
    this.ensignUrl,
  });
  late final int id;
  late final String name;
  late final String countryCode;
  late final String? ensignUrl;

  Area.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    countryCode = json['countryCode'];
    ensignUrl = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['countryCode'] = countryCode;
    _data['ensignUrl'] = ensignUrl;
    return _data;
  }
}

class CurrentSeason {
  CurrentSeason({
    required this.id,
    required this.startDate,
    required this.endDate,
    this.currentMatchday,
    this.winner,
  });
  late final int id;
  late final String startDate;
  late final String endDate;
  late final int? currentMatchday;
  late final Winner? winner;

  CurrentSeason.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    currentMatchday = null;
    winner = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['startDate'] = startDate;
    _data['endDate'] = endDate;
    _data['currentMatchday'] = currentMatchday;
    _data['winner'] = winner;
    return _data;
  }
}

class Winner {
  Winner({
    required this.id,
    required this.name,
    this.shortName,
    this.tla,
    this.crestUrl,
  });
  late final int id;
  late final String name;
  late final String? shortName;
  late final String? tla;
  late final String? crestUrl;

  Winner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    shortName = null;
    tla = null;
    crestUrl = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['shortName'] = shortName;
    _data['tla'] = tla;
    _data['crestUrl'] = crestUrl;
    return _data;
  }
}
