program hunter;

uses crt;

var
flsize:longint;
fpos:longint;
od:integer;
ans,char1:char;
aa:text;
a1:string;


begin
fpos:=0;
writeln('Colour hunter!');
writeln('Input file name.');
readln(a1);
assign(aa,a1);
reset(aa);
writeln('Input de ord to hunt...');
readln(od);
writeln('Enter file size.');
readln(flsize);

ans:='y';

while (ans='y')and(fpos<=flsize) do

begin
writeln('Hunting!');
read(aa,char1);
fpos:=fpos+1;
if (ord(char1)=od) then
begin
writeln;
writeln;
writeln('Found one sucker.... position ',fpos);
writeln;
writeln('Hunt more?');
ans:=readkey;
end;
end;

end.

