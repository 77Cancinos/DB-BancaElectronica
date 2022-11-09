USE Banca_Electrónica;

DELIMITER $$
CREATE PROCEDURE CrearCompañía(
	in nombreC VARCHAR(25)
) BEGIN
INSERT INTO Compañía(nombreCompañía)
VALUES(nombreC);
END$$

CALL CrearCompañía();

DELIMITER $$
CREATE PROCEDURE ActualizarCompañía(
	in id int,
	in nombreC varchar(25)
) BEGIN
UPDATE Compañía SET nombreCompañía=nombreC
WHERE idCompañía=id;
END$$

CALL ActualizarCompañía();
SELECT * FROM Compañía;

DELIMITER $$
CREATE PROCEDURE EliminarCompañía(
	in id INT
) BEGIN
DELETE FROM Compañía WHERE idCompañía=id;
END$$
CALL EliminarCompañía();




DELIMITER $$
CREATE PROCEDURE CrearTipoDeCuenta(
	in nombreTipoCuenta VARCHAR(25)
) BEGIN
INSERT INTO TipoDeCuenta(nombreTipoDeCueta)
VALUES(nombreTipoCuenta);
END$$

CALL CrearTipoDeCuenta();

DELIMITER $$
CREATE PROCEDURE ActualizarTipoDeCuenta(
	in id INT,
	in nuevoNombreTipoCuenta VARCHAR(25)
) BEGIN
UPDATE TipoDeCuenta SET nombreTipoDeCueta=nuevoNombreTipoCuenta
WHERE idTipoDeCuenta=id;
END$$

CALL ActualizarTipoDeCuenta();
SELECT * FROM TipoDeCuenta;

DELIMITER $$
CREATE PROCEDURE EliminarTipoDeCuenta(
	in id INT
) BEGIN
DELETE FROM TipoDeCuenta WHERE idTipoDeCuenta=id;
END$$
CALL EliminarTipoDeCuenta();




DELIMITER $$
CREATE PROCEDURE CrearProveedoresDeServicio(
	in nombreProveedoresServicio VARCHAR(25),
    in descripción VARCHAR(100)
) BEGIN
INSERT INTO ProveedoresServicio(nombreProveedoresServicio, descripción)
VALUES(nombreProveedoresServicio, descripción);
END$$

CALL CrearProveedoresDeServicio();

DELIMITER $$
CREATE PROCEDURE ActualizarProveedoresDeServicio(
	in id INT,
	in nuevoNombreProveedoresDeServicio VARCHAR(25),
    in nuevaDescripción VARCHAR(100)
) BEGIN
UPDATE ProveedoresDeServicio SET nombreProveedoresServicio=nuevoNombreProveedoresDeServicio, descripción=nuevaDescripción
WHERE idProveedores=id;
END$$

CALL ActualizarProveedoresDeServicio();
SELECT * FROM ProveedoresDeServicio;

DELIMITER $$
CREATE PROCEDURE EliminarProveedoresDeServicio(
	in id INT
) BEGIN
DELETE FROM ProveedoresDeServicio WHERE idProveedores=id;
END$$
CALL EliminarProveedoresDeServicio();




DELIMITER $$
CREATE PROCEDURE CrearCuenta(
	in idTipoCuenta INT,
    in monto DECIMAL(5,2)
) BEGIN
INSERT INTO Cuenta(idTipoCuenta, monto)
VALUES(idTipoCuenta, monto);
END$$

CALL CrearCuenta();

DELIMITER $$
CREATE PROCEDURE ActualizarCuenta(
	in id INT,
	in nuevoIdTipoCuenta INT,
    in nuevoMonto DECIMAL(5,2)
) BEGIN
UPDATE Cuenta SET idTipoCuenta=nuevoIdTipoCuenta, monto=nuevoMonto
WHERE idCuenta=id;
END$$

CALL ActualizarCuenta();
SELECT * FROM Cuenta;

DELIMITER $$
CREATE PROCEDURE EliminarCuenta(
	in id INT
) BEGIN
DELETE FROM Cuenta WHERE idCuenta=id;
END$$
CALL EliminarCuenta();




