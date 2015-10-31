- с информацией об офисах в Бресте
CREATE OR REPLACE VIEW Brest_branches 
AS SELECT B.street, B.tel_no AS Telephone 
FROM Branch B 
WHERE B.city = 'Brest';

? с информацией об объектах недвижимости минимальной стоимости
SELECT P.city, P.street, P.rooms, P.rent FROM Property_for_rent P 
WHERE P.rent IN
(	
	SELECT MIN(PP.rent) FROM Property_for_rent PP
);

? с информацией о количестве сделанных осмотров с комментариями;
CREATE OR REPLACE VIEW Commented_viewings AS 
SELECT COUNT (V.rno) AS Commented_viewings FROM Viewing V
WHERE comment1 IS NOT NULL;

? со сведениями об арендаторах, желающих арендовать 3-х комнатные квартиры;
CREATE OR REPLACE VIEW Renters AS 
SELECT R.fname AS First_Name, R.lname AS Last_Name, R.tel_no AS Telephone 
FROM Renter R WHERE EXISTS
(
	SELECT * FROM Viewing V, Property_for_rent P
	WHERE P.rooms = 3 and V.rno = R.rno and P.pno = V.pno
)

? со сведениями об отделении с максимальным количеством работающих сотрудников.
CREATE OR REPLACE VIEW Max_people AS 
SELECT DISTINCT B.city, B.street, B.tel_no AS Telephone, Num FROM Branch B 
LEFT JOIN 
(
	SELECT Num FROM
	(
		SELECT S.bno, COUNT (bno) AS Num FROM Staff S GROUP BY S.bno 
	)	
	WHERE Num IN 
	(
		SELECT MIN (Num) FROM 
		(
			SELECT S.bno, COUNT (bno) AS Num FROM Staff S GROUP BY S.bno 	 
		)
		
	)
			
)
ON B.bno = bno
WHERE B.bno IN 
(	
	SELECT bno FROM
	(
		SELECT S.bno, COUNT (bno) AS Num FROM Staff S GROUP BY S.bno 
	)	
	WHERE Num IN 
	(
		SELECT MIN (Num) FROM 
		(
			SELECT S.bno, COUNT (bno) AS Num FROM Staff S GROUP BY S.bno 	 
		)
		
	)	
) 
ORDER BY B.city;

? с информацией о сотрудниках и объектах, которые они предлагают в аренду;
CREATE OR REPLACE VIEW Property AS 
SELECT P.city, P.street, P.type, P.rooms, P.rent, O.lname AS Last_Name, O.fname AS First_Name, O.address, O.tel_no AS Telephone 
FROM Property_for_rent P 
INNER JOIN Owner O ON P.ono = O.ono
ORDER BY P.city, P.street;

? с информацией о владельцах, чьи дома или квартиры осматривались потенциальными арендаторами.
CREATE OR REPLACE VIEW Viewed_owners AS 
SELECT O.lname AS Last_Name, O.fname AS First_Name, O.address, O.tel_no AS Telephone 
FROM Owner O WHERE O.ono IN
(
	Select P.ono from Property_for_rent P 
	WHERE P.pno IN
	(
		SELECT V.pno FROM Viewing V
		WHERE EXISTS (SELECT * FROM Viewing)
    )
	
)
ORDER BY O.lname;


CREATE OR REPLACE VIEW ololo AS 
SELECT * FROM Branch B WHERE B.city = 'Minsk' WITH CHECK OPTION;

INSERT INTO ololo VALUES (Branch_seq.nextval, 'Корженевского', 'Vitebsk', '+37527465768'); 


--"hello git"
--"hello master111"
--"hello master222 "
--"hello master333"