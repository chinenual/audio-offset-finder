FROM python:2

COPY . audio-offset-finder 

#  Fails trying to load numpy - run separate pip's instead
#RUN pip install audio-offset-finder 

RUN pip install scipy
RUN pip install numpy
RUN pip install scikits.talkbox

RUN apt-get update
RUN apt-get -y install ffmpeg

WORKDIR audio-offset-finder
RUN python ./setup.py build

RUN python ./setup.py install

CMD [ "python", "./bin/audio-offset-finder" ]
#CMD [ "bash" ]
