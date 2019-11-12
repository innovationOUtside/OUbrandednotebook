# OUbrandednotebook - TM112md demo

Customised Jupyter notebook with packages required to run demo of `md` flavoured notebooks derived from OU-XML under `jupytext`.

In privately shared repo, the majority of changes apply to block 2 unit 4.

Within the privately shared `tm112_nb_demo` directory, run the following:

`docker run --rm -p 8877:8888 -v $PWD:/home/jovyan/notebooks -e JUPYTER_TOKEN=tm112demo --name tm112demo ousefulcoursecontainers/oubrandednotebook:tm112md`

I *think* this works on Windows in PowerShell. For Windows command line, I think the following formulation is required:

`docker run --rm -p 8877:8888 -v %cd%:/home/jovyan/notebooks -e JUPYTER_TOKEN=tm112demo --name tm112demo ousefulcoursecontainers/oubrandednotebook:tm112md`

If you have problems mounting the local directory on Windows, use the absolute path:

`docker run --rm -p 8877:8888 -v C:\MyPath\MyDir:/home/jovyan/notebooks -e JUPYTER_TOKEN=tm112demo --name tm112demo ousefulcoursecontainers/oubrandednotebook:tm112md`

The commands will create a noteook server with auth token `tm112demo`. Quitting the container (which runs under the name `tm11demo` should delete it (`--rm`). The notebook server will be available on port `8877`. The local directory should be mounted into the `notebooks` directory in the container.


Dockerhub: ousefulcoursecontainers/oubrandednotebook:tm112demo
