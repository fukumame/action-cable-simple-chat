# A Simple chat using the feature of action cable in rails5


## Overview
- This is the simple chat system using the feature of action cable in rails5

## Installation

### Install Docker middleware
- for mac user
  - https://docs.docker.com/docker-for-mac/
- for windows user
  - https://docs.docker.com/docker-for-windows/

### Deploy the container on docker
- The following commands should be executed to deploy this application as a container on docker

```
cd /path/to/your/workspace
git clone https://github.com/fukumame/action-cable-simple-chat.git
cd action-cable-simple-chat
./bin/docker-setup
docker-compose up
```

## Open the application with Browser
- To access this application, Open the following URL with any modern browser
  - http://localhost:3000