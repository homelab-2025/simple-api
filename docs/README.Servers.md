## Servers

[README](../README.md)

### Uvicorn

[Uvicorn](https://www.uvicorn.org/) is a high-performance ASGI server implementation, built on top of `uvloop` and `httptools`. It’s designed for asynchronous Python web frameworks like **FastAPI**, **Starlette**, and **Django (with ASGI)**. Uvicorn supports HTTP/1.1, WebSockets, and HTTP/2 (with extensions). It's non-blocking and event-driven, which allows for efficient concurrency using `asyncio`.

Typical usage:

    uvicorn myapp:app --host 0.0.0.0 --port 8000

### Gunicorn

[Gunicorn](https://gunicorn.org/) is a pre-fork WSGI server that is synchronous by nature (it doesn't support asynchronous code directly). It is widely used in production with traditional Python web frameworks like **Flask** and **Django** (in WSGI mode). It spawns multiple worker processes to handle incoming requests, improving reliability and scalability on multi-core systems.

Typical usage:

    gunicorn myapp:app --workers 4 --bind 0.0.0.0:8000

### Using Gunicorn with Uvicorn

When using ASGI apps in production (like FastAPI), it's common to combine **Gunicorn** and **Uvicorn** using Uvicorn’s worker class. This setup allows Gunicorn to manage process-level concurrency, while Uvicorn handles asynchronous I/O inside each worker.

Typical usage:

    gunicorn myapp:app --workers 4 --worker-class uvicorn.workers.UvicornWorker --bind 0.0.0.0:8000
