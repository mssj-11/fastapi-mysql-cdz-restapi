from sqlalchemy import create_engine, MetaData

# Conexión a la base de datos
# mysql+pymysql://usuario:contraseña@host:puerto/nombre_base_de_datos
engine = create_engine("mysql+pymysql://root:@localhost:3306/cdzapi-rest")

#   Create TABLES
meta = MetaData()

conn = engine.connect()