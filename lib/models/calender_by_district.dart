class Centers {
  List<CenterData> centers;

  Centers({this.centers});

  Centers.fromJson(Map<String, dynamic> json) {
    if (json['centers'] != null) {
      centers = [];
      json['centers'].forEach((v) {
        centers.add(new CenterData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.centers != null) {
      data['centers'] = this.centers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CenterData {
  int centerId;
  String name;
  String address;
  String stateName;
  String districtName;
  String blockName;
  int pincode;
  int lat;
  int long;
  String from;
  String to;
  String feeType;
  List<Sessions> sessions;

  CenterData(
      {this.centerId,
      this.name,
      this.address,
      this.stateName,
      this.districtName,
      this.blockName,
      this.pincode,
      this.lat,
      this.long,
      this.from,
      this.to,
      this.feeType,
      this.sessions});

  CenterData.fromJson(Map<String, dynamic> json) {
    centerId = json['center_id'];
    name = json['name'];
    address = json['address'];
    stateName = json['state_name'];
    districtName = json['district_name'];
    blockName = json['block_name'];
    pincode = json['pincode'];
    lat = json['lat'];
    long = json['long'];
    from = json['from'];
    to = json['to'];
    feeType = json['fee_type'];
    if (json['sessions'] != null) {
      sessions = [];
      json['sessions'].forEach((v) {
        sessions.add(new Sessions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['center_id'] = this.centerId;
    data['name'] = this.name;
    data['address'] = this.address;
    data['state_name'] = this.stateName;
    data['district_name'] = this.districtName;
    data['block_name'] = this.blockName;
    data['pincode'] = this.pincode;
    data['lat'] = this.lat;
    data['long'] = this.long;
    data['from'] = this.from;
    data['to'] = this.to;
    data['fee_type'] = this.feeType;
    if (this.sessions != null) {
      data['sessions'] = this.sessions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sessions {
  String sessionId;
  String date;
  int availableCapacity;
  int minAgeLimit;
  String vaccine;
  List<String> slots;
  int availableCapacityDose1;
  int availableCapacityDose2;

  Sessions(
      {this.sessionId,
      this.date,
      this.availableCapacity,
      this.minAgeLimit,
      this.vaccine,
      this.slots,
      this.availableCapacityDose1,
      this.availableCapacityDose2});

  Sessions.fromJson(Map<String, dynamic> json) {
    sessionId = json['session_id'];
    date = json['date'];
    availableCapacity = json['available_capacity'];
    minAgeLimit = json['min_age_limit'];
    vaccine = json['vaccine'];
    slots = json['slots'].cast<String>();
    availableCapacityDose1 = json['available_capacity_dose1'];
    availableCapacityDose2 = json['available_capacity_dose2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['session_id'] = this.sessionId;
    data['date'] = this.date;
    data['available_capacity'] = this.availableCapacity;
    data['min_age_limit'] = this.minAgeLimit;
    data['vaccine'] = this.vaccine;
    data['slots'] = this.slots;
    data['available_capacity_dose1'] = this.availableCapacityDose1;
    data['available_capacity_dose2'] = this.availableCapacityDose2;
    return data;
  }
}
