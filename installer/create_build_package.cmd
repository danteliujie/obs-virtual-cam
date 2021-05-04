set build_dir_win32=..\..\obs-virtual-cam\build
set build_dir_win64=..\..\obs-virtual-cam_x64\build
set deps_path_win32=..\..\deps\Win32\bin
set deps_path_win64=..\..\deps\Win64\bin

xcopy /y /z /q %build_dir_win32%\src\virtual-source\Release\obs-virtualsource.dll ..\build-package\bin\32bit\
xcopy /y /z /q %deps_path_win32%\avutil-56.dll ..\build-package\bin\32bit\
xcopy /y /z /q %deps_path_win32%\swscale-5.dll ..\build-package\bin\32bit\

xcopy /y /z /q /e ..\locale\ ..\build-package\data\obs-plugins\obs-virtualoutput\locale\

xcopy /y /z /q %build_dir_win64%\src\virtual-output\Release\obs-virtualoutput.dll ..\build-package\obs-plugins\64bit\
xcopy /y /z /q %build_dir_win64%\src\virtual-source\Release\obs-virtualsource.dll ..\build-package\bin\64bit\
