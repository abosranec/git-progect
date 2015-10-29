1) Определить адреса всех 3-х комнатных квартир, 
предлагаемых в аренду.

2) Получить список арендаторов, осматривавших объекты аренды 
в 2009 году.
SELECT R.*
FROM VIEWING V, RENTER R
WHERE V.RNO=R.RNO AND TO_CHAR(V.DATE1,'YYYY')='2009';

3) Определить минимальную и максимальную зарплаты сотрудников во 
всех отделениях. Подписать вычисляемые поля как «Минимальная 
зарплата» и «Максимальная зарплата».
SELECT B.CITY||', '||B.STREET AS ADDRESS, B.TEL_NO AS TELEFONE, T.MIN_SALARY, T.MAX_SALARY
FROM (
    SELECT S.BNO, MIN(S.SALARY) AS MIN_SALARY, MAX(S.SALARY) AS MAX_SALARY
    FROM STAFF S
    GROUP BY S.BNO) T, BRANCH B
WHERE B.BNO=T.BNO;

4) *Вывести отделения, в которых суммарная заработная плата 
больше 3000$.
SELECT B.CITY||', '||B.STREET AS ADDRESS, B.TEL_NO AS TELEFONE, T.SUM_SALARY
FROM (
    SELECT S.BNO, SUM(S.SALARY) AS SUM_SALARY
    FROM STAFF S
    GROUP BY S.BNO) T, BRANCH B
WHERE B.BNO=T.BNO AND SUM_SALARY > 3000;
