@echo off
cd %0\..\
echo Recompiling...
cd ../c
c_compiler\bin\g++ -s -Wfatal-errors -w -Wall qbx.cpp  libqb\os\win\libqb_0_980_000100.o  -D DEPENDENCY_AUDIO_OUT  parts\audio\out\os\win\src.a -lws2_32 -lwinspool parts\core\os\win\src.a -lopengl32 -lglu32 -lwinmm -lgdi32 -mwindows -static-libgcc -static-libstdc++ -D FREEGLUT_STATIC -lksguid -lole32 -lwinmm -ldxguid -o "..\..\EQUACAO2.exe"
pause
