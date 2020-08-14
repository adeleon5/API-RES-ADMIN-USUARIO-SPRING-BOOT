select 
A.Nombre
,A.Correo
,C.Descripcion
from USUARIO A
LEFT JOIN ASIG_ROL B ON A.Id=B.usuario_id
LEFT JOIN ROL C ON B.rol_id=C.id

select 
A.Nombre
,A.Correo
,C.Descripcion
,E.id IdMenu
,E.Descripcion
,E.Raiz
from USUARIO A
LEFT JOIN ASIG_ROL B ON A.Id=B.usuario_id
LEFT JOIN ROL C ON B.rol_id=C.Id
LEFT JOIN ASIG_ACCESO D ON C.Id=D.rol_id
LEFT JOIN MENU E ON D.menu_id=E.id
where A.id=2

Select 
A.Id
,A.Descripcion
,A.Raiz
,B.Descripcion
,B.Raiz
,B.Id
from 
MENU A 
LEFT JOIN MENU B ON A.Id=B.Raiz
WHERE A.Raiz = 0

SELECT * FROM USUARIO
SELECT * FROM ROL
SELECT * FROM ASIG_ACCESO
SELECT * FROM MENU
--update menu set ruta='/admin' where id=2

