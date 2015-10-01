class GamesController < ApplicationController



	def index

		@cars = Car.show_cars 2
		@houses = House.show_houses 2
		@spouses = Spouse.show_spouses 2

	end



	def solveit

		# require 'pry'  (for debugging in the ruby rebel)
		# binding.pry    (for setting a breakpoint when using the ruby rebel)
		# byebug         (for setting breakpoint when in rails)

		cycle = 6  #( roll of the dice )

		# following are our test mashes:
		# Note: We need to remove ["", nil], otherwise, just one nil or empty string
		#   will cause a never ending loop! Also note: an empty string returns nil!

		# abode  = ["Manson", "Apartment", "Shack",nil, "House"]-["", nil]
		# wheels = ["Bus", "Bicycle", "Mercedes", "Geo", "Feet"]-["", nil]
		# spouse = ["Julia", "Sponge Bob Square Pants", "Hillery", "Madonna", "Gilligan"]-["", nil]
		# kids   = ['1','Twins', '3', 'Twin girls and twin boys!']-["", nil]

#  params   This is a copy from byebug test on returned params hash
# {"utf8"=>"✓",
#  "authenticity_token"=>"KscWqG3yEAKTTSJELvpRSiy707aG2NABamNQcuT2HYuxikZ3o1qgh14nlEymvwxO2j3K0GyPQikw1hPqkpWblQ==",
#  "cars"=>["Toyota", "Ford"],
#  "spouses"=>["Brad Pitt", "Madonna"],
#  "houses"=>["apartment", "shack"],
#  "controller"=>"games",
#  "action"=>"solveit"}

		# Extract the game arrays from the params hash and if all the fields
		#    on a section of the game board are empty, give them a default entry.
		# Special note: mashes array must be modified to track each extracted array!
		houses = params[:houses]-["", nil]
		if houses.length == 0 then
			houses = ["No house? Too bad, you're sleeping on the street."]
		end

		cars = params[:cars]-["", nil]
		if cars.length == 0 then
			cars = ["No car? Too bad, you're walking."]
		end

		spouses = params[:spouses]-["", nil]
		if spouses.length == 0 then
			spouses = ["No spouse? Too bad, you need a friend."]
		end

		# Load mashes with the arrays we want to use in the order we want to use them.
		# See Special note above.
		mashes = [houses, cars, spouses]

		# Then build a store for our answers.
		plight = Array.new(mashes.length)

		# given above, the challenge is to use cycle to get plight
		# method is to iterate over the arrays, testing for nil and testing cycle_ndx = cycle
		# if not nil, update respective slot in plight with value and
		# set origin value to null, only increment index counter if origin not nil.
		# when totalIncCounter = total entries in arrays... we are done.

		# iterate over the mashes array to find the total entries

		total_entries = houses.length + cars.length + spouses.length
		# when we have time try to refactor the above with something like the following
		# mashes.each {|x| total_entries += x.length}

		cycle_counter = 1  # when get to cycle then we extract a plight value
		mash_ndx = 0  # keeps track of current mash
		cell_ndx = 0  # keeps track of current cell in current mash
		nil_counter = 0  # keeps track of total nils set. Determines end of game.

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
						break plight
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
