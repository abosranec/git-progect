INSERT INTO Branch VALUES ( Branch_seq.nextval, '���������', 'Minsk', '+375292837549');
INSERT INTO Branch VALUES ( Branch_seq.nextval, '�������������', 'Mogilev', '+375293647569');
INSERT INTO Branch VALUES ( Branch_seq.nextval, '����������', 'Minsk', '+375294758698');
INSERT INTO Branch VALUES ( Branch_seq.nextval, '�����������', 'Grodno', '+375293548794');
INSERT INTO Branch VALUES ( Branch_seq.nextval, '�������', 'Brest', '+375295554657');
INSERT INTO Branch VALUES ( Branch_seq.nextval, '������', 'Minsk', '+375296464646');
INSERT INTO Branch VALUES ( Branch_seq.nextval, '����������', 'Gomel', '+375296667687');

INSERT INTO Owner VALUES (Owner_seq.nextval, '������', '������', 'Vitebsk, ��.��������� 33/230', '+375299574652');
INSERT INTO Owner VALUES (Owner_seq.nextval, '���������', '������', 'Mogilev, ��.�������� 33/230', '+375298796821');
INSERT INTO Owner VALUES (Owner_seq.nextval, '�����', '�������', 'Gomel, ��.����� 33/230', '+375299953426');
INSERT INTO Owner VALUES (Owner_seq.nextval, '������', '�������', 'Grodno, ��.������� 33/230', '+375296687209');
INSERT INTO Owner VALUES (Owner_seq.nextval, '������', '�����', 'Minsk, ��.�������� 33/230', '+375293376529');
INSERT INTO Owner VALUES (Owner_seq.nextval, '�������', '��������', 'Brest, ��.���������� 33/230', '+375292227622');
INSERT INTO Owner VALUES (Owner_seq.nextval, '������', '�������', 'Brest, ��.��������� 33/230', '+375298475645');

INSERT INTO Renter VALUES (Renter_seq.nextval, '�����', '�������', 'Minsk, ��.��������� 23/89', '+375294489745', 'h', 200, 7);
INSERT INTO Renter VALUES (Renter_seq.nextval, '���������', '��������', 'Grodno, ��.���������� 29/230', '+375299584638', 'h', 250, 4);
INSERT INTO Renter VALUES (Renter_seq.nextval, '��������', '�������', 'Vitebsk, ��.���������� 176/123', '+375293647261', 'f', 300, 2);
INSERT INTO Renter VALUES (Renter_seq.nextval, '��������', '�������', 'Brest, ��.�������� 23/98', '+375296645378', 'h', 190, 1);
INSERT INTO Renter VALUES (Renter_seq.nextval, '������', '��������', 'Mogilev, ��.�������� 52/57', '+375293376890', 'f', 350, 6);
INSERT INTO Renter VALUES (Renter_seq.nextval, '�������', '������������', 'Minsk, ��.�������� 92/112', '+375297652985', 'h', 320, 7);
INSERT INTO Renter VALUES (Renter_seq.nextval, '���������', '�������', 'Grodno, ��.������ 33/230', '+375297283645', 'f', 400, 4);

INSERT INTO Staff VALUES (Staff_seq.nextval, '������', '���������', 'Vitebsk, ��.�������� 12/9', '+375293567899', '�������', 'Male', '06/23/1973', 1200, 4);
INSERT INTO Staff VALUES (Staff_seq.nextval, '��������', '�����', 'Mogilev, ��.������� 79/230', '+375293451789', '��������', 'Female', '03/19/1987', 800, 5);
INSERT INTO Staff VALUES (Staff_seq.nextval, '�����', '��������', 'Minsk, ��.������ 23/89', '+375292223456', '�����������', 'Female', '07/12/1989', 600, 2);
INSERT INTO Staff VALUES (Staff_seq.nextval, '�������', '������', 'Mogilev, ��.��������� 78/123', '+375292234509', '�����������', 'Male', '09/30/1970', 700, 3);
INSERT INTO Staff VALUES (Staff_seq.nextval, '��������', '��������', 'Mogilev, ��.���������� 99/63', '+375299998789', '���������', 'Male', '02/23/1973', 700, 3);
INSERT INTO Staff VALUES (Staff_seq.nextval, '��������', '�������', 'Brest, ��.����������� 98/290', '+375299036524', '�����������', 'Female', '09/24/1978', 900, 4);
INSERT INTO Staff VALUES (Staff_seq.nextval, '������', '���������', 'Gomel, ��.��������� 176/230', '+375295557390', '�����������������', 'Female', '05/21/1987', 500, 5);
INSERT INTO Staff VALUES (Staff_seq.nextval, '���������', '��������', 'Brest, ��.�������� 98/23', '+375293457870', '�����', 'Female', '06/21/1982', 800, 6);
INSERT INTO Staff VALUES (Staff_seq.nextval, '��������', '���������', 'Minsk, ��.���������� 72/3', '+375291555356', '�������', 'Male', '06/06/1994', 700, 1);

INSERT INTO Property_for_rent VALUES (Prop_seq.nextval, '�������', 'Gomel', 'f', '4','600', 3, 4, 3);
INSERT INTO Property_for_rent VALUES (Prop_seq.nextval, '������', 'Grodno', 'h', '1','150', 4, 5, 4);
INSERT INTO Property_for_rent VALUES (Prop_seq.nextval, '���������', 'Minsk', 'f', '3','380', 1, 5, 7);
INSERT INTO Property_for_rent VALUES (Prop_seq.nextval, '���������', 'Grodno', 'h', '1','150', 2, 4, 6);
INSERT INTO Property_for_rent VALUES (Prop_seq.nextval, '�����', 'Minsk', 'f', '1','270', 1, 4, 3);
INSERT INTO Property_for_rent VALUES (Prop_seq.nextval, '�������', 'Brest', 'h', '2','200', 2, 5, 4);
INSERT INTO Property_for_rent VALUES (Prop_seq.nextval, '��������', 'Minsk', 'f', '4','700', 3, 6, 5);

INSERT INTO Viewing VALUES (1, 1, '06/06/2014', '���');
INSERT INTO Viewing VALUES (2, 2, '08/23/2014', '���-���');
INSERT INTO Viewing VALUES (3, 3, '05/07/2014', '���-���-���');
INSERT INTO Viewing VALUES (4, 4, '09/01/2014', '���-���-���-���');
INSERT INTO Viewing VALUES (5, 5, '10/29/2014', '���-���-���-���-���');
INSERT INTO Viewing VALUES (6, 6, '01/13/2014', '���-���-���-���-���-���');
INSERT INTO Viewing VALUES (7, 7, '04/30/2014', '���-���-���-���-���-���-���');


