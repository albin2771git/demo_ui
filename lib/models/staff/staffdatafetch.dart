import 'package:demo_ui/models/student/DataFetch.dart';

/// status : "Success"
/// data : {"Today":[],"UpComing":[{"StaffId":154,"Name":"Merlin Joy","Designation":"Teacher","MobileNumber":"918281507383","DateOfBirth":"20-02-1992","DateOfBirthForSort":"1992-02-20T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":18,"Name":"NILANJANA SINHA","Designation":"PRT","MobileNumber":"919999999999","DateOfBirth":"24-02-1978","DateOfBirthForSort":"1978-02-24T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":94,"Name":"DIKSHA SHARMA","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"27-02-1994","DateOfBirthForSort":"1994-02-27T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":92,"Name":"NIGHAT PARVEEN","Designation":"ART TEACHER","MobileNumber":"911234567890","DateOfBirth":"28-02-1974","DateOfBirthForSort":"1974-02-28T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":144,"Name":"Saju John","Designation":null,"MobileNumber":"911231231234","DateOfBirth":"28-02-2022","DateOfBirthForSort":"2022-02-28T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":44,"Name":"SHREYA GUPTA","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"28-02-1992","DateOfBirthForSort":"1992-02-28T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":49,"Name":"SIMMI RAJAN","Designation":"Special Educator","MobileNumber":"911122334455","DateOfBirth":"20-03-1990","DateOfBirthForSort":"1990-03-20T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":89,"Name":"ANU MAKHIJA","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"29-03-1991","DateOfBirthForSort":"1991-03-29T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":31,"Name":"RITUPARNA CHAKRABORTY","Designation":"MUSIC TEACHER","MobileNumber":"911234567890","DateOfBirth":"31-03-1982","DateOfBirthForSort":"1982-03-31T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":96,"Name":"JATIN KUMAR","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"20-04-1995","DateOfBirthForSort":"1995-04-20T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":153,"Name":"Sonia Thomas","Designation":"ASSISTANT TEACHER","MobileNumber":"919111111111","DateOfBirth":"22-04-1991","DateOfBirthForSort":"1991-04-22T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":45,"Name":"SULCKSHANA CHATURVEDI","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"22-04-1960","DateOfBirthForSort":"1960-04-22T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":126,"Name":"test","Designation":"Accountant","MobileNumber":"911234567890","DateOfBirth":"26-04-2021","DateOfBirthForSort":"2021-04-26T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":33,"Name":"SHIVANI JAIN","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"27-04-1978","DateOfBirthForSort":"1978-04-27T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":36,"Name":"NISHA SINGH","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"29-04-1982","DateOfBirthForSort":"1982-04-29T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":56,"Name":"ERNUS KERKETTA","Designation":"Helper","MobileNumber":"911234567890","DateOfBirth":"20-05-1980","DateOfBirthForSort":"1980-05-20T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":117,"Name":"SHWETA DOLLY","Designation":"ASSISTANT TEACHER","MobileNumber":"911234567890","DateOfBirth":"20-05-1989","DateOfBirthForSort":"1989-05-20T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":97,"Name":"PRABHATI GUPTA","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"21-05-1975","DateOfBirthForSort":"1975-05-21T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":67,"Name":"DIVYA DUNGDUNG","Designation":"Helper","MobileNumber":"911234567890","DateOfBirth":"22-05-1972","DateOfBirthForSort":"1972-05-22T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":24,"Name":"LILLY MARY SAMUEL","Designation":"P.PRIMARY","MobileNumber":"911234567890","DateOfBirth":"25-05-1993","DateOfBirthForSort":"1993-05-25T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":27,"Name":"RASHMI KOTHARI","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"19-06-1980","DateOfBirthForSort":"1980-06-19T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":34,"Name":"SINDHU ROY JOSEPH","Designation":"Receptionist","MobileNumber":"911234567890","DateOfBirth":"27-06-1979","DateOfBirthForSort":"1979-06-27T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":151,"Name":"Emma Gupta","Designation":"ART TEACHER","MobileNumber":"911236547896","DateOfBirth":"19-07-1991","DateOfBirthForSort":"1991-07-19T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":122,"Name":"SR. ALEENA","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"20-07-1983","DateOfBirthForSort":"1983-07-20T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":118,"Name":"PRAGATI SHARMA","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"26-07-1979","DateOfBirthForSort":"1979-07-26T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":40,"Name":"V . PRIYA","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"28-07-1975","DateOfBirthForSort":"1975-07-28T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":85,"Name":"RITU SHARMA","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"30-07-1986","DateOfBirthForSort":"1986-07-30T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":54,"Name":"VIRENDRA KUMAR RAJAK","Designation":"Helper","MobileNumber":"911234567890","DateOfBirth":"20-08-1986","DateOfBirthForSort":"1986-08-20T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":12,"Name":"ANJU MENON","Designation":"P.PRIMARY","MobileNumber":"919023456454","DateOfBirth":"21-08-1979","DateOfBirthForSort":"1979-08-21T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":15,"Name":"IRENE O'BRIEN","Designation":"P.PRIMARY","MobileNumber":"919496169515","DateOfBirth":"21-08-1978","DateOfBirthForSort":"1978-08-21T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":95,"Name":"JENIFER GOMES","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"28-08-1994","DateOfBirthForSort":"1994-08-28T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":112,"Name":"DEEPA THOMAS","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"19-09-1991","DateOfBirthForSort":"1991-09-19T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":133,"Name":"Jaseena","Designation":"Admin","MobileNumber":"918089273557","DateOfBirth":"21-09-1990","DateOfBirthForSort":"1990-09-21T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":119,"Name":"BHUMIKA KATHURIYA","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"23-09-1993","DateOfBirthForSort":"1993-09-23T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":23,"Name":"VANI BHATT","Designation":"Office Assistant","MobileNumber":"919078787878","DateOfBirth":"23-09-1979","DateOfBirthForSort":"1979-09-23T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":123,"Name":"SAMANTHA SUSANA WANG HSUEH HSAING","Designation":"ASSISTANT TEACHER","MobileNumber":"911234567890","DateOfBirth":"24-09-1991","DateOfBirthForSort":"1991-09-24T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":138,"Name":"Staff1","Designation":null,"MobileNumber":"912222222222","DateOfBirth":"29-09-2021","DateOfBirthForSort":"2021-09-29T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":32,"Name":"SISNY PAZHAYATTIL","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"30-09-1992","DateOfBirthForSort":"1992-09-30T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":135,"Name":"Anlet Nevi","Designation":"Office Assistant","MobileNumber":"911234567890","DateOfBirth":"25-10-1991","DateOfBirthForSort":"1991-10-25T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":84,"Name":"FR. J.A CARVALHO","Designation":"DIRECTOR","MobileNumber":"911234567890","DateOfBirth":"26-10-1948","DateOfBirthForSort":"1948-10-26T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":65,"Name":"SURAJMANI LAKRA","Designation":"Helper","MobileNumber":"911234567890","DateOfBirth":"27-10-1978","DateOfBirthForSort":"1978-10-27T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":150,"Name":"Lipin Prothasis","Designation":"Admin","MobileNumber":"919072588056","DateOfBirth":"31-10-1979","DateOfBirthForSort":"1979-10-31T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":28,"Name":"VANDANA MICHAEL","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"26-11-1984","DateOfBirthForSort":"1984-11-26T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":38,"Name":"VIBHA ANAND","Designation":"TGT","MobileNumber":"911212343434","DateOfBirth":"30-11-1990","DateOfBirthForSort":"1990-11-30T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":90,"Name":"SRISHTI","Designation":"DANCE TEACHER","MobileNumber":"911234567890","DateOfBirth":"20-12-1992","DateOfBirthForSort":"1992-12-20T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":43,"Name":"PRIYANKA","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"22-12-1986","DateOfBirthForSort":"1986-12-22T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":143,"Name":"Ashu","Designation":"Teacher","MobileNumber":"917878232345","DateOfBirth":"25-12-1995","DateOfBirthForSort":"1995-12-25T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":142,"Name":"jesi","Designation":null,"MobileNumber":"918989676533","DateOfBirth":"25-12-1990","DateOfBirthForSort":"1990-12-25T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":50,"Name":"EYINGBEMO OVUNG","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"26-12-1992","DateOfBirthForSort":"1992-12-26T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":120,"Name":"PRAJNA PETER","Designation":"PGT","MobileNumber":"911234567890","DateOfBirth":"30-12-1988","DateOfBirthForSort":"1988-12-30T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":104,"Name":"BLESSY BENNY","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"31-12-1995","DateOfBirthForSort":"1995-12-31T00:00:00","PhotoFileId":0,"PhotoFileUrl":null}],"Week":[{"StaffId":107,"Name":"THAIPI LIVEI","Designation":"ASSISTANT TEACHER","MobileNumber":"911234567890","DateOfBirth":"16-01-1991","DateOfBirthForSort":"1991-01-16T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":22,"Name":"JOMON GEORGE","Designation":"Accountant","MobileNumber":"910000000000000","DateOfBirth":"17-01-1979","DateOfBirthForSort":"1979-01-17T00:00:00","PhotoFileId":0,"PhotoFileUrl":null}],"Tomorrow":[],"Month":[{"StaffId":148,"Name":"Alphy","Designation":null,"MobileNumber":"914568974501","DateOfBirth":"01-01-2022","DateOfBirthForSort":"2022-01-01T00:00:00","PhotoFileId":15848,"PhotoFileUrl":"https://edisapp3storageaccount.blob.core.windows.net/text/73615bf8-f5c7-4399-87a4-2071af966a41ee133a35-03a0-49b0-aa65-75bf11e3e792.jpeg"},{"StaffId":87,"Name":"ANITA THAPA","Designation":"Helper","MobileNumber":"911234567811","DateOfBirth":"01-01-1980","DateOfBirthForSort":"1980-01-01T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":102,"Name":"FILOMENA FERNANDES","Designation":"Receptionist","MobileNumber":"911234567890","DateOfBirth":"01-01-1970","DateOfBirthForSort":"1970-01-01T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":141,"Name":"Jerin","Designation":null,"MobileNumber":"911231231231","DateOfBirth":"01-01-2021","DateOfBirthForSort":"2021-01-01T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":69,"Name":"SAVITRI","Designation":"Helper","MobileNumber":"911234567890","DateOfBirth":"01-01-1984","DateOfBirthForSort":"1984-01-01T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":72,"Name":"SHISH PAL","Designation":"CONDUCTOR","MobileNumber":"911234567890","DateOfBirth":"01-01-1963","DateOfBirthForSort":"1963-01-01T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":106,"Name":"UMESH KUMAR","Designation":"Lab Assistant","MobileNumber":"911234567890","DateOfBirth":"01-01-1980","DateOfBirthForSort":"1980-01-01T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":129,"Name":"LIz","Designation":"ASSISTANT TEACHER","MobileNumber":"911234567890","DateOfBirth":"02-01-1995","DateOfBirthForSort":"1995-01-02T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":17,"Name":"DEVIKA KATARIA","Designation":"PRT","MobileNumber":"91987377373737","DateOfBirth":"04-01-1982","DateOfBirthForSort":"1982-01-04T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":105,"Name":"CHERYL IONA MENEZES","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"05-01-1990","DateOfBirthForSort":"1990-01-05T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":111,"Name":"APOORVA MISHRA","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"07-01-1990","DateOfBirthForSort":"1990-01-07T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":57,"Name":"SAMEER DUNGDUNG","Designation":"Helper","MobileNumber":"911234567890","DateOfBirth":"12-01-1990","DateOfBirthForSort":"1990-01-12T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":128,"Name":"test","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"12-01-2001","DateOfBirthForSort":"2001-01-12T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":19,"Name":"JOHNSON GEORGE PAYAMMAL","Designation":"Admin","MobileNumber":"911234567890","DateOfBirth":"14-01-1973","DateOfBirthForSort":"1973-01-14T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":107,"Name":"THAIPI LIVEI","Designation":"ASSISTANT TEACHER","MobileNumber":"911234567890","DateOfBirth":"16-01-1991","DateOfBirthForSort":"1991-01-16T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":22,"Name":"JOMON GEORGE","Designation":"Accountant","MobileNumber":"910000000000000","DateOfBirth":"17-01-1979","DateOfBirthForSort":"1979-01-17T00:00:00","PhotoFileId":0,"PhotoFileUrl":null}]}

