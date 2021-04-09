PROGRAM GOLDBACH;
        USES Crt;
        VAR
           CONT,NUM1,OD,NUM2,f,g :integer;
           BOOL :Boolean;
        PROCEDURE  PRIME(X:integer;VAR   BOOLE:Boolean);
                 VAR SQ,R,J  :Integer;
                 Begin
                      SQ:=Trunc(Sqrt(X));
                      J:=1;
                      WHILE  J<=SQ  DO
                             Begin
                                  J:=J+1;
                                  R:=X MOD J ;
                                  IF R=0 THEN  Break;
                             End;
                             BOOLE:=(R<>0);
                 End;
        BEGIN
             f:=1;g:=1; ClrScr;
             FOR  CONT:=4 TO  998  DO
                  Begin
                      NUM1:=CONT+2;
                       OD:=NUM1;
                                OD:=OD-3;
                                WHILE  OD>1  DO
                                       Begin
                                            PRIME(OD,BOOL);
                                            IF BOOL THEN
                                               Begin
                                                    NUM2:=NUM1-OD;
                                                    PRIME(NUM2,BOOL);
                                                    IF BOOL THEN
                                                       Begin
                                                            TextColor(2);
                                                            GotoXY(f*12-8,g);
                                                            Write(NUM1,'=',OD,'+',NUM2);
                                                            f:=f+1;
                                                            IF f=7 THEN Begin
                                                                             g:=g+2;
                                                                              f:=1;
                                                                              End;
                                                            IF g>=24 THEN Begin
                                                                          TextColor(4+blink);
                                                                          Writeln;Write('press Enter':44);
                                                                          g:=1;readln;ClrScr;
                                                                          End;
                                                       Break;
                                                       End;
                                               End;
                                               OD:=OD-2;
                                       End;
                  End;
                  Readln;
        END.
