// Draw Event
var _videoData = video_draw();
var _videoStatus = _videoData[0];

timer += 1;

if (_videoStatus == 0) // playing without error
{
    // Get the width and height of the room
    var roomW = room_width;
    var roomH = room_height;

    // Set the destination position and size for drawing the video surface
    var dest_x = 0;
    var dest_y = 0;
    var dest_width = roomW;
    var dest_height = roomH;

    // draw surface that captures video frame
    draw_surface_stretched(_videoData[1], dest_x, dest_y, dest_width, dest_height);
}

if (timer >= time_limit) {
    room_goto(room_bedroom);
}
