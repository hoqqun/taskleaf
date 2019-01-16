App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    alert data['message']

  speak: (message) ->
    console.log message
    @perform 'speak', message: message

document.addEventListener 'turbolinks:load', ->
  messageSend = document.getElementById('messageSend')
  messageSend.addEventListener 'click', (e) ->
    App.room.speak 'テスト'
    console.log "success"
    return
  return
