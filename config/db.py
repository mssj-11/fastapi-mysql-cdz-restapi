from sqlalchemy import create_engine, MetaData

#   Conexion                         (usuario:contraseña@direccion:puerto/base_de_datos)
engine = create_engine("mysql+pymysql://root:@localhost:3306/cdzapi-rest")

#   Create TABLES
meta = MetaData()

conn = engine.connect()