
!function(s){
    "use strict";
    s("#sidebarToggle, #sidebarToggleTop").on("click",function(e){
        s("body").toggleClass("sidebar-toggled"),
        s(".sidebar").toggleClass("toggled"),
        s(".sidebar").hasClass("toggled")&&s(".sidebar .collapse").collapse("hide")
    }),
    s(window).resize(function(){
        s(window).width()<768&&s(".sidebar .collapse").collapse("hide"),
        s(window).width()<480&&!s(".sidebar").hasClass("toggled")&&(s("body").addClass("sidebar-toggled"),
        s(".sidebar").addClass("toggled"),
        s(".sidebar .collapse").collapse("hide"))
    }),
    s("body.fixed-nav .sidebar").on("mousewheel DOMMouseScroll wheel",function(e){
        if(768<s(window).width()){
            var o=e.originalEvent,l=o.wheelDelta||-o.detail;this.scrollTop+=30*(l<0?1:-1),
            e.preventDefault()}
        }),
        s(document).on("scroll",function(){
            100<s(this).scrollTop()?s(".scroll-to-top").fadeIn():s(".scroll-to-top").fadeOut()
        })
    ,s(document).on("click","a.scroll-to-top",function(e){
        var o=s(this);
        s("html, body").stop().animate({
            scrollTop:s(o.attr("href")).offset().top
        },
        1e3,"easeInOutExpo"),e.preventDefault()
    })
}
(jQuery);