class PermissionModel {
  String? id;
  String? kartId;
  String? izinliAdisoyadi;
  String? izinNedeni;
  String? izinAciklamasi;
  String? baslangicTarihi;
  String? bitisTarihi;
  String? izinDurumu;

  PermissionModel(
      {this.id,
        this.kartId,
        this.izinliAdisoyadi,
        this.izinNedeni,
        this.izinAciklamasi,
        this.baslangicTarihi,
        this.bitisTarihi,
        this.izinDurumu});

  PermissionModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    kartId = json['kart_id'];
    izinliAdisoyadi = json['izinli_adisoyadi'];
    izinNedeni = json['izin_nedeni'];
    izinAciklamasi = json['izin_aciklamasi'];
    baslangicTarihi = json['baslangic_tarihi'];
    bitisTarihi = json['bitis_tarihi'];
    izinDurumu = json['izin_durumu'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['kart_id'] = this.kartId;
    data['izinli_adisoyadi'] = this.izinliAdisoyadi;
    data['izin_nedeni'] = this.izinNedeni;
    data['izin_aciklamasi'] = this.izinAciklamasi;
    data['baslangic_tarihi'] = this.baslangicTarihi;
    data['bitis_tarihi'] = this.bitisTarihi;
    data['izin_durumu'] = this.izinDurumu;
    return data;
  }
}