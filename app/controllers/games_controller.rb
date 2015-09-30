class GamesController < ApplicationController



	def index

		@cars = Car.show_cars 4
		@houses = House.show_houses 4
		@spouses = Spouse.show_spouses 4

	end

	def solveit
		# require 'pry'  (for debugging in the ruby rebel)
		# binding.pry    (for setting a breakpoint when using the ruby rebel)
		# byebug         (for setting breakpoint when in rails)

		cycle = 6  #( roll of the dice )

		# following are our mashes:
		# Note... on foreign code run .compact!
		# Otherwise, just one nil will cause a never ending loop!
		abode  = ["Manson", "Apartment", "Shack",nil, "House"].compact!
		wheels = ["Bus", "Bicycle", "Mercedes", "Geo", "Feet"]
		spouse = ["Julia", "Sponge Bob Square Pants", "Hillery", "Madonna", "Gilligan"]
		kids   = ['1','Twins', '3', 'Twin girls and twin boys!']

		mashes = [abode, wheels, spouse, kids]

		# plight = {abode:nil, wheels:nil, spouse:nil, kids:nil}    # this is a hash...
		plight = Array.new(mashes.length) # build a store for our answers here.

		# given above, the challenge is to use cycle to get plight
		# method is to iterate over the arrays, testing for nil and cycle_ndx = cycle
		# if not nil, update respective slot in plight with value and
		# set origin value to null, only increment index counter if origin not nil.
		# total when totalIncCounter = total entries in arrays... we are done.

		total_entries = abode.length + wheels.length + spouse.length + kids.length

		cycle_counter = 1  # when get to cycle then we extract a plight value
		mash_ndx			=	0  # keeps track of current mash
		cell_ndx			=	0  # keeps track of current cell in current mash
		nil_counter		=	0  # keeps track of total nils set. Determines end of game.

		#check range
		loop do  # loop over each successive array checking for nil.

			# index remediation: if we walked out of current mash...
			if cell_ndx == mashes[mash_ndx].length
				cell_ndx = 0
				mash_ndx += 1
				if mash_ndx == mashes.length
					mash_ndx = 0
				end
			end

			if mashes[mash_ndx][cell_ndx] != nil then # we have something to do
				if cycle_counter == cycle then # cell has data and is time to extract it
					# move the value into the plight,
					plight[mash_ndx] = mashes[mash_ndx][cell_ndx]

					# then set value to nil,
					mashes[mash_ndx][cell_ndx] = nil

					nil_counter += 1

					if nil_counter == total_entries then# we have the solution!
						#return plight
						break
					end

					# reset the cycle_counter
					cycle_counter = 1
				else # cell has data but we skipped over it
					cycle_counter += 1
				end
			end # go to next cell
			cell_ndx += 1
		end
	end


end
