USE Banca_Electrónica;

INSERT INTO Compañía(nombreCompañía) VALUES('Claro');
INSERT INTO Compañía(nombreCompañía) VALUES('Tigo');
INSERT INTO Compañía(nombreCompañía) VALUES('Movistar');

INSERT INTO TipoDeCuenta(nombreTipoDeCueta) VALUES('Monetaria');
INSERT INTO TipoDeCuenta(nombreTipoDeCueta) VALUES('Ahorro');
INSERT INTO TipoDeCuenta(nombreTipoDeCueta) VALUES('Crédito');
INSERT INTO TipoDeCuenta(nombreTipoDeCueta) VALUES('Préstamo');
INSERT INTO TipoDeCuenta(nombreTipoDeCueta) VALUES('Pensión');

INSERT INTO ProveedoresDeServicio(nombreProveedoresServicio, descripción)
VALUES('EEGSA', '2205');
INSERT INTO ProveedoresDeServicio(nombreProveedoresServicio, descripción)
VALUES('Empagua', '2206');
INSERT INTO ProveedoresDeServicio(nombreProveedoresServicio, descripción)
VALUES('Kinal', '2207');
INSERT INTO ProveedoresDeServicio(nombreProveedoresServicio, descripción)
VALUES('Mariano Gálvez', '2208');

INSERT INTO Cuenta(idTipoCuenta, monto) VALUES(2, 570.80);
INSERT INTO Cuenta(idTipoCuenta, monto) VALUES(5, 740.20);
INSERT INTO Cuenta(idTipoCuenta, monto) VALUES(3, 120.50);
INSERT INTO Cuenta(idTipoCuenta, monto) VALUES(4, 430.00);
INSERT INTO Cuenta(idTipoCuenta, monto) VALUES(1, 930.90);

INSERT INTO Clientes(nombre, apellido, dirección, teléfono, idCompañía, género, nacionalidad, identificación, idCuenta)
VALUES('Pedro', 'Pérez', '14av 12-32 z1 Mixco', 16957632, 2, 'Masculino', 'Guatemalteco', 6598784512, 3);
INSERT INTO Clientes(nombre, apellido, dirección, teléfono, idCompañía, género, nacionalidad, identificación, idCuenta)
VALUES('Alberto', 'Sánchez', '5av 0-13 z3 Villa Nueva', 65127845, 1, 'Masculino', 'Guatemalteco', 9578321578, 1);
INSERT INTO Clientes(nombre, apellido, dirección, teléfono, idCompañía, género, nacionalidad, identificación, idCuenta)
VALUES('María', 'Chun', '3av 5-11 z4 Mixco', 98126578, 3, 'Femenino', 'Guatemalteca', 8765193745, 4);
INSERT INTO Clientes(nombre, apellido, dirección, teléfono, idCompañía, género, nacionalidad, identificación, idCuenta)
VALUES('Joaquín', 'Rodríguez', '13av 2-22 z3 Chinautla', 98451345, 2, 'Masculino', 'Guatemalteco', 1306049055, 2);
INSERT INTO Clientes(nombre, apellido, dirección, teléfono, idCompañía, género, nacionalidad, identificación, idCuenta)
VALUES('Alejandra', 'Martínez', '1av 01-03 z6 Villa Nueva', 78650948, 3, 'Femenina', 'Guatemalteca', 1265980575, 5);

INSERT INTO Usuario(nombreUsuario, contraseña, estado, fechaCreación, idCliente)
VALUES('pperez512', 'pedrop123', 'Habilitado', '2021-03-09', 1);
INSERT INTO Usuario(nombreUsuario, contraseña, estado, fechaCreación, idCliente)
VALUES('asanchez418', 'salberto123', 'Habilitado', '2021-02-16', 2);
INSERT INTO Usuario(nombreUsuario, contraseña, estado, fechaCreación, idCliente)
VALUES('mchun614', 'cmaria123', 'Habilitado', '2021-01-15', 3);
INSERT INTO Usuario(nombreUsuario, contraseña, estado, fechaCreación, idCliente)
VALUES('jrodriguez645', 'rjoaquin123', 'Deshabilitado', '2021-04-22', 4);
INSERT INTO Usuario(nombreUsuario, contraseña, estado, fechaCreación, idCliente)
VALUES('amartinez774', 'malejandra123', 'Deshabilitado', '2021-04-21', 5);

INSERT INTO Pagos(fechaPago, idUsuario, idProveedores)
VALUES('2021-06-21', 2, 4);
INSERT INTO Pagos(fechaPago, idUsuario, idProveedores)
VALUES('2021-08-27', 4, 3);
INSERT INTO Pagos(fechaPago, idUsuario, idProveedores)
VALUES('2021-08-13', 1, 2);
INSERT INTO Pagos(fechaPago, idUsuario, idProveedores)
VALUES('2021-07-06', 3, 1);
INSERT INTO Pagos(fechaPago, idUsuario, idProveedores)
VALUES('2021-09-11', 5, 4);