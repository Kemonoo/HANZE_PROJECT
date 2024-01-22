// Create Event
video = video_open("noah_new_eye_jumpscare.mp4");
audio = audio_play_sound(jumpscare_sound_final, 1, false);

timer = 0;
time_limit = 4 * room_speed;

// Draw Event
var _videoData = video_draw();
var _videoStatus = _videoData[0];

if (_videoStatus == 0) // playing without error
{
    // draw surface that captures video frame
    draw_surface(_videoData[1], 50, 50);
}