class Staffdatafetch {
  Staffdatafetch({
      String? status, 
      Data? data,}){
    _status = status;
    _data = data;
}

  Staffdatafetch.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _status;
  Data? _data;
Staffdatafetch copyWith({  String? status,
  Data? data,
}) => Staffdatafetch(  status: status ?? _status,
  data: data ?? _data,
);
  String? get status => _status;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// Today : []
/// UpComing : [{"StaffId":154,"Name":"Merlin Joy","Designation":"Teacher","MobileNumber":"918281507383","DateOfBirth":"20-02-1992","DateOfBirthForSort":"1992-02-20T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":18,"Name":"NILANJANA SINHA","Designation":"PRT","MobileNumber":"919999999999","DateOfBirth":"24-02-1978","DateOfBirthForSort":"1978-02-24T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":94,"Name":"DIKSHA SHARMA","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"27-02-1994","DateOfBirthForSort":"1994-02-27T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":92,"Name":"NIGHAT PARVEEN","Designation":"ART TEACHER","MobileNumber":"911234567890","DateOfBirth":"28-02-1974","DateOfBirthForSort":"1974-02-28T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":144,"Name":"Saju John","Designation":null,"MobileNumber":"911231231234","DateOfBirth":"28-02-2022","DateOfBirthForSort":"2022-02-28T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":44,"Name":"SHREYA GUPTA","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"28-02-1992","DateOfBirthForSort":"1992-02-28T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":49,"Name":"SIMMI RAJAN","Designation":"Special Educator","MobileNumber":"911122334455","DateOfBirth":"20-03-1990","DateOfBirthForSort":"1990-03-20T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":89,"Name":"ANU MAKHIJA","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"29-03-1991","DateOfBirthForSort":"1991-03-29T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":31,"Name":"RITUPARNA CHAKRABORTY","Designation":"MUSIC TEACHER","MobileNumber":"911234567890","DateOfBirth":"31-03-1982","DateOfBirthForSort":"1982-03-31T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":96,"Name":"JATIN KUMAR","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"20-04-1995","DateOfBirthForSort":"1995-04-20T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":153,"Name":"Sonia Thomas","Designation":"ASSISTANT TEACHER","MobileNumber":"919111111111","DateOfBirth":"22-04-1991","DateOfBirthForSort":"1991-04-22T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":45,"Name":"SULCKSHANA CHATURVEDI","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"22-04-1960","DateOfBirthForSort":"1960-04-22T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":126,"Name":"test","Designation":"Accountant","MobileNumber":"911234567890","DateOfBirth":"26-04-2021","DateOfBirthForSort":"2021-04-26T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":33,"Name":"SHIVANI JAIN","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"27-04-1978","DateOfBirthForSort":"1978-04-27T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":36,"Name":"NISHA SINGH","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"29-04-1982","DateOfBirthForSort":"1982-04-29T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":56,"Name":"ERNUS KERKETTA","Designation":"Helper","MobileNumber":"911234567890","DateOfBirth":"20-05-1980","DateOfBirthForSort":"1980-05-20T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":117,"Name":"SHWETA DOLLY","Designation":"ASSISTANT TEACHER","MobileNumber":"911234567890","DateOfBirth":"20-05-1989","DateOfBirthForSort":"1989-05-20T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":97,"Name":"PRABHATI GUPTA","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"21-05-1975","DateOfBirthForSort":"1975-05-21T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":67,"Name":"DIVYA DUNGDUNG","Designation":"Helper","MobileNumber":"911234567890","DateOfBirth":"22-05-1972","DateOfBirthForSort":"1972-05-22T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":24,"Name":"LILLY MARY SAMUEL","Designation":"P.PRIMARY","MobileNumber":"911234567890","DateOfBirth":"25-05-1993","DateOfBirthForSort":"1993-05-25T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":27,"Name":"RASHMI KOTHARI","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"19-06-1980","DateOfBirthForSort":"1980-06-19T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":34,"Name":"SINDHU ROY JOSEPH","Designation":"Receptionist","MobileNumber":"911234567890","DateOfBirth":"27-06-1979","DateOfBirthForSort":"1979-06-27T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":151,"Name":"Emma Gupta","Designation":"ART TEACHER","MobileNumber":"911236547896","DateOfBirth":"19-07-1991","DateOfBirthForSort":"1991-07-19T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":122,"Name":"SR. ALEENA","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"20-07-1983","DateOfBirthForSort":"1983-07-20T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":118,"Name":"PRAGATI SHARMA","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"26-07-1979","DateOfBirthForSort":"1979-07-26T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":40,"Name":"V . PRIYA","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"28-07-1975","DateOfBirthForSort":"1975-07-28T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":85,"Name":"RITU SHARMA","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"30-07-1986","DateOfBirthForSort":"1986-07-30T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":54,"Name":"VIRENDRA KUMAR RAJAK","Designation":"Helper","MobileNumber":"911234567890","DateOfBirth":"20-08-1986","DateOfBirthForSort":"1986-08-20T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":12,"Name":"ANJU MENON","Designation":"P.PRIMARY","MobileNumber":"919023456454","DateOfBirth":"21-08-1979","DateOfBirthForSort":"1979-08-21T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":15,"Name":"IRENE O'BRIEN","Designation":"P.PRIMARY","MobileNumber":"919496169515","DateOfBirth":"21-08-1978","DateOfBirthForSort":"1978-08-21T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":95,"Name":"JENIFER GOMES","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"28-08-1994","DateOfBirthForSort":"1994-08-28T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":112,"Name":"DEEPA THOMAS","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"19-09-1991","DateOfBirthForSort":"1991-09-19T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":133,"Name":"Jaseena","Designation":"Admin","MobileNumber":"918089273557","DateOfBirth":"21-09-1990","DateOfBirthForSort":"1990-09-21T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":119,"Name":"BHUMIKA KATHURIYA","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"23-09-1993","DateOfBirthForSort":"1993-09-23T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":23,"Name":"VANI BHATT","Designation":"Office Assistant","MobileNumber":"919078787878","DateOfBirth":"23-09-1979","DateOfBirthForSort":"1979-09-23T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":123,"Name":"SAMANTHA SUSANA WANG HSUEH HSAING","Designation":"ASSISTANT TEACHER","MobileNumber":"911234567890","DateOfBirth":"24-09-1991","DateOfBirthForSort":"1991-09-24T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":138,"Name":"Staff1","Designation":null,"MobileNumber":"912222222222","DateOfBirth":"29-09-2021","DateOfBirthForSort":"2021-09-29T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":32,"Name":"SISNY PAZHAYATTIL","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"30-09-1992","DateOfBirthForSort":"1992-09-30T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":135,"Name":"Anlet Nevi","Designation":"Office Assistant","MobileNumber":"911234567890","DateOfBirth":"25-10-1991","DateOfBirthForSort":"1991-10-25T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":84,"Name":"FR. J.A CARVALHO","Designation":"DIRECTOR","MobileNumber":"911234567890","DateOfBirth":"26-10-1948","DateOfBirthForSort":"1948-10-26T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":65,"Name":"SURAJMANI LAKRA","Designation":"Helper","MobileNumber":"911234567890","DateOfBirth":"27-10-1978","DateOfBirthForSort":"1978-10-27T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":150,"Name":"Lipin Prothasis","Designation":"Admin","MobileNumber":"919072588056","DateOfBirth":"31-10-1979","DateOfBirthForSort":"1979-10-31T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":28,"Name":"VANDANA MICHAEL","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"26-11-1984","DateOfBirthForSort":"1984-11-26T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":38,"Name":"VIBHA ANAND","Designation":"TGT","MobileNumber":"911212343434","DateOfBirth":"30-11-1990","DateOfBirthForSort":"1990-11-30T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":90,"Name":"SRISHTI","Designation":"DANCE TEACHER","MobileNumber":"911234567890","DateOfBirth":"20-12-1992","DateOfBirthForSort":"1992-12-20T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":43,"Name":"PRIYANKA","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"22-12-1986","DateOfBirthForSort":"1986-12-22T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":143,"Name":"Ashu","Designation":"Teacher","MobileNumber":"917878232345","DateOfBirth":"25-12-1995","DateOfBirthForSort":"1995-12-25T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":142,"Name":"jesi","Designation":null,"MobileNumber":"918989676533","DateOfBirth":"25-12-1990","DateOfBirthForSort":"1990-12-25T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":50,"Name":"EYINGBEMO OVUNG","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"26-12-1992","DateOfBirthForSort":"1992-12-26T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":120,"Name":"PRAJNA PETER","Designation":"PGT","MobileNumber":"911234567890","DateOfBirth":"30-12-1988","DateOfBirthForSort":"1988-12-30T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":104,"Name":"BLESSY BENNY","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"31-12-1995","DateOfBirthForSort":"1995-12-31T00:00:00","PhotoFileId":0,"PhotoFileUrl":null}]
/// Week : [{"StaffId":107,"Name":"THAIPI LIVEI","Designation":"ASSISTANT TEACHER","MobileNumber":"911234567890","DateOfBirth":"16-01-1991","DateOfBirthForSort":"1991-01-16T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":22,"Name":"JOMON GEORGE","Designation":"Accountant","MobileNumber":"910000000000000","DateOfBirth":"17-01-1979","DateOfBirthForSort":"1979-01-17T00:00:00","PhotoFileId":0,"PhotoFileUrl":null}]
/// Tomorrow : []
/// Month : [{"StaffId":148,"Name":"Alphy","Designation":null,"MobileNumber":"914568974501","DateOfBirth":"01-01-2022","DateOfBirthForSort":"2022-01-01T00:00:00","PhotoFileId":15848,"PhotoFileUrl":"https://edisapp3storageaccount.blob.core.windows.net/text/73615bf8-f5c7-4399-87a4-2071af966a41ee133a35-03a0-49b0-aa65-75bf11e3e792.jpeg"},{"StaffId":87,"Name":"ANITA THAPA","Designation":"Helper","MobileNumber":"911234567811","DateOfBirth":"01-01-1980","DateOfBirthForSort":"1980-01-01T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":102,"Name":"FILOMENA FERNANDES","Designation":"Receptionist","MobileNumber":"911234567890","DateOfBirth":"01-01-1970","DateOfBirthForSort":"1970-01-01T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":141,"Name":"Jerin","Designation":null,"MobileNumber":"911231231231","DateOfBirth":"01-01-2021","DateOfBirthForSort":"2021-01-01T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":69,"Name":"SAVITRI","Designation":"Helper","MobileNumber":"911234567890","DateOfBirth":"01-01-1984","DateOfBirthForSort":"1984-01-01T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":72,"Name":"SHISH PAL","Designation":"CONDUCTOR","MobileNumber":"911234567890","DateOfBirth":"01-01-1963","DateOfBirthForSort":"1963-01-01T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":106,"Name":"UMESH KUMAR","Designation":"Lab Assistant","MobileNumber":"911234567890","DateOfBirth":"01-01-1980","DateOfBirthForSort":"1980-01-01T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":129,"Name":"LIz","Designation":"ASSISTANT TEACHER","MobileNumber":"911234567890","DateOfBirth":"02-01-1995","DateOfBirthForSort":"1995-01-02T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":17,"Name":"DEVIKA KATARIA","Designation":"PRT","MobileNumber":"91987377373737","DateOfBirth":"04-01-1982","DateOfBirthForSort":"1982-01-04T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":105,"Name":"CHERYL IONA MENEZES","Designation":"PRT","MobileNumber":"911234567890","DateOfBirth":"05-01-1990","DateOfBirthForSort":"1990-01-05T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":111,"Name":"APOORVA MISHRA","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"07-01-1990","DateOfBirthForSort":"1990-01-07T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":57,"Name":"SAMEER DUNGDUNG","Designation":"Helper","MobileNumber":"911234567890","DateOfBirth":"12-01-1990","DateOfBirthForSort":"1990-01-12T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":128,"Name":"test","Designation":"TGT","MobileNumber":"911234567890","DateOfBirth":"12-01-2001","DateOfBirthForSort":"2001-01-12T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":19,"Name":"JOHNSON GEORGE PAYAMMAL","Designation":"Admin","MobileNumber":"911234567890","DateOfBirth":"14-01-1973","DateOfBirthForSort":"1973-01-14T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":107,"Name":"THAIPI LIVEI","Designation":"ASSISTANT TEACHER","MobileNumber":"911234567890","DateOfBirth":"16-01-1991","DateOfBirthForSort":"1991-01-16T00:00:00","PhotoFileId":0,"PhotoFileUrl":null},{"StaffId":22,"Name":"JOMON GEORGE","Designation":"Accountant","MobileNumber":"910000000000000","DateOfBirth":"17-01-1979","DateOfBirthForSort":"1979-01-17T00:00:00","PhotoFileId":0,"PhotoFileUrl":null}]

class Data {
  Data({
      List<dynamic>? today, 
      List<UpComing>? upComing, 
      List<Week>? week, 
      List<dynamic>? tomorrow, 
      List<Month>? month,}){
    _today = today;
    _upComing = upComing;
    _week = week;
    _tomorrow = tomorrow;
    _month = month;
}

