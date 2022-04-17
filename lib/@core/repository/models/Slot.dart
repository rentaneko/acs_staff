class Slot {
  int? id;
  int? slotId;
  int? staffId;
  int? detailId;
  int? status;
  String? createdDate;
  String? registerDate;

  Slot(
      {this.id,
        this.slotId,
        this.staffId,
        this.detailId,
        this.status,
        this.createdDate,
        this.registerDate});

  Slot.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slotId = json['slot_id'];
    staffId = json['staff_id'];
    detailId = json['detail_id'];
    status = json['status'];
    createdDate = json['created_date'];
    registerDate = json['register_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slot_id'] = this.slotId;
    data['staff_id'] = this.staffId;
    data['detail_id'] = this.detailId;
    data['status'] = this.status;
    data['created_date'] = this.createdDate;
    data['register_date'] = this.registerDate;
    return data;
  }
}