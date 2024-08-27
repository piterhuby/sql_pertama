create database Perpustakaan_Piter
Create Table Buku
(
kode_buku char(4) not null,
judul_buku varchar(30) not null,
pengarang varchar(20) not null,
penerbit varchar(20) not null,
primary key(kode_buku)
)


Create Table Pengembalian
(
Kode_Pinjam char(4)not null,
kode_buku char(4)not null,
Tgl_Kembali date not null,
Denda Numeric(9,0 )not null,
Primary Key (Kode_Pinjam),
 FOREIGN KEY (kode_buku) REFERENCES Buku (kode_buku)ON UPDATE CASCADE ON DELETE CASCADE
)

Create Table Peminjaman
(
Kode_Pinjam char(4) not null,
NIK char(18)not null,
NIM char(8) not null,
Tgl_Pinjam Date not null,
Primary key (Kode_Pinjam),
FOREIGN KEY (NIK) REFERENCES Karyawan (NIK)ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (NIM) REFERENCES Mahasiswa (NIM)ON UPDATE CASCADE ON DELETE CASCADE
)

create Table Mahasiswa
(
NIM char(8)not null,
Nama_Mhs Varchar(30),
Alamat_Mhs varchar(30)not null,
NoHp_Mhs varchar(15)not null,
Primary key (NIM)
)


Create Table Karyawan
(
NIK Char (18) not null,
Nama_Karyawan varchar(30) not null,
Alamat_Karyawan varchar(30) not null,
NoHp_Karyawan varchar(15) not null,
Jabatan varchar(25) not null,
Primary Key (NIK)
)


insert into Buku values
('B001','Matahari','Terliye','Gramedia'),
('B002','Senja di Alaska','Abellstr 25','Kawah Media'),
('B003','Pantai Pesisir','Noorca M.Massardi','Gramedia'),
('B004','Ketika Cinta Bertasbih','Habiburrahman','Republika'),
('B005','Catur','Blueantwarm','Rainbook Publishing')

insert into Pengembalian values
('P001','B001','2024-08-29','1000'),
('P002','B001','2024-09-26','0'),
('P003','B004','2024-09-02','12500'),
('P004','B005','2024-09-10','23000'),
('P005','B002','2024-09-02','32500'),
('P006','B001','2024-09-15','7500')

insert into Peminjaman values
('P001','NIK001','NIM001','2024-08-23'),
('P002','NIK001','NIM001','2024-08-23'),
('P003','NIK002','NIM002','2024-08-25'),
('P004','NIK001','NIM003','2024-08-26'),
('P005','NIK004','NIM004','2024-08-27'),
('P006','NIK004','NIM004','2024-08-29')

insert into Mahasiswa values
('NIM001','Alesha Rafasya','Jl.Utama No.25','08121356754'),
('NIM002','Faaizar Zahirah','Jl.Guntur Raya No.1','081213567123'),
('NIM003','Fahresi Afsam','Jl.Cenderawasih No.6','08121356754'),
('NIM004','Laviska Lamira','Jl.Merak No.29','081213567345'),
('NIM005','Akhtar Azarein','Jl.Pratama No.10','081213567456'),
('NIM006','Adnan Affandi','Jl.Galunggung No.45','08121356757'),
('NIM007','Adrian Gantari','Jl.Cempaka No.25','08121356758')

insert into Karyawan Values
('NIK001','Aurora Davira ','Jl.Gunung Gede.No.3','08121356751','staff'),
('NIK002','Fayyana Eri','Jl.melati No.12','081213567122','General Manager'),
('NIK003','Barra Emery','Jl.Mawar No.19','08121356753','staff'),
('NIK004','Galen Kalyan','Jl.Guntur No.14','081213567344','Admin'),
('NIK005','Nisar Mahendra','Jl.Anggrek No.7','081213567455','admin')

select * from buku 
select * from Pengembalian 
select * from Peminjaman
select * from Mahasiswa 
select * from Karyawan 

update  karyawan
set Jabatan = 'admin',Alamat_Karyawan ='Jalan Anggrek No.34'
where NIK='NIK005'

Delete from Mahasiswa
where NIM='nim007'

select * from Karyawan
where Jabatan='admin'

update Karyawan
Set NoHp_Karyawan=STUFF(NoHp_Karyawan,1,1,'+62')

select judul_buku,Tgl_Pinjam,Tgl_Kembali,Nama_Mhs 
from Mahasiswa join peminjaman
on Mahasiswa.NIM=Peminjaman.NIM
join Pengembalian
on Pengembalian.Kode_Pinjam=Peminjaman.Kode_Pinjam
JOIN Buku
ON Buku.kode_buku=Pengembalian.kode_buku
WHERE DAY (Tgl_Pinjam)=23

create data daftar hadir rapat
create Table Daftar Hadir
no varchar (4),
nama varchar (30),
jabatan varchar (30),
alamat varchar (30),
keterangan (5)

















