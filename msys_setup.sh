# Update before installing
pacman -Syu
pacman -Su
# Install msys packages
pacman -S \
       base-devel \
       pactoys \
       git
# Install development packages
pacman -S \
       mingw-w64-ucrt-x86_64-make \
       mingw-w64-ucrt-x86_64-gcc \
       mingw-w64-ucrt-x86_64-cmake \
       mingw-w64-ucrt-x86_64-gdb \
       mingw-w64-ucrt-x86_64-python-pip \
       mingw-w64-ucrt-x86_64-python-numpy
# Install emacs packages
pacman -S \
       mingw-w64-ucrt-x86_64-emacs \
       mingw-w64-ucrt-x86_64-grep \
       mingw-w64-ucrt-x86_64-diffutils \
       mingw-w64-ucrt-x86_64-ghdl-llvm \
       mingw-w64-ucrt-x86_64-tidy \
       mingw-w64-ucrt-x86_64-libgccjit \
       mingw-w64-ucrt-x86_64-ghostscript \
       mingw-w64-ucrt-x86_64-emacs-pdf-tools-server \
       mingw-w64-ucrt-x86_64-hunspell \
       mingw-w64-ucrt-x86_64-hunspell-en \
       mingw-w64-ucrt-x86_64-python-pylint
# Install miscellaneous packages
pacman -S \
       mingw-w64-ucrt-x86_64-gnuplot