  Data.fromJson(dynamic json) {
    if (json['Today'] != null) {
      _today = [];
      json['Today'].forEach((v) {
        _today?.add(Today.fromJson(v));
      });
    }
    if (json['UpComing'] != null) {
      _upComing = [];
      json['UpComing'].forEach((v) {
        _upComing?.add(UpComing.fromJson(v));
      });
    }
    if (json['Week'] != null) {
      _week = [];
      json['Week'].forEach((v) {
        _week?.add(Week.fromJson(v));
      });
    }
    if (json['Tomorrow'] != null) {
      _tomorrow = [];
      json['Tomorrow'].forEach((v) {
        _tomorrow?.add(Tomorrow.fromJson(v));
      });
    }
    if (json['Month'] != null) {
      _month = [];
      json['Month'].forEach((v) {
        _month?.add(Month.fromJson(v));
      });
    }
  }
  List<dynamic>? _today;
  List<UpComing>? _upComing;
  List<Week>? _week;
  List<dynamic>? _tomorrow;
  List<Month>? _month;
Data copyWith({  List<dynamic>? today,
  List<UpComing>? upComing,
  List<Week>? week,
  List<dynamic>? tomorrow,
  List<Month>? month,
}) => Data(  today: today ?? _today,
  upComing: upComing ?? _upComing,
  week: week ?? _week,
  tomorrow: tomorrow ?? _tomorrow,
  month: month ?? _month,
);
  List<dynamic>? get today => _today;
  List<UpComing>? get upComing => _upComing;
  List<Week>? get week => _week;
  List<dynamic>? get tomorrow => _tomorrow;
  List<Month>? get month => _month;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_today != null) {
      map['Today'] = _today?.map((v) => v.toJson()).toList();
    }
    if (_upComing != null) {
      map['UpComing'] = _upComing?.map((v) => v.toJson()).toList();
    }
    if (_week != null) {
      map['Week'] = _week?.map((v) => v.toJson()).toList();
    }
    if (_tomorrow != null) {
      map['Tomorrow'] = _tomorrow?.map((v) => v.toJson()).toList();
    }
    if (_month != null) {
      map['Month'] = _month?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// StaffId : 148
/// Name : "Alphy"
/// Designation : null
/// MobileNumber : "914568974501"
/// DateOfBirth : "01-01-2022"
/// DateOfBirthForSort : "2022-01-01T00:00:00"
/// PhotoFileId : 15848
/// PhotoFileUrl : "https://edisapp3storageaccount.blob.core.windows.net/text/73615bf8-f5c7-4399-87a4-2071af966a41ee133a35-03a0-49b0-aa65-75bf11e3e792.jpeg"

class Month {
  Month({
      num? staffId, 
      String? name, 
      dynamic designation, 
      String? mobileNumber, 
      String? dateOfBirth, 
      String? dateOfBirthForSort, 
      num? photoFileId, 
      String? photoFileUrl,}){
    _staffId = staffId;
    _name = name;
    _designation = designation;
    _mobileNumber = mobileNumber;
    _dateOfBirth = dateOfBirth;
    _dateOfBirthForSort = dateOfBirthForSort;
    _photoFileId = photoFileId;
    _photoFileUrl = photoFileUrl;
}

  Month.fromJson(dynamic json) {
    _staffId = json['StaffId'];
    _name = json['Name'];
    _designation = json['Designation'];
    _mobileNumber = json['MobileNumber'];
    _dateOfBirth = json['DateOfBirth'];
    _dateOfBirthForSort = json['DateOfBirthForSort'];
    _photoFileId = json['PhotoFileId'];
    _photoFileUrl = json['PhotoFileUrl'];
  }
  num? _staffId;
  String? _name;
  dynamic _designation;
  String? _mobileNumber;
  String? _dateOfBirth;
  String? _dateOfBirthForSort;
  num? _photoFileId;
  String? _photoFileUrl;
Month copyWith({  num? staffId,
  String? name,
  dynamic designation,
  String? mobileNumber,
  String? dateOfBirth,
  String? dateOfBirthForSort,
  num? photoFileId,
  String? photoFileUrl,
}) => Month(  staffId: staffId ?? _staffId,
  name: name ?? _name,
  designation: designation ?? _designation,
  mobileNumber: mobileNumber ?? _mobileNumber,
  dateOfBirth: dateOfBirth ?? _dateOfBirth,
  dateOfBirthForSort: dateOfBirthForSort ?? _dateOfBirthForSort,
  photoFileId: photoFileId ?? _photoFileId,
  photoFileUrl: photoFileUrl ?? _photoFileUrl,
);
  num? get staffId => _staffId;
  String? get name => _name;
  dynamic get designation => _designation;
  String? get mobileNumber => _mobileNumber;
  String? get dateOfBirth => _dateOfBirth;
  String? get dateOfBirthForSort => _dateOfBirthForSort;
  num? get photoFileId => _photoFileId;
  String? get photoFileUrl => _photoFileUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['StaffId'] = _staffId;
    map['Name'] = _name;
    map['Designation'] = _designation;
    map['MobileNumber'] = _mobileNumber;
    map['DateOfBirth'] = _dateOfBirth;
    map['DateOfBirthForSort'] = _dateOfBirthForSort;
    map['PhotoFileId'] = _photoFileId;
    map['PhotoFileUrl'] = _photoFileUrl;
    return map;
  }

}

/// StaffId : 107
/// Name : "THAIPI LIVEI"
/// Designation : "ASSISTANT TEACHER"
/// MobileNumber : "911234567890"
/// DateOfBirth : "16-01-1991"
/// DateOfBirthForSort : "1991-01-16T00:00:00"
/// PhotoFileId : 0
/// PhotoFileUrl : null

class Week {
  Week({
      num? staffId, 
      String? name, 
      String? designation, 
      String? mobileNumber, 
      String? dateOfBirth, 
      String? dateOfBirthForSort, 
      num? photoFileId, 
      dynamic photoFileUrl,}){
    _staffId = staffId;
    _name = name;
    _designation = designation;
    _mobileNumber = mobileNumber;
    _dateOfBirth = dateOfBirth;
    _dateOfBirthForSort = dateOfBirthForSort;
    _photoFileId = photoFileId;
    _photoFileUrl = photoFileUrl;
}

