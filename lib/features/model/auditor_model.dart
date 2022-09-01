class AuditorModel {
 late List<Auditor> _auditor;
  List<Auditor> get auditor=>_auditor;

  AuditorModel({required auditor});

  AuditorModel.fromJson(Map<String, dynamic> json) {
    if (json['auditor'] != null) {
      _auditor = <Auditor>[];
      json['auditor'].forEach((v) {
        _auditor.add(new Auditor.fromJson(v));
      });
    }
  }


}

class Auditor {
  int? id;
  String? employementID;
  String? firstName;
  String? midleName;
  String? lastName;
  int? desgnation;
  int? team;
  Null? joinigDate;
  String? emailId;
  String? corporateEmail;

  Auditor(
      {this.id,
        this.employementID,
        this.firstName,
        this.midleName,
        this.lastName,
        this.desgnation,
        this.team,
        this.joinigDate,
        this.emailId,
        this.corporateEmail});

  Auditor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    employementID = json['employementID'];
    firstName = json['firstName'];
    midleName = json['midleName'];
    lastName = json['lastName'];
    desgnation = json['desgnation'];
    team = json['team'];
    joinigDate = json['joinigDate'];
    emailId = json['email_id'];
    corporateEmail = json['corporate_email'];
  }
  
}