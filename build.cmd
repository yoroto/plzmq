
# Create plzmq_i_glue.h and plzmq_i_glue.c from plzmq_i.pl
splfr --nocompile --keep plzmq_i.pl

# Build the main C file: plzmq_i.c
cl -I"%PROGRAMFILES%\SICStus Prolog VC12 4.3.2\include" -I"C:\Users\letuy\github\plzmq\lib\libzmq\4.1.3\include" -I. /MD /Ox -DSPDLL -DSP_RESNAME=plzmq -c plzmq_i.c -Foplzmq_i.obj

# Build the glue file: plzmq_i_glue.c
cl -I"%PROGRAMFILES%\SICStus Prolog VC12 4.3.2\include" -I"C:\Users\letuy\github\plzmq\lib\libzmq\4.1.3\include" -I. /MD /Ox -DSPDLL -DSP_RESNAME=plzmq -c plzmq_i_glue.c -Foplzmq_i_glue.obj

# Link
link.exe -nologo -dll /SAFESEH /NXCOMPAT /LIBPATH:"C:\Users\letuy\github\plzmq\lib\libzmq\4.1.3\Win32\Release\v140\static" kerne
l32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib Ws2_32.lib libzmq.lib pl
zmq_i.obj plzmq_i_glue.obj -OUT:plzmq.dll