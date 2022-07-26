BEGIN;
        CREATE: EX(1, 1): MARK(1);
        QUEUE,  1;
        SEIZE:  CARRO;
        BRANCH, 1:
                WITH, 0.4, CAJA1:
                WITH, 0.6, CAJA2;
CAJA1   ASSIGN: A(2)=1;
        DELAY:EX(2,2);
        QUEUE, 2;
        SEIZE: CAJAE;
        DELAY:EX(1,3);
        RELEASE: CAJAE:NEXT(SALIDA);
CAJA2   ASSIGN:A(2)=2;
        DELAY:EX(3,3);
        QUEUE, 3;
        SEIZE: CAJAN;
        DELAY:UN(4,4);
        RELEASE: CAJAN;
SALIDA  RELEASE: CARRO;
        COUNT:A(2);
        TALLY:A(2),INT(1):DISPOSE;
END;