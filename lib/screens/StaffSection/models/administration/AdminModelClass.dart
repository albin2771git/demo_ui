/// status : "Success"
/// data : [{"DepartmentId":3,"DepartmentName":"Administration","StaffList":[{"StaffId":11,"StaffName":"SR GEETA","Mobile":"918157917179","profileUrl":"https://edisapp3storageaccount.blob.core.windows.net/text/a0503073-a3d9-446d-9056-e630a95d6bfad6e194ed-3a0c-4247-b63d-ba25d1ac8394.png","IsClassInCharge":false,"SubjectName":[]},{"StaffId":80,"StaffName":"MARY SONAR","Mobile":"919000000000","profileUrl":null,"IsClassInCharge":true,"SubjectName":["English","TDP"]},{"StaffId":84,"StaffName":"FR. J.A CARVALHO","Mobile":"911234567890","profileUrl":null,"IsClassInCharge":false,"SubjectName":[]},{"StaffId":126,"StaffName":"test","Mobile":"911234567890","profileUrl":null,"IsClassInCharge":false,"SubjectName":[]},{"StaffId":133,"StaffName":"Jaseena","Mobile":"918089273557","profileUrl":null,"IsClassInCharge":false,"SubjectName":[]},{"StaffId":134,"StaffName":"Rince","Mobile":"919072588050","profileUrl":null,"IsClassInCharge":false,"SubjectName":[]},{"StaffId":146,"StaffName":"Test Staff","Mobile":"919003858231","profileUrl":"https://edisapp3storageaccount.blob.core.windows.net/text/2fd69b3f-eb68-4d1a-8f23-1563a18b62f3e58a2689-60fb-468a-8073-41b9776e79b0.png","IsClassInCharge":false,"SubjectName":[]},{"StaffId":147,"StaffName":"Vishnu","Mobile":"911212121212","profileUrl":null,"IsClassInCharge":false,"SubjectName":[]},{"StaffId":150,"StaffName":"Lipin Prothasis","Mobile":"919072588056","profileUrl":null,"IsClassInCharge":false,"SubjectName":[]},{"StaffId":152,"StaffName":"PRAYAGA PRATHEESH","Mobile":"918921661155","profileUrl":"https://edisapp3storageaccount.blob.core.windows.net/text/9a91e63c-6cb2-4a4b-b8db-841205dfa22967a5a67d-84a3-48db-9dad-0c5bae4dab97.png","IsClassInCharge":false,"SubjectName":[]}]}]

class AdminModelClass {
  AdminModelClass({
      String? status, 
      List<Data>? data,}){
    _status = status;
    _data = data;
}

