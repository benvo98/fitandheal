class ExcercisesModel {
  int idBaiTap;
  int idMucDich;
  String tenBaiTap;
  String hinhBT;
  String thongTinBT;
  String hinhMuscles;

  ExcercisesModel(
      {this.idBaiTap,
      this.idMucDich,
      this.tenBaiTap,
      this.hinhBT,
      this.thongTinBT,
      this.hinhMuscles});

  ExcercisesModel.fromJson(Map<String, dynamic> json) {
    idBaiTap = json['idBaiTap'];
    idMucDich = json['idMucDich'];
    tenBaiTap = json['tenBaiTap'];
    hinhBT = json['hinhBT'];
    thongTinBT = json['thongTinBT'];
    hinhMuscles = json['hinhMuscles'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idBaiTap'] = this.idBaiTap;
    data['idMucDich'] = this.idMucDich;
    data['tenBaiTap'] = this.tenBaiTap;
    data['hinhBT'] = this.hinhBT;
    data['thongTinBT'] = this.thongTinBT;
    data['hinhMuscles'] = this.hinhMuscles;
    return data;
  }
}
