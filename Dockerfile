FROM jupyter/base-notebook

COPY jupyter_custom_files/ jupyter_custom_files/

RUN chmod u+x jupyter_custom_files/jupyter_styling.sh

RUN jupyter_custom_files/jupyter_styling.sh
