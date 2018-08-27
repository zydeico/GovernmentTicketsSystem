<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
Fuera de horario <br />

<%


ko = time()
		 dim pus
		 dim pus2
		 dim pus3
		 dim limiteh
		 dim limitem
		 
ko2 = date()
por = day(ko2)
pr2= month(ko2)
pr3= year(ko2)
pus= hour(ko)
pus2 = minute(ko)
pus3 = second(ko)
resto = 0


'dim ytyt as integer
'dim tyu as integer
tyu = pus&pus2
response.Write(pus&"<br />")
response.Write(pus2&"<br />")
response.Write(pus3&"<br />")


proco = pus * 100
huno = proco + pus2

atila = 1530

response.Write(atila&"<br />")
response.Write(huno&"<br />")
if huno > atila then


response.Write("Fuera de horario")

else

response.Write("No fuera de horario")

end if



%>


</body>
</html>
