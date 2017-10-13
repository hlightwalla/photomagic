{this program will help us have a rough overview on how the ords of typical files are.}

program gettheords;

var
flsource,floutput:text;
ca,cb:char;
strfname:string;
int1:integer;

begin
writeln('Input source file name.');
readln(strfname);
assign(flsource,strfname);
reset(flsource);
assign(floutput,'C:\windows\desktop\researchoutput.txt');
writeln;
writeln('Output file is on the desktop. Name is researchoutput.txt');
rewrite(floutput);
int1:=0;

while (int1<>5) do
begin
read(flsource,ca);
if ord(ca)>200 then write(floutput,'                   ',ord(ca));
if ord(ca)=26 then int1:=int1+1 else int1:=0;
end
;


writeln;
writeln('All done.');
end.