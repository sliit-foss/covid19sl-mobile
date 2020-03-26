//Report Class used for API

class Report {
  String updateDateTime;
  int localNewCases;
  int localTotalCases;
  int localTotalNumberOfIndividualsInHospitals;
  int localDeaths;
  int localNewDeaths;
  int localRecovered;
  int globalNewCases;
  int globalTotalCases;
  int globalDeaths;
  int globalNewDeaths;
  int globalRecovered;
  List<HospitalData> hospitalData;

  Report(
      {this.updateDateTime,
      this.localNewCases,
      this.localTotalCases,
      this.localTotalNumberOfIndividualsInHospitals,
      this.localDeaths,
      this.localNewDeaths,
      this.localRecovered,
      this.globalNewCases,
      this.globalTotalCases,
      this.globalDeaths,
      this.globalNewDeaths,
      this.globalRecovered,
      this.hospitalData});

  Report.fromJson(Map<String, dynamic> json) {
    updateDateTime = json['update_date_time'];
    localNewCases = json['local_new_cases'];
    localTotalCases = json['local_total_cases'];
    localTotalNumberOfIndividualsInHospitals =
        json['local_total_number_of_individuals_in_hospitals'];
    localDeaths = json['local_deaths'];
    localNewDeaths = json['local_new_deaths'];
    localRecovered = json['local_recovered'];
    globalNewCases = json['global_new_cases'];
    globalTotalCases = json['global_total_cases'];
    globalDeaths = json['global_deaths'];
    globalNewDeaths = json['global_new_deaths'];
    globalRecovered = json['global_recovered'];
    if (json['hospital_data'] != null) {
      hospitalData = new List<HospitalData>();
      json['hospital_data'].forEach((v) {
        hospitalData.add(new HospitalData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['update_date_time'] = this.updateDateTime;
    data['local_new_cases'] = this.localNewCases;
    data['local_total_cases'] = this.localTotalCases;
    data['local_total_number_of_individuals_in_hospitals'] =
        this.localTotalNumberOfIndividualsInHospitals;
    data['local_deaths'] = this.localDeaths;
    data['local_new_deaths'] = this.localNewDeaths;
    data['local_recovered'] = this.localRecovered;
    data['global_new_cases'] = this.globalNewCases;
    data['global_total_cases'] = this.globalTotalCases;
    data['global_deaths'] = this.globalDeaths;
    data['global_new_deaths'] = this.globalNewDeaths;
    data['global_recovered'] = this.globalRecovered;
    if (this.hospitalData != null) {
      data['hospital_data'] = this.hospitalData.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HospitalData {
  int id;
  int hospitalId;
  int cumulativeLocal;
  int cumulativeForeign;
  int treatmentLocal;
  int treatmentForeign;
  String createdAt;
  Null updatedAt;
  Null deletedAt;
  int cumulativeTotal;
  int treatmentTotal;
  Hospital hospital;

  HospitalData(
      {this.id,
      this.hospitalId,
      this.cumulativeLocal,
      this.cumulativeForeign,
      this.treatmentLocal,
      this.treatmentForeign,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.cumulativeTotal,
      this.treatmentTotal,
      this.hospital});

  HospitalData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    hospitalId = json['hospital_id'];
    cumulativeLocal = json['cumulative_local'];
    cumulativeForeign = json['cumulative_foreign'];
    treatmentLocal = json['treatment_local'];
    treatmentForeign = json['treatment_foreign'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    cumulativeTotal = json['cumulative_total'];
    treatmentTotal = json['treatment_total'];
    hospital = json['hospital'] != null
        ? new Hospital.fromJson(json['hospital'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['hospital_id'] = this.hospitalId;
    data['cumulative_local'] = this.cumulativeLocal;
    data['cumulative_foreign'] = this.cumulativeForeign;
    data['treatment_local'] = this.treatmentLocal;
    data['treatment_foreign'] = this.treatmentForeign;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['cumulative_total'] = this.cumulativeTotal;
    data['treatment_total'] = this.treatmentTotal;
    if (this.hospital != null) {
      data['hospital'] = this.hospital.toJson();
    }
    return data;
  }
}

class Hospital {
  int id;
  String name;
  String nameSi;
  String nameTa;
  String createdAt;
  String updatedAt;
  Null deletedAt;

  Hospital(
      {this.id,
      this.name,
      this.nameSi,
      this.nameTa,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Hospital.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameSi = json['name_si'];
    nameTa = json['name_ta'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['name_si'] = this.nameSi;
    data['name_ta'] = this.nameTa;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}