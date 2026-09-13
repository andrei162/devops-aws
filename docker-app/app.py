import psutil
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def health_check():
    return jsonify({
        "status": "healthy",
        "service": "devops-aws-blueprint-api",
        "system_metrics": {
            "cpu_usage_percent": psutil.cpu_percent(interval=1),
            "memory_usage_percent": psutil.virtual_memory().percent
        }
    })

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
