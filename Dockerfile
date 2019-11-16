FROM ousefulcoursecontainers/oubrandednotebook:base

USER root

RUN apt-get update && apt-get install -y git gcc zip \
	&& pip install --no-cache Cython \
	&& pip install --no-cache nbtutor jupytergraffiti \
		git+https://github.com/mwouts/jupytext.git \
		git+https://github.com/rkern/line_profiler.git \
		ipyturtle git+https://github.com/uclmr/egal.git \
		flake8 pycodestyle pycodestyle_magic \
		pep8-naming flake8-bugbear flake8-docstrings flake8-builtins \
	&& jupyter nbextension enable collapsible_headings/main  \
	&& jupyter nbextension install --overwrite --sys-prefix --py nbtutor \
	&& jupyter nbextension enable --py --sys-prefix nbtutor \
	&& jupyter nbextension enable skip-traceback/main \
	&& jupyter nbextension enable --py ipyturtle \
	&& jupyter nbextension install --py --sys-prefix egal \
	&& jupyter nbextension enable --py egal \
	&& apt-get purge --auto-remove -y gcc git && apt-get clean

USER $NB_UID
