import os
import multiprocessing


HOST = os.environ.get("HOST", "0.0.0.0")
PORT = os.environ.get("PORT", "8000")

wsgi_app = "src.main:app"
worker_class = "uvicorn.workers.UvicornWorker"
workers = multiprocessing.cpu_count() * 2 + 1
bind = f"{HOST}:{PORT}"
accesslog = "-"  # Print access logs on standard output
errorlog = "-"  # Print error logs on standard output
loglevel = "info"  # Define log level (default : info)
logconfig_json = "log_conf.json"
