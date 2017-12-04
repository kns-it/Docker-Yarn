# Docker-Yarn

## Usage

To use this container change your working directory to your `yarn` project and run the container:

```bash
docker run --rm -v "$PWD":/home/yarn knsit/yarn:1.3.2 
```

To run for example the `dev` task start the container like this:

```bash
docker run --rm -v "$PWD":/home/yarn knsit/yarn:1.3.2 run dev
```
