program getdeords;

uses crt;

var
ibb:longint;
bb,aa:text;
gg,gg2:char;
filesz:longint;

procedure getfilesize;
begin
reset(aa);
filesz:=0;
while not eof(aa) do
begin
read(aa,gg2);
filesz:=filesz+1;
end;
end;



begin
clrscr;
assign(aa,'C:\windows\desktop\test.bmp');
reset(aa);
assign(bb,'C:\windows\desktop\testres.txt');
rewrite(bb);

getfilesize;
writeln(filesz);
{halt;}

ibb:=0;

reset(aa);

while (ibb<=filesz) do
begin
read(aa,gg);
writeln(bb,ibb,' - ',ord(gg));
ibb:=ibb+1;
end;

reset(bb);
writeln;
writeln('Done.');
end.