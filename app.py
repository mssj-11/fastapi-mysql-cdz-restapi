from fastapi import FastAPI
from routes.character import character

app = FastAPI()

app.include_router(character)