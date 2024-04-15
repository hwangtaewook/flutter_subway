class SubwayDto {
  SubwayDto({
    this.errorMessage,
    this.realtimePositionList,
  });

  SubwayDto.fromJson(dynamic json) {
    errorMessage = json['errorMessage'] != null
        ? ErrorMessage.fromJson(json['errorMessage'])
        : null;
    if (json['realtimePositionList'] != null) {
      realtimePositionList = [];
      json['realtimePositionList'].forEach((v) {
        realtimePositionList?.add(RealtimePositionList.fromJson(v));
      });
    }
  }
  ErrorMessage? errorMessage;
  List<RealtimePositionList>? realtimePositionList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (errorMessage != null) {
      map['errorMessage'] = errorMessage?.toJson();
    }
    if (realtimePositionList != null) {
      map['realtimePositionList'] =
          realtimePositionList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class RealtimePositionList {
  RealtimePositionList({
    this.beginRow,
    this.endRow,
    this.curPage,
    this.pageRow,
    this.totalCount,
    this.rowNum,
    this.selectedCount,
    this.subwayId,
    this.subwayNm,
    this.statnId,
    this.statnNm,
    this.trainNo,
    this.lastRecptnDt,
    this.recptnDt,
    this.updnLine,
    this.statnTid,
    this.statnTnm,
    this.trainSttus,
    this.directAt,
    this.lstcarAt,
  });

  RealtimePositionList.fromJson(dynamic json) {
    beginRow = json['beginRow'];
    endRow = json['endRow'];
    curPage = json['curPage'];
    pageRow = json['pageRow'];
    totalCount = json['totalCount'];
    rowNum = json['rowNum'];
    selectedCount = json['selectedCount'];
    subwayId = json['subwayId'];
    subwayNm = json['subwayNm'];
    statnId = json['statnId'];
    statnNm = json['statnNm'];
    trainNo = json['trainNo'];
    lastRecptnDt = json['lastRecptnDt'];
    recptnDt = json['recptnDt'];
    updnLine = json['updnLine'];
    statnTid = json['statnTid'];
    statnTnm = json['statnTnm'];
    trainSttus = json['trainSttus'];
    directAt = json['directAt'];
    lstcarAt = json['lstcarAt'];
  }
  dynamic beginRow;
  dynamic endRow;
  dynamic curPage;
  dynamic pageRow;
  num? totalCount;
  num? rowNum;
  num? selectedCount;
  String? subwayId;
  String? subwayNm;
  String? statnId;
  String? statnNm;
  String? trainNo;
  String? lastRecptnDt;
  String? recptnDt;
  String? updnLine;
  String? statnTid;
  String? statnTnm;
  String? trainSttus;
  String? directAt;
  String? lstcarAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['beginRow'] = beginRow;
    map['endRow'] = endRow;
    map['curPage'] = curPage;
    map['pageRow'] = pageRow;
    map['totalCount'] = totalCount;
    map['rowNum'] = rowNum;
    map['selectedCount'] = selectedCount;
    map['subwayId'] = subwayId;
    map['subwayNm'] = subwayNm;
    map['statnId'] = statnId;
    map['statnNm'] = statnNm;
    map['trainNo'] = trainNo;
    map['lastRecptnDt'] = lastRecptnDt;
    map['recptnDt'] = recptnDt;
    map['updnLine'] = updnLine;
    map['statnTid'] = statnTid;
    map['statnTnm'] = statnTnm;
    map['trainSttus'] = trainSttus;
    map['directAt'] = directAt;
    map['lstcarAt'] = lstcarAt;
    return map;
  }
}

class ErrorMessage {
  ErrorMessage({
    this.status,
    this.code,
    this.message,
    this.link,
    this.developerMessage,
    this.total,
  });

  ErrorMessage.fromJson(dynamic json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    link = json['link'];
    developerMessage = json['developerMessage'];
    total = json['total'];
  }
  num? status;
  String? code;
  String? message;
  String? link;
  String? developerMessage;
  num? total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['code'] = code;
    map['message'] = message;
    map['link'] = link;
    map['developerMessage'] = developerMessage;
    map['total'] = total;
    return map;
  }
}
