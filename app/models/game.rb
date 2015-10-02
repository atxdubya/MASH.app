class Game < ActiveRecord::Base

	# belongs_to :user
	# has_many :cars, :houses, :spouses

	def self.solveit(params)

		cycle = 6

		cars = params[:cars]-["", nil]

		if cars.length == 0 then
			cars = ["No car? Too bad, you're walking."]
		end

		spouses = params[:spouses]-["", nil]
		
		if spouses.length == 0 then
			spouses = ["No spouse? Too bad, you need a friend."]
		end

		houses = params[:houses]-["", nil]

		if houses.length == 0 then
			houses = ["No house? Too bad, you're sleeping on the street."]
		end

		mashes = [cars, spouses, houses]

		@plight = Array.new(mashes.length)

		total_entries = houses.length + cars.length + spouses.length

		cycle_counter = 1

		mash_ndx = 0

		cell_ndx = 0

		nil_counter = 0

		loop do
			if cell_ndx == mashes[mash_ndx].length
				cell_ndx = 0
				mash_ndx += 1
				if mash_ndx == mashes.length
					mash_ndx = 0
				end
			end

			if mashes[mash_ndx][cell_ndx] != nil then
				if cycle_counter == cycle then
					@plight[mash_ndx] = mashes[mash_ndx][cell_ndx]
					mashes[mash_ndx][cell_ndx] = nil
					nil_counter += 1
					
					if nil_counter == total_entries then
						return @plight
					end
					
					cycle_counter = 1
				else
					cycle_counter += 1
				end
			end
			cell_ndx += 1
		end
	end
 end
