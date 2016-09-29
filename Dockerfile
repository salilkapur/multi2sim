FROM nucar/multi2sim-build
MAINTAINER NUCAR

# Build Multi2Sim
RUN cd /tmp && git clone https://github.com/Multi2Sim/multi2sim.git && cd multi2sim && libtoolize && aclocal && autoconf && automake --add-missing && ./configure && make && make install
