savepoint A;

SELECT * FROM dept;

INSERT INTO dept VALUES (50,'PAYROLL','LOS ANGELES');

INSERT INTO emp VALUES (7997,'EVANS','ACCTNT',7566,'2011-08-15',900,0,50);

INSERT INTO dept VALUES (60,'RECRUITING','DENVER');

ROLLBACK to savepoint A;

COMMIT;

SELECT * FROM emp
WHERE empno = 7997;


