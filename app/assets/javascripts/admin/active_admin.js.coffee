#= require active_admin/base
#= require tinymce-jquery

$ ->
    tinymce.init
        selector: '.tinymce_editor'
        height: 300
        menubar: false
        apply_source_formatting: false
        image_caption: true
        image_dimensions: false
        image_title: true
        plugins: [
            'code link textcolor colorpicker image'
        ]
        toolbar: [
            'styleselect | bold italic | undo redo | forecolor backcolor | bullist numlist',
            'image | link | code'
        ]
        image_list: '/admin/content_images/list_images'