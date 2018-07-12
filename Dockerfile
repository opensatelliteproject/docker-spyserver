FROM ubuntu:18.04


RUN apt-get update && apt-get -y install gnupg

# Add Myriad RF PPA
RUN echo "deb http://ppa.launchpad.net/myriadrf/gnuradio/ubuntu xenial main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 22C627172ECB91FE
RUN apt-get update && apt-get -y install libairspy0 wget && apt-get clean

RUN ln -s /usr/lib/x86_64-linux-gnu/libairspy.so.0 /usr/lib/x86_64-linux-gnu/libairspy.so

# If Broken, check https://airspy.com/download/

RUN wget https://airspy.com/?ddownload=4262 -O spyserver-linux-x64.tgz

RUN tar -xvzf spyserver-linux-x64.tgz

EXPOSE 5555

CMD /spyserver