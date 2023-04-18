/*
 Navicat Premium Data Transfer

 Source Server         : aidashboard
 Source Server Type    : MongoDB
 Source Server Version : 60005
 Source Host           : localhost:27017
 Source Schema         : PetShop

 Target Server Type    : MongoDB
 Target Server Version : 60005
 File Encoding         : 65001

 Date: 18/04/2023 12:23:33
*/


// ----------------------------
// Collection structure for dat-cho
// ----------------------------
db.getCollection("dat-cho").drop();
db.createCollection("dat-cho");

// ----------------------------
// Documents of dat-cho
// ----------------------------
db.getCollection("dat-cho").insert([ {
    _id: "dc1",
    email: "thoty22@gmail.com",
    thongTinDatChos: [
        {
            dichVu: "dv1",
            giaDichVu: 100
        }
    ],
    thoiGian: ISODate("2018-12-10T13:49:51.141Z"),
    canDan: "Khong co",
    trangThaiDatCho: "DAT_CHO",
    trangThai: true,
    _class: "com.stc.petlove.entities.DatCho"
} ]);

// ----------------------------
// Collection structure for dich-vu
// ----------------------------
db.getCollection("dich-vu").drop();
db.createCollection("dich-vu");

// ----------------------------
// Documents of dich-vu
// ----------------------------
db.getCollection("dich-vu").insert([ {
    _id: "dv1",
    maDichVu: "mdv1",
    tenDichVu: "Dich vu 1",
    noiDung: "Cho pet an",
    giaDichVus: [
        {
            loaiThuCung: "tc1",
            canNang: 10,
            gia: 100
        },
        {
            loaiThuCung: "tc2",
            canNang: 10,
            gia: 200
        }
    ],
    trangThai: true,
    _class: "com.stc.petlove.entities.DichVu"
} ]);

// ----------------------------
// Collection structure for loai-thu-cung
// ----------------------------
db.getCollection("loai-thu-cung").drop();
db.createCollection("loai-thu-cung");

// ----------------------------
// Documents of loai-thu-cung
// ----------------------------
db.getCollection("loai-thu-cung").insert([ {
    _id: "tc1",
    maLoaiThuCung: "mtc1",
    tenLoaiThuCung: "Meo",
    trangThai: true,
    _class: "com.stc.petlove.entities.LoaiThuCung"
} ]);
db.getCollection("loai-thu-cung").insert([ {
    _id: "tc2",
    maLoaiThuCung: "mtc2",
    tenLoaiThuCung: "Cho",
    trangThai: true,
    _class: "com.stc.petlove.entities.LoaiThuCung"
} ]);

// ----------------------------
// Collection structure for user
// ----------------------------
db.getCollection("user").drop();
db.createCollection("user");

// ----------------------------
// Documents of user
// ----------------------------
db.getCollection("user").insert([ {
    _id: "tk1",
    name: "thoty",
    email: "thoty@gmail.com",
    password: "thoty@gmail.com",
    dienThoai: "094513",
    roles: [
        "ADMIN"
    ],
    trangThai: true,
    _class: "com.stc.petlove.entities.TaiKhoan"
} ]);
db.getCollection("user").insert([ {
    _id: "tk2",
    name: "baonguyen",
    email: "baonguyen@gmail.com",
    password: "baonguyen@gmail.com",
    dienThoai: "094513",
    roles: [
        "CUSTOMER"
    ],
    trangThai: true,
    _class: "com.stc.petlove.entities.TaiKhoan"
} ]);
