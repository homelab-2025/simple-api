from fastapi import FastAPI, HTTPException

app = FastAPI(title="Simple API")


@app.get("/")
async def root() -> dict[str, str]:
    return {"msg": "Hello World"}


@app.get("/hello/{name}")
async def say_hello(name: str) -> dict[str, str]:
    return {"msg": f"Hello {name}"}


@app.get("/health")
def health_check() -> dict[str, str]:
    return {"status": "healthy"}


@app.get("/error")
async def trigger_error() -> None:
    raise HTTPException(status_code=400, detail="Error triggered")
