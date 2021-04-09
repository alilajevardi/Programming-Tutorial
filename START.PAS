Uses Graph,Crt;
Var
   s: array[0..36]of Real;
   k: array[0..36,0..16]of Boolean;
   a,b,c,m,n,x,y,p,r,D,V,j,l :Integer;
   w,q,g :word;
   T: string;
   BEGIN
        T:='IN THE NAME OF ALLAH ';D:=3;V:=1;
        InitGraph(D,V,'c:\tp\bgi');
        p:=0;r:=25;
        for a:=0 to 36 do
            s[a]:=r*Sin(a*0.172);
        for a:=0 to 16 do for b:=0 to 36
        do k[b,a]:=true;
        FOR L:=0 TO 5 DO
          Begin
               for c:=0 to 35 do begin
               SetFillStyle(7,4);
               SetVisualPage(n);
               n:=c MOD 2;
               SetActivePage(n);
               Bar(0,0,640,350);
               OutTextXY(5,5,T);
               OutTextXY(170,300,'ALI REZA LAGEVARDY   PHYSIC 73');
               OutTextXy(205,320,'BEHESHTI  UNIVERSITY');
               OutTextXY(460,340,'Press "Esc" Key To End');
               for a:=0 to 16 do
                   for b:=0 to 36 do begin
                   m:=a-b+c;While (m<0) do
                   m:=36+m;if m>36 then
                   m:=m-36; if k[b,a]=false then
                   w:=9  else w:=10;
                   j:=50+b*15-a*2;
                   g:=70+a*12+Trunc(s[m]);
                   PutPixel (j,g,w);
                   PutPixel (j+1,g,w);    PutPixel (j+2,g,w);
                   PutPixel (j,g+1,w);    PutPixel (j,g+2,w);
                   PutPixel (j+1,g+1,w);PutPixel (j+2,g+2,w);
                   if KeyPressed then begin
                   CloseGraph;Exit;
               end;
          end;
                    begin for x:=0 to 35 do
                    for y:=1 to 16 do
                    k[x,y]:=k[x+1,y];
                    for x:=1 to 16 do
                        k[36,x]:=True;
                    for x:=1 to 16 do begin
                    q:=GetPixel(5+p,x);
                    if q=15 then k[36,x]:=false;
                             end;p:=p+1;
                        end;
                    end;
          End;
   END.