# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
    topBtn = $('#page-top')
    footer = $('#footer')
    topBtn.hide()
    #スクロールが500に達したらボタン表示
    $(window).scroll (e)->
      if $(this).scrollTop() > 50
        topBtn.fadeIn()
      else
        topBtn.fadeOut()
      bottomY = 30
      $window = $(e.currentTarget)
      height = $window.height()
      scrollTop = $window.scrollTop()
      documentHeight = $(document).height()
      footerHeight = $('#footer').height()
      titleHeight = $('#title').height()
      bottomHeight = footerHeight + height + scrollTop + bottomY - documentHeight
      if scrollTop >= documentHeight - height - footerHeight + bottomY
        $('#page-top').css bottom: bottomHeight - bottomY + 40
      else
        $('#page-top').css bottom: bottomY
      if scrollTop <= titleHeight
        $('#header').fadeIn()
      else
        $('#header').fadeOut()
      return
    #スクロールしてトップ
    topBtn.click ->
      $('body,html').animate { scrollTop: 0 }, 300
    return

