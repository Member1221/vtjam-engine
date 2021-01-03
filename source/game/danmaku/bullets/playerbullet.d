module game.danmaku.bullets.playerbullet;
import engine;
import config;
import game;

/**
    Player's bullet
*/
class PlayerBullet : Bullet {
private:

public:
    this(vec2 position, vec2 direction) {
        super(position, direction);
        this.isPlayerBullet = true;
        this.hitRadius = 8;
    }

    override void update() {
        this.rot = atan2(direction.y, direction.x)+radians(90);
        this.position -= (direction*12)*(deltaTime()*SPEED_MULT);
        super.update();
    }

    override void draw() {
        GameBatch.draw(GameAtlas["bullets"], vec4(position.x, position.y, 16, 16), vec4(0, 0, 16, 16), vec2(8, 8), rot);
    }
}