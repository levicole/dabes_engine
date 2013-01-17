#ifndef __gameobjects_h_
#define __gameobjects_h_
#include "SDL/SDL.h"
#include "object.h"

typedef struct Thing {
    Object proto;
    float x;
    float y;
    int width;
    int height;
    float xvelo;
    float yvelo;
    int mass;
    float time_scale;
    Uint32 color;
    SDL_Rect (*rect)(void *self);
} Thing;

int Thing_init(void *self);
void Thing_calc_physics(void *self, int ticks);

typedef struct Game {
    Object proto;
    Thing *things[256];
} Game;

int Game_init(void *self);
void Game_calc_physics(void *self, int ticks);
void Game_destroy(void *self);

#endif
