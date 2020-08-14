create table USUARIO(
Id int identity primary key
,Nombre nvarchar(250) not null
,Clave nvarchar(50) not null
,Correo nvarchar(50) not null
,Activo nvarchar(1) not null
);
go

create table MENU(
Id int identity primary key
,Descripcion nvarchar(300) not null
,Ruta nvarchar(300) not null
,Icono nvarchar(300)
,Raiz int not null
);
go 

create table ROL(
Id int identity primary key
,Descripcion nvarchar(150)
);
go

create table ASIG_ROL(
usuario_id int not null
,rol_id int not null
--,Primary Key usaurio_id 
--,Primary key rol_id
,Constraint FK_IDUSR_ASIGROL FOREIGN KEY (usuario_id) REFERENCES USUARIO(Id)
,Constraint FK_IDROL_ASIGROL FOREIGN KEY (rol_id) REFERENCES ROL(Id)
);
go

create table ASIG_ACCESO(
menu_id int not null 
,rol_id int not null
--,Primary Key menu_id
--,Primary Key rol_id
,Constraint FK_IDMENU_ASIGACCESO Foreign Key (menu_id) References MENU(Id)
,Constraint FK_IDROL_ASIGACCESO Foreign Key (rol_id) References ROL(Id)
 );