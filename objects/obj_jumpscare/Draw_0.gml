
var _videoData = video_draw();
var _videoStatus = _videoData[0];

timer += 1;

if (_videoStatus == 0) // playing without error
{
    // draw surface that captures video frame
    draw_surface(_videoData[1], 30, 30);

}

if (timer >= time_limit) {
		room_goto(room_bedroom);
	}