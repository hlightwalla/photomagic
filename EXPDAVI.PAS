program davinci;
var
aa,bb:text;
a1:string;
c1,c2:char;
dd:longint;
od:integer;
f2,filsize:longint;
ordscan:integer;
origbmp:string;


begin
writeln('I am Leo Da Vinci!');
writeln;
writeln('Input file name-');
readln(origbmp);
assign(aa,'C:\windows\desktop\smile.bmp');
filsize:=41118;
writeln;
writeln('Input ord number that you want.');
readln(od);
{writeln('Input ord to scan for.');
readln(ordscan);}
ordscan:=29;
writeln;
writeln('       Lets Go!');


f2:=0;
assign(bb,'C:\windows\desktop\davinci.bmp');
rewrite(bb);
reset(aa);




while f2<>filsize do
begin
read(aa,c1);
f2:=f2+1;

if ((ord(c1)>21)and((ord(c1)<28))) then
{if  (ordscan)=(ord(c1)) then}
begin
c1:=char(od);
write(bb,c1);
end
else
write(bb,c1);
end;

writeln('EXTREME ARTWORK COMPLETE! HAHAHA  :)');

end.