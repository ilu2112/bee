$ ->
    $('#menu-slider .swipe-button, #menu-slider-horizontal-bar .swipe-button, #menu-slider-horizontal-bar').on 'click', (e) ->
        e.preventDefault()
        e.stopPropagation()
        $("#menu-slider").toggleClass "expanded"
        $("#menu-slider-horizontal-bar").toggleClass "expanded"
        $("#slider-glass-panel").fadeToggle 350
        animateButton = () ->
            $("#menu-slider .swipe-button").toggleClass "is-active"
            $("#menu-slider-horizontal-bar .swipe-button").toggleClass "is-active"
        setTimeout animateButton, 350


    $('#slider-glass-panel').on 'click', (e) ->
        e.preventDefault()
        $("#menu-slider").removeClass "expanded"
        $("#menu-slider-horizontal-bar").removeClass "expanded"
        $("#slider-glass-panel").fadeOut 350
        animateButton = () ->
            $("#menu-slider .swipe-button").removeClass "is-active"
            $("#menu-slider-horizontal-bar .swipe-button").removeClass "is-active"
        setTimeout animateButton, 350
