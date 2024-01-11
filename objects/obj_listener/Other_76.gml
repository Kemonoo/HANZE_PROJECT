if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
        case "hit":
            audio_play_sound(snd_hit, 0, false);
        break;

        case "destroy":
            sequence_destroy(event_data[? "element_id"]);
        break;
    }
}