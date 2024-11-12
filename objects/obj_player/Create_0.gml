dead = false;

if !variable_global_exists("dialogue_visible")
{
    global.dialogue_visible = false;
}

if !variable_global_exists("puzzle1_completed")
{
    global.puzzle1_completed = false;
}

if !variable_global_exists("puzzle2_completed")
{
    global.puzzle2_completed = false;
}

if !variable_global_exists("puzzle3_completed")
{
    global.puzzle3_completed = false;
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
y_vel = 0;
is_on_ground = false;
disable_step = false;
last_y = y;
time_off_ground = 0;