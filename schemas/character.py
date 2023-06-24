from typing import Optional
from pydantic import BaseModel

class Character(BaseModel):
    id: Optional[str]
    name: str
    constellation: str
    rank: str
    description: str
    image_url: str