# Docker-Yarn

[![](https://images.microbadger.com/badges/version/knsit/yarn.svg)](https://microbadger.com/images/knsit/yarn "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/knsit/yarn.svg)](https://microbadger.com/images/knsit/yarn "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/commit/knsit/yarn.svg)](https://microbadger.com/images/knsit/yarn "Get your own commit badge on microbadger.com")
 
## Usage

To use this container change your working directory to your `yarn` project and run the container:

```bash
docker run --rm -v "$PWD":/home/yarn knsit/yarn:1.3.2 
```

To run for example the `dev` task start the container like this:

```bash
docker run --rm -v "$PWD":/home/yarn knsit/yarn:1.3.2 run dev
```
