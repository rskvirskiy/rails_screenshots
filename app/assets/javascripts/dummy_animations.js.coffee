updateClock = ->
  currentTime = new Date()
  currentHours = currentTime.getHours()
  currentMinutes = currentTime.getMinutes()
  currentSeconds = currentTime.getSeconds()

  currentMinutes = ((if currentMinutes < 10 then "0" else "")) + currentMinutes
  currentSeconds = ((if currentSeconds < 10 then "0" else "")) + currentSeconds

  timeOfDay = (if (currentHours < 12) then "AM" else "PM")

  currentHours = (if (currentHours > 12) then currentHours - 12 else currentHours)

  currentHours = (if (currentHours is 0) then 12 else currentHours)

  currentTimeString = currentHours + ":" + currentMinutes + ":" + currentSeconds + " " + timeOfDay

  document.getElementById("clock").firstChild.nodeValue = currentTimeString

$ ->
  if $('#clock').length > 0
    setInterval(updateClock, 1000)
