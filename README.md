### Quick start
<details>
<summary>Run mlflow locally on docker</summary>

```bash 
$ git clone https://github.com/onurtimur/mlflow-heroku-dev.git
$ cd mlflow-heroku-dev
$ export PORT=5000
$ docker build -t mlflow . && docker run -p ${PORT}:${PORT} mlflow
# visit the MLflow UI via http://0.0.0.0:5000```
```
</details>

<details>
<summary>Deploy and run mlflow on heroku</summary>

```bash 
$ git clone https://github.com/onurtimur/mlflow-heroku-dev.git
$ cd mlflow-heroku-dev
$ heroku create mlflow-heroku-somerandomnumber # name must be unique 
$ heroku stack:set container
$ git add . && git commit -m 'update for heroku deploy' && git push heroku master 
```
</details>

### Ref 
- Intro to Mlflow 
	- https://www.mlflow.org/docs/latest/index.html
	- https://medium.com/@jain.roh/ml-flow-basic-approach-part-1-logging-e528a92922f5
	- https://medium.com/@yuu.ishikawa/getting-started-with-mlflow-9c2f2543dce3
- Deploy app built from Docker Images to Heroku
	- https://devcenter.heroku.com/articles/build-docker-images-heroku-yml
	- https://devcenter.heroku.com/articles/container-registry-and-runtime
