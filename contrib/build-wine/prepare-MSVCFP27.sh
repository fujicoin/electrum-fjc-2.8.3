#!/bin/bash

# Please update these links carefully, some versions won't work under Wine
MSVCFP27=https://electrum.fujicoin.org/VCForPython27.msi

# Install Microsoft Visual C++ Compiler for Python 2.7
wget -O VCForPython27.msi --no-check-certificate "$MSVCFP27"
wine msiexec /i VCForPython27.msi

