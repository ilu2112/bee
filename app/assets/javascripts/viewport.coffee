$ ->
    resizeViewport = () -> $('#viewport').height $(window).height()
    $(window).resize resizeViewport
    resizeViewport()

    isMobile = {
        Android: () -> navigator.userAgent.match(/Android/i) != null
        BlackBerry: () -> navigator.userAgent.match(/BlackBerry/i) != null
        iOS: () -> navigator.userAgent.match(/iPhone|iPad|iPod/i) != null
        Opera: () -> navigator.userAgent.match(/Opera Mini/i) != null
        Windows: () -> navigator.userAgent.match(/IEMobile/i) != null
        any: () -> (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows())
    }

    if isMobile.any() == false
        $('#viewport').perfectScrollbar
            suppressScrollX: true
