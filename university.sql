/* All'interno della cartellina in allegato troverete un file zip, un'immagine e due file pdf.
Importiamo su phpMyAdmin il database in allegato.
L'immagine rappresenta il diagramma E-R del database.
Nei file pdf troverete delle tracce con cui esercitarvi con le query.
Risolvete prima le query SENZA group by e solo dopo le altre.
Procedete provando su phpMyAdmin fino a trovare la query corretta per ogni traccia, poi copiatela ed incollatela su un file nella stessa cartellina di ieri
Fate un push per ogni query che riuscite a eseguire
PS: Potete mettere le query in un file.sql per approfittare della sintassi "colorata" di VS Code! */

/** SELECT **/
SELECT * 
FROM `students` 
WHERE YEAR(`date_of_birth`) = '1990'

SELECT * 
FROM `courses` 
WHERE `cfu` > 10;

SELECT * 
FROM `students` 
WHERE YEAR(`date_of_birth`) = '1991'

SELECT * 
FROM `courses` 
WHERE `period` = 'I semestre'
AND `year` = 1;

SELECT * 
FROM `exams` 
WHERE `date` = '2020-06-20' 
AND `hour` >= '14:00:00';

SELECT * 
FROM `degrees` 
WHERE `level` = 'magistrale';

/* Count */
SELECT COUNT(*) 
FROM `departments`;

SELECT COUNT(*) 
FROM `teachers` 
WHERE `phone` IS NULL;

/* Group By */
SELECT COUNT(*) 
FROM `students`
GROUP BY `degree_id`;

SELECT COUNT(*) 
FROM `teachers`
GROUP BY `office_address`;

SELECT AVG(vote)
FROM `exams`
GROUP BY `date`;

SELECT COUNT(*)
FROM `degrees`
GROUP BY `department_id`




