#include <iostream>

#include <Game.hpp>

void CheckForExit(sf::Window& window, sf::Event& event) {
    if (event.type == sf::Event::Closed)
            window.close();

    if (event.type == event.KeyPressed) {
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::Escape))
            window.close();
    }
}


int main() {
    sf::RenderWindow window(sf::VideoMode(800, 600), "Game 1", sf::Style::Titlebar | sf::Style::Close);
    sf::Event event;

    while (window.isOpen()) {
        while (window.pollEvent(event))
            CheckForExit(window, event);

        window.clear();

        window.display();
    }
}
