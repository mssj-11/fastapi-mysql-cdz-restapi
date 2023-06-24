#   Proceso de creación



#   Con virtualENV
Instalar
```sh
pip install virtualenv
```
```sh
virtualenv env
```
Ingresar al entorno creado y Activarlo:
```sh
.\env\Scripts\activate
```
Desactivarlo:
```sh
deactivate
```

##  Instalación de FastAPI:
```sh
pip install fastapi
```
##  Instalación de SQLAlchemy:
```sh
pip install sqlalchemy
```
##  Instalación de MySQL:
```sh
pip install pymysql
```
Listar los paquetes instalados
```sh
pip list
```

##  Instalación de Uvicorn:
Para iniciar el servidor de Python
```sh
pip install uvicorn
```
### Iniciando la App de Python
```sh
uvicorn app:app
```
Actualización automática:
```sh
uvicorn app:app --reload
```


#   Solución a ERRORES
### Error cryptography
```
pip install cryptography
```