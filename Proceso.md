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
##  Instalación de SQLAlchemy V.1.4.22:
```sh
pip install sqlalchemy==1.4.22
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
##  Listar los paquetes:
```sh
pip freeze > requeriments.txt
```

#   Solución a ERRORES
### Error cryptography, en caso de que se muestre por consola
```
pip install cryptography
```



#   Extra
##  Código para poder acceder a las peticiones desde otra App, por ejemplo desde JavaScript para poder consumir la API:
Configurar el el archivo `main.py` o `app.py` según sea el caso.
```py
from fastapi.middleware.cors import CORSMiddleware

origins = ["*"]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
```