  AdminModelClass.fromJson(dynamic json) {
    _status = json['status'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  String? _status;
  List<Data>? _data;
AdminModelClass copyWith({  String? status,
  List<Data>? data,
}) => AdminModelClass(  status: status ?? _status,
  data: data ?? _data,
);
  String? get status => _status;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// DepartmentId : 3
/// DepartmentName : "Administration"
/// StaffList : [{"StaffId":11,"StaffName":"SR GEETA","Mobile":"918157917179","profileUrl":"https://edisapp3storageaccount.blob.core.windows.net/text/a0503073-a3d9-446d-9056-e630a95d6bfad6e194ed-3a0c-4247-b63d-ba25d1ac8394.png","IsClassInCharge":false,"SubjectName":[]},{"StaffId":80,"StaffName":"MARY SONAR","Mobile":"919000000000","profileUrl":null,"IsClassInCharge":true,"SubjectName":["English","TDP"]},{"StaffId":84,"StaffName":"FR. J.A CARVALHO","Mobile":"911234567890","profileUrl":null,"IsClassInCharge":false,"SubjectName":[]},{"StaffId":126,"StaffName":"test","Mobile":"911234567890","profileUrl":null,"IsClassInCharge":false,"SubjectName":[]},{"StaffId":133,"StaffName":"Jaseena","Mobile":"918089273557","profileUrl":null,"IsClassInCharge":false,"SubjectName":[]},{"StaffId":134,"StaffName":"Rince","Mobile":"919072588050","profileUrl":null,"IsClassInCharge":false,"SubjectName":[]},{"StaffId":146,"StaffName":"Test Staff","Mobile":"919003858231","profileUrl":"https://edisapp3storageaccount.blob.core.windows.net/text/2fd69b3f-eb68-4d1a-8f23-1563a18b62f3e58a2689-60fb-468a-8073-41b9776e79b0.png","IsClassInCharge":false,"SubjectName":[]},{"StaffId":147,"StaffName":"Vishnu","Mobile":"911212121212","profileUrl":null,"IsClassInCharge":false,"SubjectName":[]},{"StaffId":150,"StaffName":"Lipin Prothasis","Mobile":"919072588056","profileUrl":null,"IsClassInCharge":false,"SubjectName":[]},{"StaffId":152,"StaffName":"PRAYAGA PRATHEESH","Mobile":"918921661155","profileUrl":"https://edisapp3storageaccount.blob.core.windows.net/text/9a91e63c-6cb2-4a4b-b8db-841205dfa22967a5a67d-84a3-48db-9dad-0c5bae4dab97.png","IsClassInCharge":false,"SubjectName":[]}]

class Data {
  Data({
      num? departmentId, 
      String? departmentName, 
      List<StaffList>? staffList,}){
    _departmentId = departmentId;
    _departmentName = departmentName;
    _staffList = staffList;
}

  Data.fromJson(dynamic json) {
    _departmentId = json['DepartmentId'];
    _departmentName = json['DepartmentName'];
    if (json['StaffList'] != null) {
      _staffList = [];
      json['StaffList'].forEach((v) {
        _staffList?.add(StaffList.fromJson(v));
      });
    }
  }
  num? _departmentId;
  String? _departmentName;
  List<StaffList>? _staffList;
Data copyWith({  num? departmentId,
  String? departmentName,
  List<StaffList>? staffList,
}) => Data(  departmentId: departmentId ?? _departmentId,
  departmentName: departmentName ?? _departmentName,
  staffList: staffList ?? _staffList,
);
  num? get departmentId => _departmentId;
  String? get departmentName => _departmentName;
  List<StaffList>? get staffList => _staffList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['DepartmentId'] = _departmentId;
    map['DepartmentName'] = _departmentName;
    if (_staffList != null) {
      map['StaffList'] = _staffList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// StaffId : 11
/// StaffName : "SR GEETA"
/// Mobile : "918157917179"
/// profileUrl : "https://edisapp3storageaccount.blob.core.windows.net/text/a0503073-a3d9-446d-9056-e630a95d6bfad6e194ed-3a0c-4247-b63d-ba25d1ac8394.png"
/// IsClassInCharge : false
/// SubjectName : []

class StaffList {
  StaffList({
      num? staffId, 
      String? staffName, 
      String? mobile, 
      String? profileUrl, 
      bool? isClassInCharge, 
      List<dynamic>? subjectName,}){
    _staffId = staffId;
    _staffName = staffName;
    _mobile = mobile;
    _profileUrl = profileUrl;
    _isClassInCharge = isClassInCharge;
    _subjectName = subjectName;
}

  StaffList.fromJson(dynamic json) {
    _staffId = json['StaffId'];
    _staffName = json['StaffName'];
    _mobile = json['Mobile'];
    _profileUrl = json['profileUrl'];
    _isClassInCharge = json['IsClassInCharge'];
    // if (json['SubjectName'] != null) {
    //   _subjectName = [];
    //   json['SubjectName'].forEach((v) {
    //     //_subjectName?.add(StaffList.fromJson(v));
    //     _subjectName?.add(Dynamic.fromJson(v));
    //   }
    //   );
    // }
  }
  num? _staffId;
  String? _staffName;
  String? _mobile;
  String? _profileUrl;
  bool? _isClassInCharge;
  List<dynamic>? _subjectName;
StaffList copyWith({  num? staffId,
  String? staffName,
  String? mobile,
  String? profileUrl,
  bool? isClassInCharge,
  List<dynamic>? subjectName,
}) => StaffList(  staffId: staffId ?? _staffId,
  staffName: staffName ?? _staffName,
  mobile: mobile ?? _mobile,
  profileUrl: profileUrl ?? _profileUrl,
  isClassInCharge: isClassInCharge ?? _isClassInCharge,
  subjectName: subjectName ?? _subjectName,
);
  num? get staffId => _staffId;
  String? get staffName => _staffName;
  String? get mobile => _mobile;
  String? get profileUrl => _profileUrl;
  bool? get isClassInCharge => _isClassInCharge;
  List<dynamic>? get subjectName => _subjectName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['StaffId'] = _staffId;
    map['StaffName'] = _staffName;
    map['Mobile'] = _mobile;
    map['profileUrl'] = _profileUrl;
    map['IsClassInCharge'] = _isClassInCharge;
    if (_subjectName != null) {
      map['SubjectName'] = _subjectName?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}