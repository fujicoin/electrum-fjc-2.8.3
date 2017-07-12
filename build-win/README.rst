How to compile Electrum-FJC executables on Windows
==================================================


|1. Install PyThon 2.7
|At this time, instruct the environment variable to be set.
|https://www.python.org/ftp/python/2.7.13/python-2.7.13.msi
|
|2. Install PyQt4
|
|Environment variables are set automatically.
|
|http://sourceforge.net/projects/pyqt/files/PyQt4/PyQt-4.11.1/PyQt4-4.11.1-gpl-Py2.7-Qt4.8.6-x32.exe
|
|3. Install PyWin32
|http://sourceforge.net/projects/pywin32/files/pywin32/Build%20219/pywin32-219.win32-py2.7.exe/download

|4. Download and unzip or git clone this rep. to c:\deps
|make directory c:\deps
|download and unzip https://github.com/fujicoin/electrum-fjc/archive/master.zip
|git clone https://github.com/fujicoin/electrum-fjc.git
|
5. Launch CommandPrompt and do the following::

pip install -U wheel
pip install -U setuptools win_inet_pton
pip install -U pycryptodomex pgen ecdsa protobuf mnemonic hidapi

|
6. Execute the following with CommandPrompt::

    cd c:\deps\electrum-fjc\hdmodules\btchip-git
    python setup.py install
    
    cd c:\deps\electrum-fjc\hdmodules\keepkey-git
    python setup.py install
    
    cd c:\deps\electrum-fjc\hdmodules\trezor-0.7.12
    python setup.py install

|
7. Let's go!::

    cd c:\deps\electrum-fjc
    pyrcc4 icons.qrc -o c:\deps\electrum-fjc\lib\icons_rc.py
    pyrcc4 icons.qrc -o c:\deps\electrum-fjc\gui\qt\icons_rc.py
    
    cd c:\deps\electrum-fjc\build-win
    pyinstaller --noconfirm --ascii --name electrum-FJC-2.8.3.exe -w deterministic.spec

|
|8. Electrum-FJC executable is in dist\ directory


