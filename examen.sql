CREATE database examen;
use examen;
create table pacientes(
	id_paciente int(10) auto_increment,
	telefono int(10),
	primary key (id_paciente)
);

CREATE table empleados(
  id_empleado int(10) auto_increment,
  tipo varchar(20), 
  ats varchar(20),
  primary key (id_empleado)
);

CREATE table medicos(
	tipo varchar(20),
	id_medico int(10) auto_increment,
	id_paciente int(10),
	horario_consulta int(20),
    perido_inicio date,
    perido_fin date,
	primary key (id_medico),
	foreign key (id_paciente) references pacientes(id_paciente)
);

CREATE table vacaciones(
	fecha_inicio date,
	fecha_fin date,
	id_empleado int(10), 
	id_medico int(10),
	foreign key (id_empleado) references empleados(id_empleado),
	foreign key (id_medico) references medicos(id_medico)
);

INSERT INTO empleados (id_empleado , tipo, ats) VALUES 
(10, 'ax_enfermeria', 'si'),
(null,'ax_enfermeria', 'si' ),
(null,'ax_enfermeria', 'si'),
(null,'ax_enfermeria', 'si' ),
(null,'ax_enfermeria', 'si'),
(null,'celador', 'no' ),
(null,'celador', 'no' ),
(null,'celador', 'no' ),
(null,'celador', 'no' ),
(null,'administrativo', 'si' ),
(null,'administrativo', 'si' ),
(null,'administrativo', 'si' ),
(null,'administrativo', 'si' ),
(null,'administrativo', 'si' );


SELECT *
from empleados e ;

INSERT INTO pacientes (id_paciente, telefono) VALUES 
(200, '675362'),
(null,'231231'),
(null,'1231231'),
(null,'4564654'),
(null,'153151'),
(null,'4654654'),
(null,'3456456'),
(null,'4654654'),
(null,'68648454'),
(null,'78789784'),
(null, '874864'),
(null,'545612'),
(null,'5456456');

SELECT *
from pacientes;


INSERT into medicos(id_medico,tipo,id_paciente,horario_consulta,perido_inicio,perido_fin) values 
(100,'titular','200','30', null, null),
(null,'titular','203','20', null, null),
(null,'titular','201','40', null, null)

INSERT into medicos(id_medico,tipo,id_paciente,horario_consulta,perido_inicio,perido_fin) values 
(null,'titular','200','20', null, null),
(null,'sustituto','203','20', '2024-04-10', '2024-05-10'),
(null,'sustituto','201','40', '2024-04-10', '2024-05-10'),
(null,'sustituto','200','20', '2024-04-10', '2024-05-10'),
(null,'sustituto','202','20', '2024-04-10', '2024-05-10'),
(null,'interinos','208','20', null, null),
(null,'interinos','209','20', null, null),
(null,'interinos','210','20', null, null),
(null,'interinos','211','20', null, null);

SELECT *
from medicos;

INSERT into vacaciones(fecha_inicio, fecha_fin ,id_empleado,id_medico)
-- empleado
('2025-02-04', '2025-02-06', '11', null)
('2025-02-07', '2025-02-09', '12', null),
('2025-03-08', '2025-04-04', '12', null),
('2025-06-02', '2025-06-04', '11', null),
('2025-02-04', '2025-02-06', '11', null),

-- medicos
('2025-02-07', '2025-02-09', null,'100' ),
('2025-03-08', '2025-04-04', '101', null),
('2025-06-02', '2025-06-04', '102', null),
('2025-02-07', '2025-02-09', '111', null),
('2025-03-08', '2025-04-04', '109', null),
('2025-06-02', '2025-06-04', '108', null);

-- 2
SELECT *
from  vacaciones v;

-- 3 
SELECT *
FROM medicos m 
ORDER by m.horario_consulta DESC ; 





