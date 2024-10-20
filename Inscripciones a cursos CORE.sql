INSERT INTO estudiantes (nombre, edad)
				   VALUE("Vicente", 22),
						("Jose", 32),
						("Amari", 23),
						("Julieta", 21),
						("Joseph", 19);
					
INSERT INTO cursos (nombre, duracion)
				   VALUE("Fundamentos Web", 2),
						("Js", 5),
						("Pythom", 15),
						("JAVA", 20);
                        
INSERT INTO inscripciones (id_estudiantes, id_cursos)
				   VALUE(1, 1),
						(1, 2),
						(2, 3),
						(2, 4),
						(3, 1),
						(3, 4),
						(4, 3),
						(4, 4);
                        
SELECT *
FROM estudiantes, cursos, inscripciones
WHERE inscripciones.id_estudiantes = estudiantes.id_estudiantes and
inscripciones.id_cursos = cursos.id_cursos
ORDER BY estudiantes.id_estudiantes ASC;
SELECT *
FROM estudiantes, cursos, inscripciones
WHERE inscripciones.id_estudiantes = estudiantes.id_estudiantes and
inscripciones.id_cursos = cursos.id_cursos and cursos.nombre = "JAVA"
ORDER BY estudiantes.id_estudiantes ASC;

SELECT *
FROM estudiantes, cursos, inscripciones
WHERE inscripciones.id_estudiantes = estudiantes.id_estudiantes and
inscripciones.id_cursos = cursos.id_cursos and estudiantes.nombre = "Vicente"
ORDER BY estudiantes.id_estudiantes ASC;

SELECT cursos.nombre, inscripciones.id_cursos, COUNT(*) AS num_estudiantes
FROM inscripciones 
INNER JOIN cursos ON inscripciones.id_cursos = cursos.id_cursos
GROUP BY inscripciones.id_cursos;

SELECT *
FROM estudiantes left JOIN inscripciones
on inscripciones.id_estudiantes = estudiantes.id_estudiantes;

                        