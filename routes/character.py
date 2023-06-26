from fastapi import APIRouter
from config.db import conn
from models.character import characters
from schemas.character import Character, CharacterCount
from typing import List
from starlette.status import HTTP_204_NO_CONTENT
from sqlalchemy import func, select


character = APIRouter()


@character.get("/")
def home():
    return "Hello World, Welcome to my CDZ API"

@character.get(
    "/characters",
    tags=["characters"],
    response_model=List[Character],
    description="Get a list of all CDZ",
)
def get_characters():
    return conn.execute(characters.select()).fetchall()

@character.get("/characters/count", tags=["characters"], response_model=CharacterCount)
def get_characters_count():
    result = conn.execute(select([func.count()]).select_from(characters))
    return {"total": tuple(result)[0][0]}

@character.get(
    "/characters",
    tags=["characters"],
    response_model=Character,
    description="Get a single Character by ID",
)
def get_character(id: int):
    return conn.execute(characters.select().where(characters.c.id == id)).first()

@character.post("/", tags=["characters"], response_model=Character, description="Create a new character")
def create_character(character: Character):
    new_character = {
        "name": character.name, 
        "constellation": character.constellation, 
        "rank": character.rank, 
        "description": character.description, 
        "image_url": character.image_url
    }
    result = conn.execute(characters.insert().values(new_character))
    inserted_character = conn.execute(characters.select().where(characters.c.id == result.lastrowid)).first()
    return inserted_character

@character.put(
    "/characters{id}",
    tags=["characters"],
    response_model=Character,
    description="Update a Character by ID",
)
def update_characters(character: Character, id: int):
    conn.execute(characters.update().values(name=character.name, constellation=character.constellation, rank=character.rank, description=character.description, image_url=character.image_url).where(characters.c.id == id))
    return conn.execute(characters.select().where(characters.c.id == id)).first()

@character.delete(
    "/{id}",
    tags=["characters"],
    status_code=HTTP_204_NO_CONTENT
)
def delete_character(id: int):
    conn.execute(characters.delete().where(characters.c.id == id))
    return conn.execute(characters.select().where(characters.c.id == id)).first()