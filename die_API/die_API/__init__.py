import pymysql
#El código comentado es usado para convertir el archivo XML a JSON, después se comentó por obvias razones
#import xmltodict
#import json
print(pymysql.__file__)
pymysql.install_as_MySQLdb()
# Este código sólo se debe ocupar por una vez para poder crear el archivo JSON del archivo XML de 
# with open("main/data/Cpdescarga.xml") as xml_file:
#    dictate = xmltodict.parse(xml_file.read())
#xml_file.close()
#json_data=json.dumps(dictate)
#with open("main/data/CPdescarga.json", "w") as json_file:
#        json_file.write(json_data)
#json_file.close()
#HI, I HOPE YOU ENJOY IT
