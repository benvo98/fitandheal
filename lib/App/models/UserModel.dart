class Users {
  int idNguoiDung;
  String tenNguoiDung;
  String tenDangNhap;
  String matKhau;
  String sdt;
  String namSinh;
  String email;

  Users(
      {this.idNguoiDung,
      this.tenNguoiDung,
      this.tenDangNhap,
      this.matKhau,
      this.sdt,
      this.namSinh,
      this.email});

  Users.fromJson(Map<String, dynamic> json) {
    idNguoiDung = json['idNguoiDung'];
    tenNguoiDung = json['tenNguoiDung'];
    tenDangNhap = json['tenDangNhap'];
    matKhau = json['matKhau'];
    sdt = json['sdt'];
    namSinh = json['namSinh'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idNguoiDung'] = this.idNguoiDung;
    data['tenNguoiDung'] = this.tenNguoiDung;
    data['tenDangNhap'] = this.tenDangNhap;
    data['matKhau'] = this.matKhau;
    data['sdt'] = this.sdt;
    data['namSinh'] = this.namSinh;
    data['email'] = this.email;
    return data;
  }
}
