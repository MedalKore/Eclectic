$('#flash').text('<%= raw(flash.now[:error]) || raw(flash.now[:notice])%>')