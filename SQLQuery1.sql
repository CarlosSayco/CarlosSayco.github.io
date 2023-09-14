create database SaycoRecuperacion
go 

Create table CarteraBBVA (
Numero_de_Credito Varchar(500) primary Key,
Numero_de_Creditos INT,
Nombre_Completo VARCHAR(100),
RFC VARCHAR(13),
Direccion1 VARCHAR(200),
Direccion2 VARCHAR(200),
Codigo_Postal INT,
Telefono1 VARCHAR(200),
Telefono2 VARCHAR(200),
Email VARCHAR(200),
SCA VARCHAR(500),
MC VARCHAR(500)
)

Create table CarterasHSBC(
Numero_de_Credito Varchar(500) primary Key,
Numero_de_Creditos INT,
Nombre_Completo VARCHAR(100),
RFC VARCHAR(13),
Direccion1 VARCHAR(200),
Direccion2 VARCHAR(200),
Codigo_Postal INT,
Telefono1 VARCHAR(200),
Telefono2 VARCHAR(200),
Email VARCHAR(200)
)

Create table CarteraAutos(
Numero_de_Credito Varchar(500) primary Key,
Numero_de_Creditos INT,
Nombre_Completo VARCHAR(100),
RFC VARCHAR(13),
Direccion1 VARCHAR(200),
Direccion2 VARCHAR(200),
Codigo_Postal INT,
Telefono1 VARCHAR(200),
Telefono2 VARCHAR(200),
Email VARCHAR(200)
)

Insert into CarteraBBVA(Numero_de_Credito,Numero_de_Creditos,Nombre_Completo,RFC,Direccion1,Direccion2,Codigo_Postal,Telefono1,Telefono2,Email,SCA,MC)
Values(00744465689670193841,0,'GARCIA CANTU GABRIEL ANGEL','GACG810724DW7','C PASEO DE LAS FLORES 9910 D JUAREZ CHIHUAHUA','Av de la Raza 6364, Del Futuro, 32519 Cd Juárez, Chih.',32519,'6564092680 EXT. 25189(oficina de enlace del diputado)','6564094329(oficina del congreso, donde labora)','gabrielgarciacantu05@gmail.com',' $93,467.07 
',' $18,693.41')


select * from CarteraBBVA 