  Week.fromJson(dynamic json) {
    _staffId = json['StaffId'];
    _name = json['Name'];
    _designation = json['Designation'];
    _mobileNumber = json['MobileNumber'];
    _dateOfBirth = json['DateOfBirth'];
    _dateOfBirthForSort = json['DateOfBirthForSort'];
    _photoFileId = json['PhotoFileId'];
    _photoFileUrl = json['PhotoFileUrl'];
  }
  num? _staffId;
  String? _name;
  String? _designation;
  String? _mobileNumber;
  String? _dateOfBirth;
  String? _dateOfBirthForSort;
  num? _photoFileId;
  dynamic _photoFileUrl;
Week copyWith({  num? staffId,
  String? name,
  String? designation,
  String? mobileNumber,
  String? dateOfBirth,
  String? dateOfBirthForSort,
  num? photoFileId,
  dynamic photoFileUrl,
}) => Week(  staffId: staffId ?? _staffId,
  name: name ?? _name,
  designation: designation ?? _designation,
  mobileNumber: mobileNumber ?? _mobileNumber,
  dateOfBirth: dateOfBirth ?? _dateOfBirth,
  dateOfBirthForSort: dateOfBirthForSort ?? _dateOfBirthForSort,
  photoFileId: photoFileId ?? _photoFileId,
  photoFileUrl: photoFileUrl ?? _photoFileUrl,
);
  num? get staffId => _staffId;
  String? get name => _name;
  String? get designation => _designation;
  String? get mobileNumber => _mobileNumber;
  String? get dateOfBirth => _dateOfBirth;
  String? get dateOfBirthForSort => _dateOfBirthForSort;
  num? get photoFileId => _photoFileId;
  dynamic get photoFileUrl => _photoFileUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['StaffId'] = _staffId;
    map['Name'] = _name;
    map['Designation'] = _designation;
    map['MobileNumber'] = _mobileNumber;
    map['DateOfBirth'] = _dateOfBirth;
    map['DateOfBirthForSort'] = _dateOfBirthForSort;
    map['PhotoFileId'] = _photoFileId;
    map['PhotoFileUrl'] = _photoFileUrl;
    return map;
  }

}

