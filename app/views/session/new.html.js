$('#flash').text('<%= raw(flash[:error]) || raw(flash[:notice])%>')