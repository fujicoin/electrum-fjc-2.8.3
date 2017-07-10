export WINEPREFIX=/opt/wine64
PYHOME=c:/python27
PYTHON="wine $PYHOME/python.exe -OO -B"
$PYTHON -m pip install -U wheel
$PYTHON -m pip install -U setuptools win_inet_pton
$PYTHON -m pip install -U pycryptodomex pgen ecdsa protobuf mnemonic hidapi
