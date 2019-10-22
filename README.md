To get up and running:

```

cp .env.example .env

docker-compose up --build

```

Connect to docker container:

```

docker exec -ti docker-alexa_app_1 bash

```

Run Alexa Demo:

```

python3 app.py

```
