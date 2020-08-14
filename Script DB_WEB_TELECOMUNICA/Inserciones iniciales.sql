INSERT INTO USUARIO(nombre, clave, correo, activo) values('demo','12345','demo@gmail.com','S')
GO
INSERT INTO ROL(Descripcion) VALUES('SUPER USUARIO')
GO
INSERT INTO ASIG_ROL(usuario_id, rol_id) VALUES(1,1)
GO
INSERT INTO MENU(Descripcion,Ruta,Icono,Raiz) VALUES ('Gestión de usuarios','home/admin','',0)
INSERT INTO MENU(Descripcion,Ruta,Icono,Raiz) VALUES ('Gestión de menú y roles','home/menu','',0)
INSERT INTO MENU(Descripcion,Ruta,Icono,Raiz) VALUES ('Opcion #1','home','',0)
INSERT INTO MENU(Descripcion,Ruta,Icono,Raiz) VALUES ('Opcion #2','home','',0)
INSERT INTO MENU(Descripcion,Ruta,Icono,Raiz) VALUES ('Opcion #3','home','',0)
GO
INSERT INTO ASIG_ACCESO(menu_id,rol_id) VALUES(1,1)
INSERT INTO ASIG_ACCESO(menu_id,rol_id) VALUES(2,1)
INSERT INTO ASIG_ACCESO(menu_id,rol_id) VALUES(3,1)
INSERT INTO ASIG_ACCESO(menu_id,rol_id) VALUES(4,1)
INSERT INTO ASIG_ACCESO(menu_id,rol_id) VALUES(5,1)

