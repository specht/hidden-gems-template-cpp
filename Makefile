CXX = g++
CXXFLAGS = -std=gnu++17 -O2 -pipe
TARGET = bot
SRC = bot.cpp

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET)
