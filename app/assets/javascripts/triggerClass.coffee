'use strict'

$(document).on('click', '[data-trigger-class-click]', (evt) ->
	evt.preventDefault()
	$(this.getAttribute('data-trigger-class-click')).trigger('trigger-class-click')
)

$(document).on('trigger-class-click', '[data-trigger-class]', (evt) ->
	$this = $(this)
	$this.toggleClass($this.data('trigger-class'))
)