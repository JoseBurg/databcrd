# <---------------------------Encuesta G e I---------------------------------->


url3<-"https://cdn.bancentral.gov.do/documents/estadisticas/encuesta-de-gastos-e-ingresos/documents/Cuadros_Ingresos.xlsx?v=1605547317988"
desm3<-file.path("~","local_Cuadros_Ingresos.xlsx?v=1605547317988")
download.file(url3,desm3)
eing<-read_excel(desm3)

View(eing)





# <---------------------------Encuesta G e I---------------------------------->

url4<-"https://cdn.bancentral.gov.do/documents/estadisticas/encuesta-de-gastos-e-ingresos/documents/Cuadros_Gastos.xlsx?v=1605547317988"
desm4<-file.path("~","local_Cuadros_Gastos.xlsx?v=1605547317988")
download.file(url4,desm4)
egast<-read_excel(desm4)

View(egast)