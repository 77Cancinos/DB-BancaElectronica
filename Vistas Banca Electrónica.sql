USE Banca_Electrónica;

CREATE VIEW VistaCompañía AS
SELECT c.idCompañía AS 'ID', c.nombreCompañía AS 'Compañía' FROM Compañía AS c;

SELECT * FROM Vista Compañía;

CREATE VIEW VistaTipoCuenta AS
SELECT t.idTipoDeCuenta AS 'ID', t.nombreTipoDeCueta AS 'Tipo de Cuenta' FROM TipoDeCuenta AS t;

SELECT * FROM VisyaTipoCuenta;

CREATE VIEW VistaProveedores AS
SELECT p.idProveedores AS 'ID', p.nombreProveedoresServicio AS 'Proveedor de servicio', p.descripción AS 'Descripción' FROM ProveedoresDeServicio AS p;

SELECT * FROM VistaProveedores;

CREATE VIEW VistaCuentas AS
SELECT ct.idCuenta AS 'ID', tc.nombreTipoDeCueta AS 'Tipo de Cuenta', ct.monto AS 'Monto' FROM Cuenta AS ct
INNER JOIN TipoDeCuenta AS tc ON ct.idTipoCuenta = tc.idTipoDeCuenta;

SELECT * FROM VistaCuentas;

CREATE VIEW VistaClientes AS
SELECT concat(cl.nombre, ' ', cl.apellido) AS 'Nombre y Apellido',
cl.dirección AS 'Dirección', cl.teléfono AS 'No. Teléfono',
cp.nombreCompañía AS 'Compañía', cl.género AS 'Género',
cl.nacionalidad AS 'Nacionalidad', cl.identificación AS 'DPI',
ct.monto AS 'Monto de la cuenta'
FROM Clientes AS cl
INNER JOIN Compañía AS cp ON cl.idCompañía = cp.idCompañía
INNER JOIN Cuenta AS ct ON cl.idCuenta = ct.idCuenta;

SELECT * FROM VistaClientes;

CREATE VIEW VistaUsuarios AS
SELECT u.nombreUsuario, u.contraseña, u.estado, u.fechaCreación,
concat(c.nombre, ' ', c.apellido) AS 'Nombre y Apellido del Cliente'
FROM Usuario AS u
INNER JOIN Clientes AS c ON u.idCliente = c.idCliente;

SELECT * FROM VistaUsuarios;

CREATE VIEW VistaPagos AS
SELECT p.idPago AS 'ID', p.fechaPago AS 'Fecha del pago',
u.nombreUsuario AS 'Nombre del usuario responsable',
ps.nombreProveedoresServicio AS 'Proveedor de Servicio'
FROM Pagos AS p
INNER JOIN Usuario AS u ON p.idUsuario = u.idUsuario
INNER JOIN ProveedoresDeServicio AS ps ON p.idProveedores = ps.idProveedores;

SELECT * FROM VistaPagos;

CREATE VIEW vistaPagosMayoresA_300 AS
SELECT c.monto AS 'Montos' FROM Cuenta AS c WHERE c.monto >= 300.00;

SELECT * FROM vistaPagosMayoresA_300;