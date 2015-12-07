$ ->
    resizeViewport = () -> $('#viewport').height $(window).height()
    $(window).resize resizeViewport
    resizeViewport()

    $("#viewport").mCustomScrollbar
        theme: "light"
        alwaysShowScrollbar: 1
        scrollInertia: 250
        mouseWheel:
            scrollAmount: 'auto'
