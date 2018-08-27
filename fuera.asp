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
v = request.form("vehiculo")

k = request.form("kilometraje")

tyu = pus&pus2


ytyt = 1530
limiteh = 15
limitem = 20
kokito = liminteh & limitem

if pus2+pus > limiteh+limitem then
response.Write("-----"&tyu&"------Fuera de horario------")
if pus > 14 then
response.Write("-----"&tyu&"------Fuera de horario------")
response.Redirect("fueradehorario.asp")
end if
end if
%>
