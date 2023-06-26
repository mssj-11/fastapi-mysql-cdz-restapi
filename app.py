from fastapi import FastAPI
from routes.character import character
from config.openapi import tags_metadata

app = FastAPI(
    title="CDZ API",
    description="A REST API using FastAPI and MySQL",
    version="0.0.1",
    openapi_tags=tags_metadata,
)
app.include_router(character)