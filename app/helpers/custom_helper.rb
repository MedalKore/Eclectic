module CustomHelper

	def list_custom_items
		@hemp = Hemp.find(@custom.hemp_id)
		@knot = Knot.find(@custom.knot_id)
		if @custom.main_bead_id
			@main_beads = Bead.find(@custom.main_bead_id)
		end
		if @custom.spacer_bead_id
			@spacer_beads = Bead.find(@custom.spacer_bead_id)
		end
		@pendant = Pendant.find(@custom.pendant_id)
		@clasp = Clasp.find(@custom.clasp_id)

	end
end
