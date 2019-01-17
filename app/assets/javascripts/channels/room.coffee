App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    console.log "connected action cable."
    # Called when the subscription is ready for use on the server

  disconnected: ->
    console.log "disconnected action cable."
    # Called when the subscription has been terminated by the server

  received: (data) ->
    messages = document.getElementsByClassName("message")
    messages[0].insertAdjacentHTML('beforebegin', data['message'])

  speak: (message) ->
    console.log message
    @perform 'speak', message: message
