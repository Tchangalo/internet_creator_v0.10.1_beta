from inc import app, socketio

application = app

if __name__ == "__main__":
    socketio.run(app)