# Docker-Yarn

[![](https://images.microbadger.com/badges/version/knsit/yarn.svg)](https://microbadger.com/images/knsit/yarn "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/knsit/yarn.svg)](https://microbadger.com/images/knsit/yarn "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/commit/knsit/yarn.svg)](https://microbadger.com/images/knsit/yarn "Get your own commit badge on microbadger.com")
 
## Usage

To use this container change your working directory to your `yarn` project and run the container:

```bash
docker run --name yarn --rm -v "$PWD":/home/yarn knsit/yarn:1.3.2 
```

To run for example the `dev` task start the container like this:

```bash
docker run --name yarn --rm -v "$PWD":/home/yarn knsit/yarn:1.3.2 run dev
```

If you want to use this container on Windows with Powershell use this snippet:

```ps1
docker run --name yarn -v "$((pwd).Path):/home/yarn" --rm -p 8080:8080 knsit/yarn:1.3.2 run dev
```

## Exiting

If the task executed in the container exits, the container will also exit.
If you are starting a task which is continuously running (e.g. dev server with a watcher) you have to stop the container to exit the task.
The most convenient way to achieve this is to name the container (e.g. `--name yarn`) and stop it from a second terminal (`docker stop yarn`).
As the given scripts are all containing the switch `--rm` the container will be removed after you stop it.

## Port Binding

If you're running a dev server inside the container you have to expose the port binded by the server inside the container.
As there is no default port, the container does not expose any port by default.

To run a dev server which exposes port 8080 start the container like this:

```bash
docker run --name yarn --rm -p 8080:8080 -v "$PWD":/home/yarn knsit/yarn:1.3.2 run dev
```

_Remark: Keep in mind that the server has to bind to `0.0.0.0` instead of `localhost` to be able to access the server from outside the container!_
