from sqlalchemy import Table, Column
from sqlalchemy.sql.sqltypes import Integer, String
from config.db import meta, engine


characters = Table("characters", meta, Column("id", Integer, primary_key=True), Column("name", String(255)), Column("constellation", String(100)), Column("rank", String(50)), Column("description", String(255)), Column("image_url", String(255)))


meta.create_all(engine)