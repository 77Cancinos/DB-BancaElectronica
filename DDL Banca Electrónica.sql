CREATE DATABASE Banca_Electrónica;
USE Banca_Electrónica;

CREATE TABLE Compañía(
	idCompañía INT auto_increment primary key NOT NULL,
    nombreCompañía VARCHAR(25) NOT NULL
);

CREATE TABLE TipoDeCuenta(
	idTipoDeCuenta INT auto_increment primary key NOT NULL,
    nombreTipoDeCueta VARCHAR(25) NOT NULL
);

CREATE TABLE ProveedoresDeServicio(
	idProveedores INT auto_increment primary key NOT NULL,
    nombreProveedoresServicio VARCHAR(25) NOT NULL,
    descripción VARCHAR(100) NOT NULL
);

CREATE TABLE Cuenta(
	idCuenta INT auto_increment primary key NOT NULL,
    idTipoCuenta INT NOT NULL,
    monto DECIMAL(5,2) NOT NULL,
    foreign key(idTipoCuenta) references TipoDeCuenta(idTipoDeCuenta)
);

CREATE TABLE Clientes(
	idCliente INT auto_increment primary key NOT NULL,
    nombre VARCHAR(15) NOT NULL,
    apellido VARCHAR(15) NOT NULL,
    dirección VARCHAR(25) NOT NULL,
    teléfono INT NOT NULL,
    idCompañía INT NOT NULL,
    género VARCHAR(15) NOT NULL,
    nacionalidad VARCHAR(15) NOT NULL,
    identificación bigint NOT NULL,
    idCuenta INT NOT NULL,
    foreign key(idCompañía) references Compañía(idCompañía),
    foreign key(idCuenta) references Cuenta(idCuenta)
);

CREATE TABLE Usuario(
	idUsuario INT auto_increment primary key NOT NULL,
    nombreUsuario VARCHAR(15) NOT NULL,
    contraseña VARCHAR(20) NOT NULL,
    estado VARCHAR(15) NOT NULL,
    fechaCreación DATE NOT NULL,
    idCliente INT NOT NULL,
    foreign key(idCliente) references Clientes(idCliente)
);

CREATE TABLE Pagos(
	idPago INT auto_increment primary key NOT NULL,
    fechaPago DATE NOT NULL,
    idUsuario INT NOT NULL,
    idProveedores INT NOT NULL,
    foreign key(idUsuario) references Usuario(idUsuario),
    foreign key(idProveedores) references ProveedoresDeServicio(idProveedores)
);