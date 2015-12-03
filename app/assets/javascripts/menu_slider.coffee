$ ->
    $('#menu-slider .swipe-button').on 'click', (e) ->
        e.preventDefault()
        $("#menu-slider").toggleClass "expanded"
        $("#slider-glass-panel").fadeToggle 350
        animateButton = () -> $("#menu-slider .swipe-button").toggleClass "is-active"
        setTimeout animateButton, 350


    $('#slider-glass-panel').on 'click', (e) ->
        e.preventDefault()
        $("#menu-slider").removeClass "expanded"
        $("#slider-glass-panel").fadeOut 350
        animateButton = () -> $("#menu-slider .swipe-button").removeClass "is-active"
        setTimeout animateButton, 350
