
## Installation

Install my project with **Docker**


Build image 
```bash
    docker image build -t doc-hoster . 
```


Start container on port 3000
```bash
    docker container run -d -p 3000:80 doc-hoster
```

Or, you can just:
```bash
    docker compose up --watch
```
    

