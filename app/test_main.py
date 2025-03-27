from fastapi.testclient import TestClient

from main import app

client = TestClient(app)


def test_read_root():
    response = client.get("/")
    assert response.status_code == 200
    assert response.json() == {"msg": "Hello World"}

def test_read_hello():
    response = client.get("/hello/User")
    assert response.status_code == 200
    assert response.json() == {"msg": "Hello User"}

def test_read_health():
    response = client.get("/health")
    assert response.status_code == 200
    assert response.json() == {"status": "healthy"}

def test_trigger_error():
    response = client.get("/error")
    assert response.status_code == 400
    assert response.json() == {"detail": "Error triggered"}