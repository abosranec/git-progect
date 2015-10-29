Вариант 8
1 Вывести список всех женщин-менеджеров
SELECT lname AS female_menedger
FROM staff
WHERE POSITION='Менеджер' AND SEX='Female'; 
 
2 Определить и вывести максимальную зарплату 
сотрудников в отделении в Гродно.
SELECT MAX(S.SALARY) AS MAX_ZARPLATA
FROM STAFF S, BRANCH B
WHERE B.CITY='Grodno' AND B.BNO=S.BNO;

3 Определить количество осмотров объектов в день. 
Подписать вычисляемое поле как «Количество осмотров в день».
SELECT date1, count(date1) AS kolichestvo_osmotrov_v_den
FROM VIEWING
GROUP BY date1;

4 *Вывести информацию об отделении, где предлагаются в аренду
2-х комнатные квартиры с максимальной средней стоимостью.
SELECT B.city, B.street, B.tel_no AS telephone FROM Branch B 
WHERE B.bno IN 
(
	SELECT bno FROM 
	(	
		SELECT PP.bno, AVG(PP.rent) FROM Property_for_rent PP 
		WHERE PP.rooms = 2 GROUP BY PP.bno 
		HAVING AVG(PP.rent) IN 
		(
			SELECT MAX(AVG(rent)) FROM Property_for_rent 
			WHERE rooms = 2 GROUP BY bno
		)
	)
)