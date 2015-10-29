1) �������� ������ ����������� � ��������� �� 200$ �� 300$.
SELECT FNAME, LNAME, ADDRESS, TEL_NO AS TELEFONE, POSITION, SALARY
FROM STAFF
WHERE SALARY BETWEEN 200 AND 300;

2) �������� ������ ��������� �����������, 
���������� � ������ ������ ��� ������
SELECT FNAME, LNAME, POSITION, TEL_NO AS TELEFONE
FROM STAFF
WHERE BNO IN (
    SELECT BNO 
    FROM BRANCH
    WHERE CITY IN ('Minsk', 'Brest'));

3) ���������� � ������� ��������� � ������� �������� ����������� 
� ����������� �� ���������� ��� ���������. ��������� 
����������� ���� ��� ���������� �������� � �������� ��������.
SELECT POSITION AS ���������, SUM(SALARY) AS SUM_ZARPLATA, AVG(SALARY) AS AVG_ZARPLATA
FROM STAFF
GROUP BY POSITION;

4) *������� ���������, �� ������� ��������� ���������� 
����� ������ �������.
SELECT POSITION, AVG(SALARY) AS AVG_ZP
FROM STAFF
GROUP BY POSITION
HAVING AVG(SALARY) > (
    SELECT AVG(AVG_ZARPLATA)
    FROM (
    SELECT POSITION, AVG(SALARY) AS AVG_ZARPLATA
    FROM STAFF
    GROUP BY POSITION));

