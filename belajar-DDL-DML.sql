CREATE DATABASE sekolah;
Query OK, 1 row affected (0.003 sec)

CREATE TABLE siswa(nis CHAR(8)primary key, nama VARCHAR(100), jk CHAR(1), tmp_lahir VARCHAR(50), tgl_lahir DATE, alamat TEXT, kelas VARCHAR(10), nilai FLOAT);
Query OK, 0 rows affected (1.567 sec)

 USE sekolah;
Database changed

DESCRIBE siswa;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| nis       | char(8)      | NO   | PRI | NULL    |       |
| nama      | varchar(100) | YES  |     | NULL    |       |
| jk        | char(1)      | YES  |     | NULL    |       |
| tmp_lahir | varchar(50)  | YES  |     | NULL    |       |
| tgl_lahir | date         | YES  |     | NULL    |       |
| alamat    | text         | YES  |     | NULL    |       |
| kelas     | varchar(10)  | YES  |     | NULL    |       |
| nilai     | float        | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (0.205 sec)

show databases;
+--------------------+
| Database           |
+--------------------+
| db_fariz           |
| db_kwu             |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| sekolah            |
| test               |
+--------------------+
8 rows in set (0.002 sec)

MariaDB [sekolah]>  INSERT INTO siswa VALUES('12100725', 'SHABYAN DWI JUAN ARDIANSYAH', 'L', 'Isekai', '2005-01-23', 'Kalijati', '11 RPL 1', '90.85');
Query OK, 1 row affected (0.137 sec)

MariaDB [sekolah]>  INSERT INTO siswa VALUES('12100778', 'TASYA AMELIA', 'P', 'Genoa', '2005-01-24', 'Sadawarna', '11 RPL 1', '90.85');
Query OK, 1 row affected (0.069 sec)

MariaDB [sekolah]>  INSERT INTO siswa VALUES('12100823', 'WANANDA DILA ZAHRA', 'P', 'Matera', '2005-01-25', 'Dawuan', '11 RPL 1', '90.85');
Query OK, 1 row affected (0.194 sec)

MariaDB [sekolah]>  INSERT INTO siswa VALUES('12100848', 'YUFA GINA MARYAFA', 'P', 'Genova', '2005-01-26', 'Binong', '11 RPL 1', '90.85');
Query OK, 1 row affected (0.107 sec)

MariaDB [sekolah]>  INSERT INTO siswa VALUES('12100864', 'ZUNADEA KUSMIANDITA SUNTORO', 'L', 'Arab', '2005-01-27', 'Sadawarna', '11 RPL 1', '90.85');
Query OK, 1 row affected (0.138 sec)

