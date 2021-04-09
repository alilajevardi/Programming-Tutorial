PROGRAM  FIBO;
 uses CRT;
 VAR
    FIB,MAX,A,B  :Word;
PROCEDURE  PRIME (VAR X:Word);
      VAR
         Y,CONT,R,I :Word;
         BOOL :boolean;
      BEGIN
           Y:=Trunc(sqrt(x));
           I:=1;
           WHILE  I<=Y  DO
                  Begin
                       I:=I+1;
                       R:=X MOD I;
                       IF R=0 THEN
                          Break;
                  End;
           IF (R<>0) AND (X<>1)  OR (X=2) THEN
                       Write('P.N') ;
       End;
BEGIN
     ClrScr;
     A:=1; B:=0; FIB:=1;
     Write('Enter Maximum Number For Compute FIBONACCY (MIN=2   MAX=50000) : ');
     Readln(MAX);
     IF (MAX<1) OR (MAX>50000)  THEN  Writeln('Data Error ':45)
     ELSE
      Begin
              WHILE  FIB<MAX  DO
                     Begin
                          Write(FIB:8);
                          PRIME(FIB);
                          FIB:=A+B;
                          B:=A;
                          A:=FIB;
                     End;
       End;
     Writeln;
     Write('Press Enter For End ':50);
     Readln
END.
