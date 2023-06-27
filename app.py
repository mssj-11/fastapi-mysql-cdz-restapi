from fastapi import FastAPI
from routes.character import character
from config.openapi import tags_metadata
from fastapi.middleware.cors import CORSMiddleware


app = FastAPI(
    title="CDZ API",
    description="A REST API using FastAPI and MySQL",
    version="0.0.1",
    openapi_tags=tags_metadata,
)


origins = ["*"]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(character)