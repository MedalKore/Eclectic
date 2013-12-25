# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->
	addACategory = $('#add_a_category')
	addCategory = $('#add_category')
	addCategory.on('click', ->
		text = addCategory.text()
		if text == 'Add Category'
			addACategory.show('highlight', null, 1000)
			$('#add_it_category').show().css('display', 'inline-block')
			addCategory.text('Nevermind')
		else
			addACategory.hide().removeAttr('style')
			$('#add_it_category').hide()
			addCategory.text('Add Category')
	)
	addItCategory = $('#add_it_category')
	addItCategory.on('click', ->
		newCategory = getchaSomeValue(addACategory)
		if newCategory == ''
		else
			$('#product_category').append("<option value='#{newCategory}' selected= 'selected'>#{newCategory}</option>")
			$('#add_a_category').hide().removeAttr('style')
			addItCategory.hide()
			addCategory.text('Add Category')
	)

$(document).ready -> 
	addSubCategory = $('#add_subcategory')
	addSubCategory.on('click', ->
		text = addSubCategory.text()
		if text == 'Add Sub-Category'
			$('#add_a_subcategory').show('highlight', null, 1000)
			$('#add_it_subcategory').show()
			addSubCategory.text('Nevermind')
		else
			$('#add_a_subcategory').hide().removeAttr('style')
			$('#add_it_subcategory').hide()
			addSubCategory.text('Add Sub-Category')
	)
	addItSubCategory = $('#add_it_subcategory')
	addASubCategory = $('#add_a_subcategory')
	addItSubCategory.on('click', ->
		newSubCategory = getchaSomeValue(addASubCategory)
		if newSubCategory == ''
		else
			$('#product_subcategory').append("<option value='#{newSubCategory}' selected= 'selected'>#{newSubCategory}</option>")
			$('#add_a_subcategory').hide().removeAttr('style')
			addItSubCategory.hide()
			addSubCategory.text('Add Sub-Category')
	)

getchaSomeValue = (element) ->
	element.val()

$(document).ready(->
	$('.delete').on("click", ->
		confirm('Are you sure you want to delete this product?')
		)
	)