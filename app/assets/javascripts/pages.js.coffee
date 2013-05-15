jQuery ->
  $(document).foundation();
  
  $("body").on "click", '[data-scroll="smoothscroll"]', (e) ->
    $(this).scrollTo()
    e.preventDefault()
    false

  $.fn.scrollTo = ->
    locationHref = window.location.href
    elementClick = $(this).attr("href")
    destination = $(elementClick).offset().top
    $("html,body").animate
      scrollTop: destination
    , 400