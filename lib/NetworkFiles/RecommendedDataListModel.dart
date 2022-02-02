class RecommendedGamesDataTournaments {
  bool? isCheckInRequired;
  String? tournamentId;
  bool? tournamentEnded;
  String? tournamentEndDate;
  bool? areRandomTeamsAllowed;
  int? registeredTeams;
  String? adminLocale;
  String? regEndDate;
  String? startDate;
  String? rules;
  int? maxTeams;
  String? tournamentUrl;
  String? prizes;
  String? matchStyleType;
  String? pwaUrl;
  String? tournamentType;
  String? geo;
  String? maxLevelId;
  bool? isPasswordRequired;
  String? name;
  String? matchStyle;
  String? registrationUrl;
  String? gamePkg;
  bool? isRegistrationOpen;
  bool? isWaitlistEnabled;
  bool? incompleteTeamsAllowed;
  bool? isAutoResultAllowed;
  int? teamSize;
  String? status;
  bool? isLevelsEnabled;
  bool? indexPage;
  String? dynamicAppUrl;
  String? minLevelId;
  String? gameFormat;
  String? details;
  String? gameIconUrl;
  String? regStartDate;
  int? winnersCount;
  String? coverUrl;
  String? bracketsUrl;
  String? tournamentSlug;
  String? discordUrl;
  String? gameId;
  bool? resultSubmissionByAdmin;
  String? country;
  String? adminUsername;
  String? gameName;
  String? streamUrl;

  RecommendedGamesDataTournaments({
    this.isCheckInRequired,
    this.tournamentId,
    this.tournamentEnded,
    this.tournamentEndDate,
    this.areRandomTeamsAllowed,
    this.registeredTeams,
    this.adminLocale,
    this.regEndDate,
    this.startDate,
    this.rules,
    this.maxTeams,
    this.tournamentUrl,
    this.prizes,
    this.matchStyleType,
    this.pwaUrl,
    this.tournamentType,
    this.geo,
    this.maxLevelId,
    this.isPasswordRequired,
    this.name,
    this.matchStyle,
    this.registrationUrl,
    this.gamePkg,
    this.isRegistrationOpen,
    this.isWaitlistEnabled,
    this.incompleteTeamsAllowed,
    this.isAutoResultAllowed,
    this.teamSize,
    this.status,
    this.isLevelsEnabled,
    this.indexPage,
    this.dynamicAppUrl,
    this.minLevelId,
    this.gameFormat,
    this.details,
    this.gameIconUrl,
    this.regStartDate,
    this.winnersCount,
    this.coverUrl,
    this.bracketsUrl,
    this.tournamentSlug,
    this.discordUrl,
    this.gameId,
    this.resultSubmissionByAdmin,
    this.country,
    this.adminUsername,
    this.gameName,
    this.streamUrl,
  });
  RecommendedGamesDataTournaments.fromJson(Map<String, dynamic> json) {
    isCheckInRequired = json['is_check_in_required'];
    tournamentId = json['tournament_id']?.toString();
    tournamentEnded = json['tournament_ended'];
    tournamentEndDate = json['tournament_end_date']?.toString();
    areRandomTeamsAllowed = json['are_random_teams_allowed'];
    registeredTeams = json['registered_teams']?.toInt();
    adminLocale = json['admin_locale']?.toString();
    regEndDate = json['reg_end_date']?.toString();
    startDate = json['start_date']?.toString();
    rules = json['rules']?.toString();
    maxTeams = json['max_teams']?.toInt();
    tournamentUrl = json['tournament_url']?.toString();
    prizes = json['prizes']?.toString();
    matchStyleType = json['match_style_type']?.toString();
    pwaUrl = json['pwa_url']?.toString();
    tournamentType = json['tournament_type']?.toString();
    geo = json['geo']?.toString();
    maxLevelId = json['max_level_id']?.toString();
    isPasswordRequired = json['is_password_required'];
    name = json['name']?.toString();
    matchStyle = json['match_style']?.toString();
    registrationUrl = json['registration_url']?.toString();
    gamePkg = json['game_pkg']?.toString();
    isRegistrationOpen = json['is_registration_open'];
    isWaitlistEnabled = json['is_waitlist_enabled'];
    incompleteTeamsAllowed = json['incomplete_teams_allowed'];
    isAutoResultAllowed = json['is_auto_result_allowed'];
    teamSize = json['team_size']?.toInt();
    status = json['status']?.toString();
    isLevelsEnabled = json['is_levels_enabled'];
    indexPage = json['index_page'];
    dynamicAppUrl = json['dynamic_app_url']?.toString();
    minLevelId = json['min_level_id']?.toString();
    gameFormat = json['game_format']?.toString();
    details = json['details']?.toString();
    gameIconUrl = json['game_icon_url']?.toString();
    regStartDate = json['reg_start_date']?.toString();
    winnersCount = json['winners_count']?.toInt();
    coverUrl = json['cover_url']?.toString();
    bracketsUrl = json['brackets_url']?.toString();
    tournamentSlug = json['tournament_slug']?.toString();
    discordUrl = json['discord_url']?.toString();
    gameId = json['game_id']?.toString();
    resultSubmissionByAdmin = json['result_submission_by_admin'];
    country = json['country']?.toString();
    adminUsername = json['admin_username']?.toString();
    gameName = json['game_name']?.toString();
    streamUrl = json['stream_url']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['is_check_in_required'] = isCheckInRequired;
    data['tournament_id'] = tournamentId;
    data['tournament_ended'] = tournamentEnded;
    data['tournament_end_date'] = tournamentEndDate;
    data['are_random_teams_allowed'] = areRandomTeamsAllowed;
    data['registered_teams'] = registeredTeams;
    data['admin_locale'] = adminLocale;
    data['reg_end_date'] = regEndDate;
    data['start_date'] = startDate;
    data['rules'] = rules;
    data['max_teams'] = maxTeams;
    data['tournament_url'] = tournamentUrl;
    data['prizes'] = prizes;
    data['match_style_type'] = matchStyleType;
    data['pwa_url'] = pwaUrl;
    data['tournament_type'] = tournamentType;
    data['geo'] = geo;
    data['max_level_id'] = maxLevelId;
    data['is_password_required'] = isPasswordRequired;
    data['name'] = name;
    data['match_style'] = matchStyle;
    data['registration_url'] = registrationUrl;
    data['game_pkg'] = gamePkg;
    data['is_registration_open'] = isRegistrationOpen;
    data['is_waitlist_enabled'] = isWaitlistEnabled;
    data['incomplete_teams_allowed'] = incompleteTeamsAllowed;
    data['is_auto_result_allowed'] = isAutoResultAllowed;
    data['team_size'] = teamSize;
    data['status'] = status;
    data['is_levels_enabled'] = isLevelsEnabled;
    data['index_page'] = indexPage;
    data['dynamic_app_url'] = dynamicAppUrl;
    data['min_level_id'] = minLevelId;
    data['game_format'] = gameFormat;
    data['details'] = details;
    data['game_icon_url'] = gameIconUrl;
    data['reg_start_date'] = regStartDate;
    data['winners_count'] = winnersCount;
    data['cover_url'] = coverUrl;
    data['brackets_url'] = bracketsUrl;
    data['tournament_slug'] = tournamentSlug;
    data['discord_url'] = discordUrl;
    data['game_id'] = gameId;
    data['result_submission_by_admin'] = resultSubmissionByAdmin;
    data['country'] = country;
    data['admin_username'] = adminUsername;
    data['game_name'] = gameName;
    data['stream_url'] = streamUrl;
    return data;
  }
}