/// StaffId : 154
/// Name : "Merlin Joy"
/// Designation : "Teacher"
/// MobileNumber : "918281507383"
/// DateOfBirth : "20-02-1992"
/// DateOfBirthForSort : "1992-02-20T00:00:00"
/// PhotoFileId : 0
/// PhotoFileUrl : null

class UpComing {
  UpComing({
      num? staffId, 
      String? name, 
      String? designation, 
      String? mobileNumber, 
      String? dateOfBirth, 
      String? dateOfBirthForSort, 
      num? photoFileId, 
      dynamic photoFileUrl,}){
    _staffId = staffId;
    _name = name;
    _designation = designation;
    _mobileNumber = mobileNumber;
    _dateOfBirth = dateOfBirth;
    _dateOfBirthForSort = dateOfBirthForSort;
    _photoFileId = photoFileId;
    _photoFileUrl = photoFileUrl;
}

  UpComing.fromJson(dynamic json) {
    _staffId = json['StaffId'];
    _name = json['Name'];
    _designation = json['Designation'];
    _mobileNumber = json['MobileNumber'];
    _dateOfBirth = json['DateOfBirth'];
    _dateOfBirthForSort = json['DateOfBirthForSort'];
    _photoFileId = json['PhotoFileId'];
    _photoFileUrl = json['PhotoFileUrl'];
  }
  num? _staffId;
  String? _name;
  String? _designation;
  String? _mobileNumber;
  String? _dateOfBirth;
  String? _dateOfBirthForSort;
  num? _photoFileId;
  dynamic _photoFileUrl;
UpComing copyWith({  num? staffId,
  String? name,
  String? designation,
  String? mobileNumber,
  String? dateOfBirth,
  String? dateOfBirthForSort,
  num? photoFileId,
  dynamic photoFileUrl,
}) => UpComing(  staffId: staffId ?? _staffId,
  name: name ?? _name,
  designation: designation ?? _designation,
  mobileNumber: mobileNumber ?? _mobileNumber,
  dateOfBirth: dateOfBirth ?? _dateOfBirth,
  dateOfBirthForSort: dateOfBirthForSort ?? _dateOfBirthForSort,
  photoFileId: photoFileId ?? _photoFileId,
  photoFileUrl: photoFileUrl ?? _photoFileUrl,
);
  num? get staffId => _staffId;
  String? get name => _name;
  String? get designation => _designation;
  String? get mobileNumber => _mobileNumber;
  String? get dateOfBirth => _dateOfBirth;
  String? get dateOfBirthForSort => _dateOfBirthForSort;
  num? get photoFileId => _photoFileId;
  dynamic get photoFileUrl => _photoFileUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['StaffId'] = _staffId;
    map['Name'] = _name;
    map['Designation'] = _designation;
    map['MobileNumber'] = _mobileNumber;
    map['DateOfBirth'] = _dateOfBirth;
    map['DateOfBirthForSort'] = _dateOfBirthForSort;
    map['PhotoFileId'] = _photoFileId;
    map['PhotoFileUrl'] = _photoFileUrl;
    return map;
  }

}