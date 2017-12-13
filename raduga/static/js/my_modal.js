$(document).ready(function(){
    var text,
        info,
        photo,
        pos,
        modalText,
        modalPhoto,
        modalInfo,
        modalPos;

    $('#modal-contacts').on('shown.bs.modal', function () {
        $('#myInput').focus()
    });
    $(".modal-open").on("click", function () {
        text = $(this).children(".partner-text").html();
        info = $(this).children(".partner-info").html();
        info_short = $(this).children(".partner-info-short").html();
        photo = $(this).children(".partner-photo").html();
        pos = $(this).children(".partner-pos").html();
        $('#modal-contacts').modal('toggle');
        modalText = $('#modal-contacts .modalText').text(text);
        modalInfo = $('#modal-contacts .modalInfo').text(info);
        modalInfo_short = $('#modal-contacts .modalInfo-short').text(info_short);
        modalPhoto = $('#modal-contacts .modalPhoto').attr("src", photo);
        modalPos = $('#modal-contacts .modalPos').text(pos);
    });
    $('#modal-contacts').on('hidden.bs.modal', function () {
        text = "";
        info = "";
        photo = "";
        pos = "";
        modalText = "";
        modalInfo = "";
        modalInfo_short = "";
        modalPhoto = "";
        modalPos = "";
    });

    // MAP
    
    //Hamburger

    var forEach=function(t,o,r){if("[object Object]"===Object.prototype.toString.call(t))for(var c in t)Object.prototype.hasOwnProperty.call(t,c)&&o.call(r,t[c],c,t);else for(var e=0,l=t.length;l>e;e++)o.call(r,t[e],e,t)};

    var hamburgers = document.querySelectorAll(".hamburger");
    if (hamburgers.length > 0) {
        forEach(hamburgers, function(hamburger) {
            hamburger.addEventListener("click", function() {
                this.classList.toggle("is-active");
            }, false);
        });
    }


    $('body').on('submit', '#contact-form', function(e){
        e.preventDefault();
        var form = $(this)
        $.ajax({
            type: "POST",
            url: form.attr('action'),
            data: form.serialize(),
            success: function () {
                $('#modal-contacts').modal('toggle');
                form.find('input').val('');
                form.find('textarea').val('');
                $(".error-message").text('');
            },
            error: function (err) {
                var message = err.responseJSON.name[0];
                console.log(message, 'err');
                $(".error-message").text(message);
            }
        });
        return false
    });
});

$(document).ajaxSend(function(event, xhr, settings) {
    function getCookie(name)
    {
        var cookieValue = null;
        if (document.cookie && document.cookie != '')
        {
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++)
            {
                var cookie = jQuery.trim(cookies[i]);
                // Does this cookie string begin with the name we want?
                if (cookie.substring(0, name.length + 1) == (name + '='))
                {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
        return cookieValue;
    }
    function sameOrigin(url)
    {
        // url could be relative or scheme relative or absolute
        var host = document.location.host; // host + port
        var protocol = document.location.protocol;
        var sr_origin = '//' + host;
        var origin = protocol + sr_origin;
        // Allow absolute or scheme relative URLs to same origin
        return (url == origin || url.slice(0, origin.length + 1) == origin + '/') ||
            (url == sr_origin || url.slice(0, sr_origin.length + 1) == sr_origin + '/') ||
            // or any other URL that isn't scheme relative or absolute i.e relative.
            !(/^(\/\/|http:|https:).*/.test(url));
    }
    function safeMethod(method)
    {
        return (/^(GET|HEAD|OPTIONS|TRACE)$/.test(method));
    }
    if (!safeMethod(settings.type) && sameOrigin(settings.url))
    {
        xhr.setRequestHeader("X-CSRFToken", getCookie('csrftoken'));
    }
});

$(function () {
    $('#menu a').each(function () {
        var location = window.location.href;
        var link = this.href;
        if(location == link) {
            $(this).addClass('active');
        }
    });
});


$(window).scroll(function() {
    var scT = $(this).scrollTop();
    var offset = $(this).scrollTop() + $(window).height();
    var offsetW = $(window).width();
    // console.log($(this).scrollTop(), offset, offsetW);
    if (offset > 1600 && scT < 1400){$('.scT1200').fadeIn(500)} else{$('.scT1200').fadeOut(500)}
    if (offset > 2200 && scT < 1900){$('.scT1800').fadeIn(500)} else{$('.scT1800').fadeOut(500)}
    if (offset > 2700 && scT < 2500){$('.scT2300').fadeIn(500)} else{$('.scT2300').fadeOut(500)}
    if (offset > 4000 && scT < 3800){$('.scT3500').fadeIn(500)} else{$('.scT3500').fadeOut(500)}
    if (offset > 4300 && scT < 4050){$('.scT4000').fadeIn(500)} else{$('.scT4000').fadeOut(500)}

});
//google analytic
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-88860017-1', 'auto');
  ga('send', 'pageview');



// hidden PLANE
//
// var fff = $('.demos').hasClass('onScreen');
// if (fff == true ) {
//     setTimeout(function () {
//         $('.demos.onScreen div').fadeOut(1000);
//     }, 1500)
// };
//
// $(window).scroll(function() {
//     if ($(this).scrollTop() > 0) {
//         var fff = $('.demos').hasClass('onScreen');
//         if (fff == true ) {
//             setTimeout(function () {
//                 $('.demos.onScreen div').fadeOut(1000);
//             }, 1500)
//         };
//     }
// });
//
// $(window).scroll(function() {
//     var scT = $(this).scrollTop();
//     console.log(scT);
//     if ( scT>1200 && scT<1205 ) {
//         $('.scT1200').animate({opacity: 1 }, 1000).animate({opacity:0}, 1000)
//     } else if (scT>1800 && scT<1805) {
//         $('.scT1800').animate({opacity: 1 }, 1000).animate({opacity:0}, 1000)
//     }  else if (scT>2300 && scT<2305) {
//         $('.scT2300').animate({opacity: 1 }, 1000).animate({opacity:0}, 1000)
//     } else if (scT>3500 && scT<3520) {
//         $('.scT3500').animate({opacity: 1 }, 1000).animate({opacity:0}, 1000)
//     } else if (scT>4000&& scT<4025) {
//         $('.scT4000').animate({opacity: 1 }, 1000).animate({opacity:0}, 1000)
//     }
// });




