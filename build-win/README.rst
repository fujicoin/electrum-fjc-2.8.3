How to compile Electrum-FJC executables on Windows
==================================================

| 
| 1. Install PyThon 2.7
| At this time, instruct the environment variable to be set.
| https://www.python.org/ftp/python/2.7.13/python-2.7.13.msi
| 
| 2. Install PyQt4
| Environment variables are set automatically.
| http://sourceforge.net/projects/pyqt/files/PyQt4/PyQt-4.11.1/PyQt4-4.11.1-gpl-Py2.7-Qt4.8.6-x32.exe
| 
| 3. Install PyWin32
| http://sourceforge.net/projects/pywin32/files/pywin32/Build%20219/pywin32-219.win32-py2.7.exe/download
| 
| 4. Download and unzip or git clone this rep. to c:\
| download -> unzip -> rename to c:\electrum\ : https://github.com/fujicoin/electrum-fjc/archive/master.zip
| git clone https://github.com/fujicoin/electrum-fjc.git  -> rename to c:\electrum\
| 
| 5. Launch CommandPrompt and do the following
::

    pip install -U wheel
    pip install -U setuptools win_inet_pton pyinstaller
    pip install -U pycryptodomex pgen ecdsa protobuf mnemonic hidapi
    pip install -U certifi chardet colorama dnspython idna jsonrpclib pbkdf2 pyaes pysocks qrcode requests six urllib3

| 6. Execute the following with CommandPrompt
::

    cd c:\electrum\hdmodules\btchip-git
    python setup.py install
    
    cd c:\electrum\hdmodules\keepkey-git
    python setup.py install
    
    cd c:\electrum\hdmodules\trezor-0.7.12
    python setup.py install

| 7. Let's go!
::

    cd c:\electrum
    pyrcc4 icons.qrc -o c:\electrum\lib\icons_rc.py
    pyrcc4 icons.qrc -o c:\electrum\gui\qt\icons_rc.py
    python setup.py install
    
    cd c:\electrum\build-win
    pyinstaller --noconfirm --ascii --name electrum-FJC-2.8.3.exe -w deterministic.spec
    
    # or for build on x86 OS
    cd c:\electrum\build-win
    pyinstaller --noconfirm --ascii --name electrum-FJC-2.8.3-x86.exe -w deterministic.spec
    
| 8. Electrum-FJC executable is in dist\ directory

|  
How to make installer
---------------------
| 1. Install NSIS
| http://nsis.sourceforge.net/Download
| Then you need to set the path in environment variables.
| 
| 2. Check version written in electrum.nsis file
| 
| 3. Make installer
| ``makensis electrum.nsis``
| # or for build on x86 OS
| ``makensis electrum-x86.nsis``
| Installer will be putted in dist\
| 
