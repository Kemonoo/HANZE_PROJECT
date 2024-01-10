// Draw Event
var _videoData = video_draw();
var _videoStatus = _videoData[0];

if (_videoStatus == 0) // playing without error
{
    // draw surface that captures video frame
    draw_surface(_videoData[1], 50, 50);
    
    if (video_status(video) == video_pause() || video_status(video) == video_close()) // check if the video has ended
    {
        room_goto(room_bedroom); // transition to the specified room
    }
}