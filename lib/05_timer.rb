def time_string(a)
    minutes = a.to_i % 3600
    hours = (a - minutes) / 3600
    seconds = minutes.to_i % 60
    minutes = (minutes - seconds) / 60
    if hours < 10
        hours = "0" + hours.to_s
    else 
        hours = hours.to_s
    end
    if minutes <10
        minutes = "0" + minutes.to_s
    else
        minutes = minutes.to_s
    end
    if seconds < 10
        seconds = "0" + seconds.to_s
    else
        seconds = seconds.to_s
    end
    return hours + ":" + minutes + ":" + seconds
end