/// status : "Success"
/// data : [{"Id":3,"Name":"Administration","DisplayOrder":1,"IsSelected":true},{"Id":1,"Name":"Teaching-","DisplayOrder":2,"IsSelected":true},{"Id":2,"Name":"Non Teaching","DisplayOrder":3,"IsSelected":true},{"Id":4,"Name":"Aux. Staff","DisplayOrder":4,"IsSelected":true}]

class AllStaffDetails {
  AllStaffDetails({
      String? status, 
      List<Data>? data,}){
    _status = status;
    _data = data;
}

  AllStaffDetails.fromJson(dynamic json) {
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
AllStaffDetails copyWith({  String? status,
  List<Data>? data,
}) => AllStaffDetails(  status: status ?? _status,
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

/// Id : 3
/// Name : "Administration"
/// DisplayOrder : 1
/// IsSelected : true

class Data {
  Data({
      num? id, 
      String? name, 
      num? displayOrder, 
      bool? isSelected,}){
    _id = id;
    _name = name;
    _displayOrder = displayOrder;
    _isSelected = isSelected;
}

  Data.fromJson(dynamic json) {
    _id = json['Id'];
    _name = json['Name'];
    _displayOrder = json['DisplayOrder'];
    _isSelected = json['IsSelected'];
  }
  num? _id;
  String? _name;
  num? _displayOrder;
  bool? _isSelected;
Data copyWith({  num? id,
  String? name,
  num? displayOrder,
  bool? isSelected,
}) => Data(  id: id ?? _id,
  name: name ?? _name,
  displayOrder: displayOrder ?? _displayOrder,
  isSelected: isSelected ?? _isSelected,
);
  num? get id => _id;
  String? get name => _name;
  num? get displayOrder => _displayOrder;
  bool? get isSelected => _isSelected;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = _id;
    map['Name'] = _name;
    map['DisplayOrder'] = _displayOrder;
    map['IsSelected'] = _isSelected;
    return map;
  }

}