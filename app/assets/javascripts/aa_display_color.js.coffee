$colorBlock = $('<span class="color-block" />')

displayColor = ($elements) ->
  $elements.each ->
    $el = $(this)
    $html = $el.children()
    colors = $el.text()

    $el.html($html)

    colors.split('#').forEach (color) ->
      if color
        $colorBlock = $colorBlock.clone().css('background-color', '#' + color)
        $el.append($colorBlock)

$(document).ready ->
  displayColor($('.js-render-color').parent())
  displayColor($('.col-colors').filter('td'))
