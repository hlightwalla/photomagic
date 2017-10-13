program altercolor;

var
factr:integer;
counter1:longint;
origfile,nwfile:text;
aa,bb,cc,dd,ee:char;
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
writeln('Picture warper Complete              Hussein Lightwalla 2005');
writeln;
writeln('Input file name of the picture to alter.');
readln(fname);
writeln('Input the type of alteration.');
writeln;
writeln('1. Red    haze');
writeln('2. Pink   haze');
writeln('3. Blue   haze');
writeln('4. Green  haze');
writeln('5. Purple haze');
writeln;
readln(factr);

assign(origfile,fname);
{assign(origfile,'C:\windows\desktop\test.bmp');}
reset(origfile);
assign(nwfile,'C:\altered.bmp');
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
counter1:=counter1+1;
if (counter1<>filesz) then read(origfile,dd);
if (counter1<>filesz) then counter1:=counter1+1;
if (counter1<>filesz) then read(origfile,ee);
if (counter1<>filesz) then counter1:=counter1+1;

if factr=1 then
begin
write(nwfile,dd);
write(nwfile,ee);
write(nwfile,aa);
end
else
if factr=2 then
begin
write(nwfile,dd);
write(nwfile,aa);
write(nwfile,ee);
end
else
if factr=3 then
begin
write(nwfile,ee);
write(nwfile,dd);
write(nwfile,aa);
end
else
if factr=4 then
begin
write(nwfile,aa);
write(nwfile,ee);
write(nwfile,dd);
end
else
if factr=5 then
begin
write(nwfile,ee);
write(nwfile,aa);
write(nwfile,dd);
end;





{
if ((ord(aa)-factr)<=255)and((ord(aa)-factr)>=0) then write(nwfile,(char(ord(aa)-factr)))
else
if ((ord(aa)+factr)<=255) then
write(nwfile,(char(ord(aa)+factr)));
if ord(aa)<255 then write(nwfile,(char(ord(aa)+factr)));
if ord(aa)=255 then write(nwfile,(char(0)));
counter1:=counter1+1;
}

end;


reset(nwfile);
writeln;
writeln('Done.');
writeln('The altered picture file is saved as C:\altered.bmp');
writeln('You can create a shortcut on the desktop for your ease.');
readln;
end.

