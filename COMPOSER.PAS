USES Crt;
VAR W:Char;Z,L,I: Integer;
    F: Text; D: String;
BEGIN
     ClrScr;
     TextColor(14);
     GotoXY(33,1);
     Write('Music-Generator');
     GotoXY(1,7);Write('Filename:');
     TextColor(12);
     GotoXY(16,7);Read(d);d:=d+'.pas';
     GotoXY(60,25);
     Write('BelakMedia 37');
     Assign(f,d);ReWrite(f);
     Writeln(f,'Uses Crt;');
     Writeln(f,'Begin');TextColor(14);
     GotoXY(1,7);
     Write('Frequenc:             ');
     l:=50;z:=250;{50Hz ,250ms}
     GotoXY(1,25);Write('[T]one  [-] '+
     'Tone [+]  [E]nd  [L]enght');
     GotoXY(1,24);
     FOR i:=1 to  80  DO  Write('*');
     repeat w:=ReadKey;
            Case w of
             't':begin
                      Sound(1);Delay(z);NoSound;
                      Writeln(f,' Sound(',1,
                      ');Delay(',z,');');
                 end;
             '-':begin
                      l:=l-5;
                      TextColor(12);GotoXY(16,7);
                      Write(l,'Hz');
                 end;
             '+':begin
                      l:=l+5;
                      TextColor(12);GotoXY(16,7);
                      Write(l,'Hz');
                 end;
             'l':begin
                      TextColor(14);GotoXY(1,13);
                      Write('Tone Lenght:       ');
                      TextColor(12);
                      GotoXY(16,13);Read(z);
                 end;
            End;
     until W='e';
     ClrScr;
     Writeln(f,'NoSound;');Writeln
     (f,'End.');Close(f);
END.


        