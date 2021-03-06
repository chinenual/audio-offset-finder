audio-offset-finder
===================

A simple tool for finding the offset of an audio file within another
file. 

Uses cross-correlation of standardised Mel-Frequency Cepstral Coefficients,
so should be relatively robust to noise (encoding, compression, etc).

It uses ffmpeg for transcoding, so should work on all file formats
supported by ffmpeg.

Installation
------------

    $ pip install audio-offset-finder

Usage
-----

    $ audio-offset-finder --help
    $ audio-offset-finder --find-offset-of file1.wav --within file2.wav
    Offset: 300 (seconds)

Testing
-------

    $ nosetests

Dockerization
-------------

run ./build-docker to create a docker run container to isolate the python dependencies from your machine.  Run it via

    $ docker run chinenual/audio-offset-finder --rm -v "$PWD:/data" --find-offset-of /data/snippet.mp3 --within /data/audio.mp3

Adjust -v to match whereever your source audio files live.

Licensing terms and authorship
------------------------------

See 'COPYING' and 'AUTHORS' files.

The audio file used in the tests was downloaded from
[Wikimedia Commons](http://en.wikipedia.org/wiki/File:Tim_Berners-Lee_-_Today_-_9_July_2008.flac),
and was originally extracted from the 9 July 2008 
episode of the BBC [Today programme](http://www.bbc.co.uk/programmes/b00cddwc).
