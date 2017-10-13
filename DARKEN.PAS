program altercolor;

var
factr:integer;
counter1:longint;
origfile,nwfile:text;
aa,bb,cc:char;
intenbegin:integer;
filesz:longint;
fname:string;

procedure getfilesize;
var
eocount:integer;
begin
reset(origfile);
filesz:=0;
eocount:=0;
while eocount<4 do
begin
read(origfile,aa);
if ord(aa)<>26 then eocount:=0 else eocount:=eocount+1;
filesz:=filesz+1;
end;
end;



begin
writeln('Picture warper');
writeln;
writeln('Input file name of the picture to alter.');
readln(fname);
writeln('Input the factor by which to alter.');
readln(factr);

assign(origfile,fname);
{assign(origfile,'C:\windows\desktop\test.bmp');}
reset(origfile);
assign(nwfile,'C:\windows\desktop\altered.bmp');
rewrite(nwfile);

getfilesize;

reset(origfile);
counter1:=0;
while (counter1<11) do
begin
read(origfile,aa);
counter1:=counter1+1;
end;
intenbegin:=ord(aa);

reset(origfile);
counter1:=0;
while (counter1<intenbegin) do
begin
read(origfile,aa);
write(nwfile,aa);
counter1:=counter1+1;
end;

while (counter1<>filesz) do
begin
read(origfile,aa);
if ((ord(aa)-factr)<=255)and((ord(aa)-factr)>=0) then write(nwfile,(char(ord(aa)-factr)))
else
if ((ord(aa)+factr)<=255) then
write(nwfile,(char(ord(aa)+factr)));

{if ord(aa)<255 then write(nwfile,(char(ord(aa)+factr)));}
{if ord(aa)=255 then write(nwfile,(char(0)));}
counter1:=counter1+1;
end;


reset(nwfile);
writeln;
writeln('Done.');
writeln('The darkened picture file is saved on the desktop as altered.bmp');
end.

