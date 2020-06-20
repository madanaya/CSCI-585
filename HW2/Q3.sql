-- MySQL 5.6

CREATE TABLE workOrders 
(
	projectId CHAR(30), 
	step INTEGER, 
	status CHAR(2) 
);

INSERT INTO workOrders VALUES('P100' ,0 ,'C');
INSERT INTO workOrders VALUES('P100' ,1 ,'W');
INSERT INTO workOrders VALUES('P100' ,2 ,'W');
INSERT INTO workOrders VALUES('P201' ,0 ,'C');
INSERT INTO workOrders VALUES('P201' ,1 ,'C');
INSERT INTO workOrders VALUES('P333' ,0 ,'W');
INSERT INTO workOrders VALUES('P333' ,1 ,'W');
INSERT INTO workOrders VALUES('P333' ,2 ,'W');
INSERT INTO workOrders VALUES('P333' ,3 ,'W');

SELECT DISTINCT(projectId) 
FROM workOrders w1
WHERE status='C'
AND NOT EXISTS ( SELECT 1 
			FROM workOrders w2
			WHERE step > 0 AND STATUS ='C' and w1.projectId = w2.projectId
		);