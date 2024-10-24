dead = false;

if !variable_global_exists("dialogue_visible")
{
    global.dialogue_visible = false;
}

disable_entrances = false;
step = round(max_speed / 60);
delta_sum = 0;
alarm[1] = 50;
paused = false;
puzzle_key = noone;
x_strength = 0;
y_strength = 0;
hide_pause_text = false;