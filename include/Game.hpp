#ifndef GAME_H
#define GAME_H

#include <SFML/Graphics.hpp>
#include <SFML/System.hpp>
#include <SFML/Window.hpp>
#include <SFML/Audio.hpp>
#include <SFML/Network.hpp>

/**
 *  Class that acts as the Game engine.
 *  wrapper class
 * */

class Game {
private:
    void initVariables();
    void initWindow();

public:
    Game();
    virtual ~Game();

    // functions
    void update();
    void render();
};

#endif
