CXX = g++
CXXFLAGS = -std=gnu++17 -O2 -pipe

ifeq ($(OS),Windows_NT)
    TARGET = bot.exe
    RM = del /Q
else
    TARGET = bot
    RM = rm -f
endif

SRC = bot.cpp

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRC)

clean:
	$(RM) $(TARGET)

