from fastapi import APIRouter
from config.db import conn
from models.character import characters
from schemas.character import Character


character = APIRouter()


@character.get("/")
def home():
    return "Hello World, Welcome to my CDZ API"

@character.get("/characters")
def get_characters():
    return conn.execute(characters.select()).fetchall()


@character.post("/characters")
def create_characters(character: Character):
    return "Hello World, Welcome to my CDZ API"


@character.get("/characters")
def home():
    return "Hello World, Welcome to my CDZ API"


@character.get("/characters")
def home():
    return "Hello World, Welcome to my CDZ API"


@character.get("/characters")
def home():
    return "Hello World, Welcome to my CDZ API"