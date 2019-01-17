document.addEventListener 'turbolinks:load', ->
  messageSend = document.getElementById('messageSend')
  if (!!messageSend)
    messageSend.addEventListener 'click', (e) ->
      message = document.getElementById('message').value
      App.room.speak message
      console.log "success"
      return
    return
