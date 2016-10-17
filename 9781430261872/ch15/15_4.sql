ALTER SESSION ENABLE PARALLEL DML;

ALTER SESSION FORCE PARALLEL DML;

ALTER SESSION FORCE PARALLEL DML PARALLEL 4;

INSERT /*+ PARALLEL(DEPT,4) */ INTO DEPT
SELECT /*+ PARALLEL(DEPT_COPY,4) */ * FROM DEPT_COPY;

UPDATE /*+ PARALLEL(EMP,4) */ EMP
SET SAL = SAL*1.01 
WHERE DEPTNO=10;

DELETE /*+ PARALLEL(EMP,4) */ FROM EMP
WHERE DEPTNO=10;

