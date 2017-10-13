program davinci;
var
aa,bb:text;
a1:string;
c1,c2:char;
dd:longint;
od:integer;
f2,filsize:longint;

begin
writeln('I am Leo Da Vinci!');
writeln('Input file name.');
writeln;
readln(a1);
assign(aa,a1);
writeln('Input file size.');
readln(filsize);
writeln('Input bit position...');
readln(dd);
writeln;
writeln('Input ord number.');
readln(od);
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

if f2=dd then
begin
c1:=char(od);
write(bb,c1);
end
else
write(bb,c1);
end;

writeln('ARTWORK COMPLETE! HAHAHA  :)');

end.