class AnnouncementModel {
  String? duyuruBasligi;
  String? duyuruIcerigi;
  String? duyuruTarihi;

  AnnouncementModel({this.duyuruBasligi, this.duyuruIcerigi, this.duyuruTarihi});

  AnnouncementModel.fromJson(Map<String, dynamic> json) {
    duyuruBasligi = json['duyuru_basligi'];
    duyuruIcerigi = json['duyuru_icerigi'];
    duyuruTarihi = json['duyuru_tarihi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['duyuru_basligi'] = this.duyuruBasligi;
    data['duyuru_icerigi'] = this.duyuruIcerigi;
    data['duyuru_tarihi'] = this.duyuruTarihi;
    return data;
  }
}