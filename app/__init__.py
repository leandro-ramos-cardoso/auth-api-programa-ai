from flask import Flask, jsonify
from.extensions import init_extensions
from .routes.users import bp as user_bp

def create_app():
    app = Flask(__name__)
    app.config.from_object("config.Config")
    init_extensions(app)

    @app.get("/")
    def health():
        return jsonify({"status": "I'm running bro"})
    
    app.register_blueprint(user_bp)

    return app