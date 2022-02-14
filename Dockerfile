#
# Dockerfile for compiler course (https://sifflez.org/lectures/compil/)
# This course is given by Pablo de Oliveira Castro.
#

# Prefered debian to ubuntu
FROM debian:10

# Installing dependencies
ARG LLVM_VERSION=7
ARG EDITORS=emacs vim
RUN apt-get -y update && \
    apt-get -y install --no-install-recommends \
    bash make libtool binutils libedit-dev \
    flex bison gdb git libboost-all-dev \
    llvm-${LLVM_VERSION}-dev clang-${LLVM_VERSION} llvm-${LLVM_VERSION}-tools \
    libz-dev autoconf \
    ${EDITORS} && \
    apt-get -y clean

# Running the shell at startup
CMD ["/bin/bash"]
