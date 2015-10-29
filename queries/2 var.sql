1) Определить адреса и телефоны офисов, расположенных 
в Минске и Гродно.
SELECT CITY || ', ' || STREET AS ADDRESS, TEL_NO
FROM BRANCH
WHERE CITY IN('Minsk', 'Grodno');

2) Вывести информацию о сотрудниках, которые предлагают 
для аренды 3-х комнатные квартиры.
SELECT S.FNAME, S.LNAME, S.ADDRESS, S.TEL_NO
FROM PROPERTY_FOR_RENT P, STAFF S
WHERE S.SNO=P.SNO AND P.ROOMS=3 AND P.TYPE='f';

3) Вывести итоговый отчет о средней и суммарной заработных платах
сотрудников в зависимости от их половой принадлежности. Подписать 
вычисляемые поля как «Суммарная зарплата» и «Средняя зарплата»
SELECT S.SEX, SUM(S.SALARY) AS SUM_ZP, AVG(S.SALARY) AS AVG_ZP
FROM STAFF S
GROUP BY S.SEX;

4) *Вывести информацию об отделениях, где 
работает больше женщин, чем мужчин.
SELECT *
FROM (
    SELECT B.CITY||', '||B.STREET AS ADDRESS, B.TEL_NO AS TELEFONE, (
        SELECT COUNT(SEX)
        FROM STAFF ST
        WHERE SEX='Female' AND ST.SNO=S.SNO) AS COUNT_FEMALE
        , (
        SELECT COUNT(SEX)
        FROM STAFF ST
        WHERE SEX='Male' AND ST.SNO=S.SNO) AS COUNT_MALE
    FROM BRANCH B, STAFF S
    WHERE B.BNO=S.BNO
)
WHERE COUNT_FEMALE > COUNT_MALE;
