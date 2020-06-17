class Workout {
  int idWorkout;
  String tenWorkout;
  String hinhAnh;
  String thongTinWK;
  String hinhNen;

  Workout(
      {this.idWorkout,
      this.tenWorkout,
      this.hinhAnh,
      this.thongTinWK,
      this.hinhNen});

  Workout.fromJson(Map<String, dynamic> json) {
    idWorkout = json['idWorkout'];
    tenWorkout = json['tenWorkout'];
    hinhAnh = json['hinhAnh'];
    thongTinWK = json['thongTinWK'];
    hinhNen = json['hinhNen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idWorkout'] = this.idWorkout;
    data['tenWorkout'] = this.tenWorkout;
    data['hinhAnh'] = this.hinhAnh;
    data['thongTinWK'] = this.thongTinWK;
    data['hinhNen'] = this.hinhNen;
    return data;
  }
}
