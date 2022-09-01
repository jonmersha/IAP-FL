class ProgramModel {
  List<Program>? program;

  ProgramModel({this.program});

  ProgramModel.fromJson(Map<String, dynamic> json) {
    if (json['program'] != null) {
      program = <Program>[];
      json['program'].forEach((v) {
        program!.add(new Program.fromJson(v));
      });
    }
  }
}

class Program {
  int? engagementID;
  int? planID;
  Null? documentPath;
  int? uloadedBy;
  String? uploadTimeStamp;
  int? isPlanApproved;

  Program(
      {this.engagementID,
        this.planID,
        this.documentPath,
        this.uloadedBy,
        this.uploadTimeStamp,
        this.isPlanApproved});

  Program.fromJson(Map<String, dynamic> json) {
    engagementID = json['engagementID'];
    planID = json['planID'];
    documentPath = json['documentPath'];
    uloadedBy = json['uloadedBy'];
    uploadTimeStamp = json['uploadTimeStamp'];
    isPlanApproved = json['isPlanApproved'];
  }


}