DELIMITER $$
CREATE PROCEDURE CrearCliente(
	in nombre VARCHAR(15),
    in apellido VARCHAR(15),
    in dirección VARCHAR(25),
    in teléfono INT,
    in idCompañía INT,
    in género VARCHAR(15),
    in nacionalidad VARCHAR(15),
    in identificación bigint,
    in idCuenta INT
) BEGIN
INSERT INTO Clientes(nombre, apellido, dirección, teléfono, idCompañía, género, nacionalidad, identificación, idCuenta)
VALUES(nombre, apellido, dirección, teléfono, idCompañía, género, nacionalidad, identificación, idCuenta);
END$$

CALL CrearCliente();

DELIMITER $$
CREATE PROCEDURE ActualizarCliente(
	in id INT,
	in nuevoNombre VARCHAR(15),
    in nuevoApellido VARCHAR(15),
    in nuevaDirección VARCHAR(25),
    in nuevoTeléfono INT,
    in nuevaIdCompañía INT,
    in nuevoGénero VARCHAR(15),
    in nuevaNacionalidad VARCHAR(15),
    in nuevaIdentificación bigint,
    in nuevaIdCuenta INT
) BEGIN
UPDATE Clientes SET nombre=nuevoNombre, apellido=nuevoApellido, dirección=nuevaDirección, teléfono=nuevoTeléfono, idCompañía=nuevaIdCompañía, género=nuevoGénero, nacionalidad=nuevaNacionalidad, identificación=nuevaIdentificación, idCuenta=nuevaIdCuenta
WHERE idCliente=id;
END$$

CALL ActualizarCliente();
SELECT * FROM Clientes;

DELIMITER $$
CREATE PROCEDURE EliminarCliente(
	in id INT
) BEGIN
DELETE FROM Clientes WHERE idCliente=id;
END$$
CALL EliminarCliente();




DELIMITER $$
CREATE PROCEDURE CrearUsuario(
    in nombreUsuario VARCHAR(15),
    in contraseña VARCHAR(20),
    in estado VARCHAR(15),
    in fechaCreación DATE,
    in idCliente INT
) BEGIN
INSERT INTO Usuario(nombreUsuario, contraseña, estado, fechaCreación, idCliente)
VALUES(nombreUsuario, contraseña, estado, fechaCreación, idCliente);
END$$

CALL CrearUsuario();

DELIMITER $$
CREATE PROCEDURE ActualizarUsuario(
	in id INT,
	in nuevoNombreUsuario VARCHAR(15),
    in nuevaContraseña VARCHAR(20),
    in nuevoEstado VARCHAR(15),
    in nuevaFechaCreación DATE,
    in nuevaIdCliente INT
) BEGIN
UPDATE Usuario SET nombreUsuario=nuevoNombreUsuario, contraseña=nuevaContraseña, estado=nuevoEstado, fechaCreación=nuevaFechaCreación, idCliente=nuevaIdCliente
WHERE idUsuario=id;
END$$

CALL ActualizarUsuario();
SELECT * FROM Usuario;

DELIMITER $$
CREATE PROCEDURE EliminarUsuario(
	in id INT
) BEGIN
DELETE FROM Usuario WHERE idUsuario=id;
END$$
CALL EliminarUsuario();




DELIMITER $$
CREATE PROCEDURE CrearPago(
	in fechaPago DATE,
    in idUsuario INT,
    in idProveedores INT
) BEGIN
INSERT INTO Pagos(fechaPago, idUsuario, idProveedores)
VALUES(fechaPago, idUsuario, idProveedores);
END$$

CALL CrearPago();

DELIMITER $$
CREATE PROCEDURE ActualizarPago(
	in id INT,
	in nuevaFechaPago DATE,
    in nuevaIdUsuario INT,
    in nuevaIdProveedores INT
) BEGIN
UPDATE Pagos SET fechaPago=nuevaFechaPago, idUsuario=nuevaIdUsuario, idProveedores=nuevaIdProveedores
WHERE idPago=id;
END$$

CALL ActualizarPago();
SELECT * FROM Pagos;

DELIMITER $$
CREATE PROCEDURE EliminarPago(
	in id INT
) BEGIN
DELETE FROM Pagos WHERE idPago=id;
END$$
CALL EliminarPago();