'use strict'

class FullViewportHeight
	constructor: (@$minHeightEl=null, @id='full-viewport-height-stylesheet', @selector='full-viewport-height') ->
		@$window = $(window)
		@stylesheet = document.createElement('style')

		# If there is a specified $minHeightEl then accept query string or DOM object for $minHeightEl
		if @$minHeightEl && (@$minHeightEl instanceof jQuery) == false
			@$minHeightEl = $( @$minHeightEl )

		@appendStylesheet()

		@$window.on('resize.fullViewportHeight', =>
			@stylesheet.innerHTML = @getStyles()
		)

	appendStylesheet: ->
		headEl = document.getElementsByTagName('head')[0]
		@stylesheet.setAttribute('id', @id)
		@stylesheet.innerHTML = @getStyles()
		headEl.appendChild(@stylesheet)

	getMinHeight: ->
		if !@$minHeightEl || @$minHeightEl.length == 0
			return 0
		else 
			totalHeight = 0
			@$minHeightEl.each((i, el) ->
				totalHeight += $(el).height()
			)
			return totalHeight


	getStyles: ->
		winHeight = @$window.height()
		minHeight = @getMinHeight()
		height = if minHeight > winHeight then minHeight else winHeight
		return ".#{@selector} { height: #{height}px; }"

new FullViewportHeight('#main-navigation, .local301-main-top-bar')