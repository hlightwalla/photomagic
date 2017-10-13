program bimpcrakah;

uses crt;

var
gg:integer;
aa,bb,cc:text;
a1,a2:string;
c1,no:char;
c2,c3:char;
dd,ff,stopgap:longint;


begin
assign(cc,'C:\windows\desktop\gold\reporthack.txt');
rewrite(cc);
ff:=0;
gg:=0;
dd:=0;
writeln('Use stopgap? Thats gonna be fun man! if so, input it else just nil it...');
writeln;
readln(stopgap);
writeln('Input BMP 1.');
readln(a1);
assign(aa,a1);
writeln('Input BMP 2.');
readln(a2);
assign(bb,a2);


c1:='g';
reset(aa);
reset(bb);

no:='n';

while no='n' do

begin
read(aa,c1);
read(bb,c2);
dd:=dd+1;
ff:=ff+1;
if ord(c1)=26 then
begin
writeln;
writeln('Position      ',ff);
writeln;
writeln('Hey, has this ended?');
writeln;
writeln;
if stopgap=0 then no:=readkey;
end;
if c1=c2
then
begin
writeln(' Same...');
writeln('Char 1  ',c1,'        char 2   ',c2,'   position  ',ff);
if stopgap=0 then c3:=readkey;
end
else
begin
gg:=gg+1;
writeln('Not SAME!');
writeln;
writeln(' char 1 is : ',c1);
writeln;
writeln(' char 2 is : ',c2);
writeln;
writeln('position  ',dd,' of ',a1);
writeln;
writeln('Total differences so far... ',gg);
if stopgap<>0 then

begin
writeln(cc,' ');
writeln(cc,' Difference number ',gg);
writeln(cc,' ',a1,' : ',c1,' Ord : ',(ord(c1)));
writeln(cc,' ',a2,' : ',c2,' Ord : ',(ord(c2)));
writeln(cc,'Position  is ',dd);
end;



if stopgap=0 then c3:=readkey;
end;


if ff=stopgap then no:='y';


end;
reset(cc);
end.