MariaDB [sekolah]> UPDATE siswa SET tmp_lahir="BANDUNG" WHERE nis="12100274";
Query OK, 1 row affected (0.069 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> UPDATE siswa SET tgl_lahir="2005-05-05", alamat="Binong" WHERE nis="12100274";
Query OK, 1 row affected (0.144 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> DELETE FROM siswa WHERE nis="12100274";
Query OK, 1 row affected (0.163 sec)


MariaDB [sekolah]> select * from siswa;
+----------+-----------------------------+------+--------------+------------+---------------+----------+-------+
| nis      | nama                        | jk   | tmp_lahir    | tgl_lahir  | alamat        | kelas    | nilai |
+----------+-----------------------------+------+--------------+------------+---------------+----------+-------+
| 12100022 | AEF ADITIA                  | L    | Bandung      | 2005-02-09 | Cerelek       | 11 RPL 1 | 77.78 |
| 12100053 | ALYA ELIDHIYA               | P    | Subang       | 2006-04-16 | Cibogo        | 11 RPL 1 |    99 |
| 12100086 | ARIEZTO ZUCOV               | L    | Bandung      | 2005-12-23 | Cidahu        | 11 RPL 1 | 77.75 |
| 12100095 | ASEP RIZKI JULIANSYAH       | L    | Chicago      | 2006-01-08 | Kalijati      | 11 RPL 1 | 67.75 |
| 12100098 | ARZENNA HAQI MUHAMMAD       | L    | Palermo      | 2005-01-22 | Sukamelang    | 11 RPL 1 | 67.85 |
| 12100148 | DAVID LUTFI                 | L    | Chicago      | 2005-02-12 | Pagaden       | 11 RPL 1 | 57.75 |
| 12100217 | EBEN HEZER WANGSADJAJA      | L    | Michigan     | 2005-03-13 | Kalijati      | 11 RPL 1 | 57.75 |
| 12100218 | EGAN WIRYAWAN               | L    | Puerto Rico  | 2005-04-14 | Perum         | 11 RPL 1 | 97.75 |
| 12100219 | EGI RENALDI                 | L    | Akron        | 2005-05-15 | Manyingsal    | 11 RPL 1 | 97.75 |
| 12100236 | EPI HALIMAH                 | P    | Kalimantan   | 2005-06-16 | Pagaden Barat | 11 RPL 1 | 78.75 |
| 12100249 | FADHL GAVINDAFFA ABDULLAH   | L    | Las Vegas    | 2005-07-17 | Tonggoh       | 11 RPL 1 | 77.75 |
| 12100268 | FARIZ FADLI RAFIUDIN        | L    | Jogja        | 2005-06-22 | Belendung     | 11 RPL 1 |   100 |
| 12100276 | FIRDAUS WIGUNA              | L    | Manchester   | 2005-08-24 | Perumnas      | 11 RPL 1 | 87.75 |
| 12100281 | HAIKAL FADHILAH IBRAHIM     | L    | Subang       | 2005-11-07 | Subang        | 11 RPL 1 |   100 |
| 12100293 | GALIH AKBAR MAULANA         | L    | Tokyo        | 2005-09-01 | Cijambe       | 11 RPL 1 | 98.85 |
| 12100307 | HASBI DHIYA FARHANSYAH      | L    | Merseyside   | 2005-10-10 | BTN Gembor    | 11 RPL 1 | 77.85 |
| 12100340 | IQBAL NAUFAL HAKIM          | L    | Buenos Aires | 2005-01-10 | Cinangsi      | 11 RPL 1 | 77.85 |
| 12100362 | KARTIKA SARIDEWI            | P    | Subang       | 2005-08-02 | Tonggoh       | 11 RPL 1 | 95.71 |
| 12100410 | M.IKBAL SYAHPUTRA           | L    | Turin        | 2005-01-11 | Kodim         | 11 RPL 1 | 77.85 |
| 12100419 | M.DZAKY FIRDAUS             | L    | Manchester   | 2005-01-11 | ITALIA        | 11 RPL 1 | 76.85 |
| 12100452 | MOHAMMAD INDRA ERDIN        | L    | Milan        | 2005-01-12 | Pagaden       | 11 RPL 1 | 90.85 |
| 12100476 | MUHAMMAD WAHYUDIN SYAWALI   | L    | Roma         | 2005-01-13 | Manyingsal    | 11 RPL 1 | 70.85 |
| 12100497 | MUTHIA ZAHRA RUKMANA        | P    | venice       | 2005-01-14 | Tanjungsiang  | 11 RPL 1 | 70.85 |
| 12100531 | NAZWA ANGGINA               | P    | Firenzie     | 2005-01-15 | Dangdeur      | 11 RPL 1 | 77.85 |
| 12100563 | NURUL EKA MARYANA           | P    | Napoli       | 2005-01-16 | Subang        | 11 RPL 1 | 87.85 |
| 12100614 | RENALDI NURMAZID            | L    | Torino       | 2005-01-17 | Wanareja      | 11 RPL 1 | 97.85 |
| 12100662 | RIZKI GIANT SEPANGGA        | L    | Georgia      | 2005-01-18 | Cigadung      | 11 RPL 1 | 80.85 |
| 12100670 | RIZKLI CATUR MADANI         | L    | Torino       | 2005-01-19 | Cibogo        | 11 RPL 1 | 80.85 |
| 12100673 | ROFI ANUGRAH FIRDAUS        | L    | Bologna      | 2005-01-20 | Cigadung      | 11 RPL 1 | 78.85 |
| 12100700 | SANDI ADI PRATAMA           | L    | Venesia      | 2005-01-21 | Sembung       | 11 RPL 1 | 77.85 |
| 12100714 | SELLY RIZKI APRILIA         | P    | Verona       | 2005-01-22 | Jalancagak    | 11 RPL 1 | 90.85 |
| 12100725 | SHABYAN DWI JUAN ARDIANSYAH | L    | Isekai       | 2005-01-23 | Kalijati      | 11 RPL 1 | 90.85 |
| 12100778 | TASYA AMELIA                | P    | Genoa        | 2005-01-24 | Sadawarna     | 11 RPL 1 | 90.85 |
| 12100823 | WANANDA DILA ZAHRA          | P    | Matera       | 2005-01-25 | Dawuan        | 11 RPL 1 | 90.85 |
| 12100848 | YUFA GINA MARYAFA           | P    | Genova       | 2005-01-26 | Binong        | 11 RPL 1 | 90.85 |
| 12100864 | ZUNADEA KUSMIANDITA SUNTORO | L    | Arab         | 2005-01-27 | Sadawarna     | 11 RPL 1 | 90.85 |
+----------+-----------------------------+------+--------------+------------+---------------+----------+-------+
36 rows in set (0.001 sec)