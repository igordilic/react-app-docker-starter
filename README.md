This is a wrapper around create-react-app. It should work inside a docker image to ensure the same environments for every developer.
Usage:
- dev mode: `./start dev` and point your browser to `localhost:3000`
- prod mode (production build): `./start prod` and point your browser to `localhost:8080`
- test mode: `./start test`
- bring services down: `./start down`