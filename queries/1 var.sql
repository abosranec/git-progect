1) Получить список сотрудников с зарплатой от 200$ до 300$.
SELECT FNAME, LNAME, ADDRESS, TEL_NO AS TELEFONE, POSITION, SALARY
FROM STAFF
WHERE SALARY BETWEEN 200 AND 300;

2) Получить список телефонов сотрудников, 
работающих в офисах Бреста или Минска
SELECT FNAME, LNAME, POSITION, TEL_NO AS TELEFONE
FROM STAFF
WHERE BNO IN (
    SELECT BNO 
    FROM BRANCH
    WHERE CITY IN ('Minsk', 'Brest'));

3) Определить и вывести суммарную и среднюю зарплату сотрудников 
в зависимости от занимаемой ими должности. Подписать 
вычисляемые поля как «Суммарная зарплата» и «Средняя зарплата».
SELECT POSITION AS ДОЛЖНОСТЬ, SUM(SALARY) AS SUM_ZARPLATA, AVG(SALARY) AS AVG_ZARPLATA
FROM STAFF
GROUP BY POSITION;

4) *Вывести должности, по которым суммарная заработная 
плата больше средней.
SELECT POSITION, AVG(SALARY) AS AVG_ZP
FROM STAFF
GROUP BY POSITION
HAVING AVG(SALARY) > (
    SELECT AVG(AVG_ZARPLATA)
    FROM (
    SELECT POSITION, AVG(SALARY) AS AVG_ZARPLATA
    FROM STAFF
    GROUP BY POSITION));

