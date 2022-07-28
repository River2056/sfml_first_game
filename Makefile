all: compile link move

compile:
	g++ -c main.cpp src/*.cpp -I"C:/Users/user/cpp_libraries/SFML-2.5.1/include" -I"C:/Users/user/Desktop/cpp/sfml_first_game/include" -DSFML_STATIC

link:
	g++ *.o -o sfml_first_game -L"C:/Users/user/cpp_libraries/SFML-2.5.1/lib" -lsfml-graphics-s -lsfml-window-s -lsfml-system-s -lopengl32 -lfreetype -lwinmm -lgdi32 -lsfml-main

move:
	powershell "New-Item -Type directory -Path . -Name bin -Force"
	powershell "Move-Item *.o -Destination bin/"

clean:
	powershell "Remove-Item *.o, *.exe -Force"
	powershell "Remove-Item -Recurse -Force bin"
