CREATE DATABASE Kelompokdua;

USE Kelompokdua;

CREATE TABLE Kendaraan (
    kendaraan_id INT PRIMARY KEY,
    nama_kendaraan VARCHAR(50),
    jenis_kendaraan VARCHAR(50)
);

CREATE TABLE Pengemudi (
    pengemudi_id INT PRIMARY KEY,
    nama_pengemudi VARCHAR(50),
    umur INT,
    kendaraan_id INT,
    FOREIGN KEY (kendaraan_id) REFERENCES Kendaraan(kendaraan_id)
);

CREATE TABLE Rute (
    rute_id INT PRIMARY KEY,
    nama_rute VARCHAR(50),
    jarak_km INT,
    kendaraan_id INT,
    FOREIGN KEY (kendaraan_id) REFERENCES Kendaraan(kendaraan_id)
);

CREATE TABLE Penumpang (
    penumpang_id INT PRIMARY KEY,
    nama_penumpang VARCHAR(50),
    umur INT,
    rute_id INT,
    FOREIGN KEY (rute_id) REFERENCES Rute(rute_id)
);

INSERT INTO Kendaraan (kendaraan_id, nama_kendaraan, jenis_kendaraan)
VALUES
    (1, 'pagani', 'Mobil'),
    (2, 'ducati', 'Motor'),
    (3, 'transjakarta', 'Bus');

INSERT INTO Pengemudi (pengemudi_id, nama_pengemudi, umur, kendaraan_id)
VALUES
    (1, 'nolan', 35, 1),
    (2, 'timothy', 28, 2),
    (3, 'ronald', 40, 3);

INSERT INTO Rute (rute_id, nama_rute, jarak_km, kendaraan_id)
VALUES
    (1, 'Bandung - Jakarta', 150, 1),
    (2, 'Surabaya - Malang', 80, 2),
    (3, 'Semarang - Yogyakarta', 120, 3);

INSERT INTO Penumpang (penumpang_id, nama_penumpang, umur, rute_id)
VALUES
    (1, 'Juan', 25, 1),
    (2, 'Umar', 30, 2),
    (3, 'abil', 20, 3);

SELECT * FROM Kendaraan;
SELECT * FROM Pengemudi;
SELECT * FROM Rute;
SELECT * FROM Penumpang;