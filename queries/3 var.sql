1) ���������� ������ ���� 3-� ��������� �������, 
������������ � ������.

2) �������� ������ �����������, ������������� ������� ������ 
� 2009 ����.
SELECT R.*
FROM VIEWING V, RENTER R
WHERE V.RNO=R.RNO AND TO_CHAR(V.DATE1,'YYYY')='2009';

3) ���������� ����������� � ������������ �������� ����������� �� 
���� ����������. ��������� ����������� ���� ��� ������������ 
�������� � ������������� ��������.
SELECT B.CITY||', '||B.STREET AS ADDRESS, B.TEL_NO AS TELEFONE, T.MIN_SALARY, T.MAX_SALARY
FROM (
    SELECT S.BNO, MIN(S.SALARY) AS MIN_SALARY, MAX(S.SALARY) AS MAX_SALARY
    FROM STAFF S
    GROUP BY S.BNO) T, BRANCH B
WHERE B.BNO=T.BNO;

4) *������� ���������, � ������� ��������� ���������� ����� 
������ 3000$.
SELECT B.CITY||', '||B.STREET AS ADDRESS, B.TEL_NO AS TELEFONE, T.SUM_SALARY
FROM (
    SELECT S.BNO, SUM(S.SALARY) AS SUM_SALARY
    FROM STAFF S
    GROUP BY S.BNO) T, BRANCH B
WHERE B.BNO=T.BNO AND SUM_SALARY > 3000;