class RecommendedGamesData {
  String? cursor;
  String? tournamentCount;
  List<RecommendedGamesDataTournaments?>? tournaments;
  bool? isLastBatch;

  RecommendedGamesData({
    this.cursor,
    this.tournamentCount,
    this.tournaments,
    this.isLastBatch,
  });
  RecommendedGamesData.fromJson(Map<String, dynamic> json) {
    cursor = json['cursor']?.toString();
    tournamentCount = json['tournament_count']?.toString();
    if (json['tournaments'] != null) {
      final v = json['tournaments'];
      final arr0 = <RecommendedGamesDataTournaments>[];
      v.forEach((v) {
        arr0.add(RecommendedGamesDataTournaments.fromJson(v));
      });
      tournaments = arr0;
    }
    isLastBatch = json['is_last_batch'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['cursor'] = cursor;
    data['tournament_count'] = tournamentCount;
    if (tournaments != null) {
      final v = tournaments;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['tournaments'] = arr0;
    }
    data['is_last_batch'] = isLastBatch;
    return data;
  }
}

class RecommendedGames {
  int? code;
  RecommendedGamesData? data;
  bool? success;

  RecommendedGames({
    this.code,
    this.data,
    this.success,
  });
  RecommendedGames.fromJson(Map<String, dynamic> json) {
    code = json['code']?.toInt();
    data = (json['data'] != null)
        ? RecommendedGamesData.fromJson(json['data'])
        : null;
    success = json['success'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['code'] = code;
    if (data != null) {
      data['data'] = this.data!.toJson();
    }
    data['success'] = success;
    return data;
  }
}
