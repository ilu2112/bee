$ ->
    resizeViewport = () -> $('#viewport').height $(window).height()
    $(window).resize resizeViewport
    resizeViewport()

    $("#viewport").mCustomScrollbar
        theme: "light"
        alwaysShowScrollbar: 1
        scrollInertia: 300
        mouseWheel:
            scrollAmount: 80
            normalizeDelta: true