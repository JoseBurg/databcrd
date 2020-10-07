# !<--------------Librerias necesarias---------------->

library("readxl")

url1<-"https://cdn.bancentral.gov.do/documents/estadisticas/mercado-de-trabajo/documents/indicadores_mercado_15.xls?v=1601938358311"
desm1<-file.path("~","local_indicadores_mercado_15.xls?v=1601938358311")
download.file(url1,desm1)
read_excel(desm1)

### Balanza de pagos anual 

url2<-"https://cdn.bancentral.gov.do/documents/estadisticas/sector-externo/documents/bpagos_6.xls?v=1602038237421"
desm2<-file.path("~","local_bpagos_6.xls?v=1602038237421")
download.file(url2,desm2)
blpanual<-read_excel(desm2)

### Limpiando la base de datos 

blpanual<-read_excel(desm2,skip = 8,col_names = c("Conceptos","2010","2011",
                                                  "2012","2013","2014","2015",
                                                  "2016","2017","2018","2019"))
blpanual<-blpanual[-c(64:70),]
blpanual<-blpanual[-c(10,19,30,38,40,42,50,52,54),]
View(blpanual)
### Balanza de pagos trimestral

url2.1<-"https://cdn.bancentral.gov.do/documents/estadisticas/sector-externo/documents/bpagos__trim_6.xls?v=1602038237421"
desm2.1<-file.path("~","local_bpagos__trim_6.xls?v=1602038237421")
download.file(url2.1,desm2.1)
read_excel(desm2.1)
