# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.

$('document').ready(->
	$('#log_in_sign_up').on('click', (e)->
		$('#createaccount').toggle('slide')
	)
)