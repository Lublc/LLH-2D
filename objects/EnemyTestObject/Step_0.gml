//Add rotation of sprite based on player location
//Add interactive button with object that sends you into another room with object instance spawned
//and a battle system, hp system, for that specific event

switch(state)
{
    case "watching":

        if (abs(x - PlayerTestObject.x) < 4 ||
            abs(y - PlayerTestObject.y) < 4)
        {
            target_x = PlayerTestObject.x;
            target_y = PlayerTestObject.y;

            state = "approach";
        }

    break;

    case "approach":

        if (abs(x - target_x) > spd)
        {
            x += sign(target_x - x) * spd;
        }
        else if (abs(y - target_y) > spd)
        {
            y += sign(target_y - y) * spd;
        }
        else
        {
            trail_index = array_length(PlayerTestObject.move_history);

            state = "follow";
        }

    break;

    case "follow":

        if (trail_index < array_length(PlayerTestObject.move_history))
        {
            var pos = PlayerTestObject.move_history[trail_index];

            if (point_distance(x, y, pos[0], pos[1]) < spd)
            {
                x = pos[0];
                y = pos[1];

                trail_index++;
            }
            else
            {
                var dir = point_direction(
                    x, y,
                    pos[0], pos[1]
                );

                x += lengthdir_x(spd, dir);
                y += lengthdir_y(spd, dir);
            }
        }

    break;
}