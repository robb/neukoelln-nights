class Hipster extends Actor
  constructor: ->
    @name   = 'Hannes'
    @sprite = 'hipster'

    super

  animate: (frameCount) ->
    switch @state
      # Idle automation
      when 'typing'
        if frameCount % 3 is 0
          @spriteIndex = 1 + Math.floor(Math.random() * 4)
      else
        @spriteIndex = 0