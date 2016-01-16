$ ->
    isMenuSliderVisible = () ->
        $("#menu-slider").hasClass "expanded"


    showMenuSlider = () ->
        $("#menu-slider").addClass "expanded"
        $("#menu-slider-horizontal-bar").addClass "expanded"
        $("#slider-glass-panel").fadeIn 350
        animateButton = () ->
            $("#menu-slider .swipe-button").addClass "is-active"
            $("#menu-slider-horizontal-bar .swipe-button").addClass "is-active"
        setTimeout animateButton, 350


    hideMenuSlider = () ->
        $("#menu-slider").removeClass "expanded"
        $("#menu-slider-horizontal-bar").removeClass "expanded"
        $("#slider-glass-panel").fadeOut 350
        animateButton = () ->
            $("#menu-slider .swipe-button").removeClass "is-active"
            $("#menu-slider-horizontal-bar .swipe-button").removeClass "is-active"
        setTimeout animateButton, 350


    $('#menu-slider .swipe-button, #menu-slider .grab-panel, #menu-slider-horizontal-bar').on 'click', (e) ->
        e.preventDefault()
        e.stopPropagation()
        if isMenuSliderVisible()
            hideMenuSlider()
        else
            showMenuSlider()


    $('#slider-glass-panel').on 'click', (e) ->
        e.preventDefault()
        e.stopPropagation()
        hideMenuSlider()


    $("#body").swipe
        swipeLeft: () ->
            if isMenuSliderVisible() == false
                showMenuSlider()
        swipeRight: () ->
            if isMenuSliderVisible()
                hideMenuSlider()
        treshold: 75
        fallbackToMouseEvents: false
