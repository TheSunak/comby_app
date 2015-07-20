class Combos

	def self.get_combos(firstname, lastname, domain)

		localpart = []

		#firstnamelastname
		localpart.push(("#{firstname}#{lastname}@#{domain}").downcase)

		#firstname
		localpart.push(("#{firstname}@#{domain}").downcase)

		#firstname.lastname
		localpart.push(("#{firstname}.#{lastname}@#{domain}").downcase)

		#lastname.firstname
		localpart.push(("#{lastname}.#{firstname}@#{domain}").downcase)

		#lastname_firstname
		localpart.push(("#{lastname}_#{firstname}@#{domain}").downcase)

		#firstname-lastname
		localpart.push(("#{firstname}-#{lastname}@#{domain}").downcase)

		#firstinitiallastname
		localpart.push(("#{firstname[0]}#{lastname}@#{domain}").downcase)

		#lastnamefirstname
		localpart.push(("#{lastname}#{firstname}@#{domain}").downcase)

		#firstinitiallastinitial
		localpart.push(("#{firstname[0]}#{lastname[0]}@#{domain}").downcase)

		#firstname_lastname
		localpart.push(("#{firstname}_#{lastname}@#{domain}").downcase)

		#lastname
		localpart.push(("#{lastname}@#{domain}").downcase)

		#firstinitial.lastname
		localpart.push(("#{firstname[0]}.#{lastname}@#{domain}").downcase)

		localpart

	end


	def self.get_valid_on_combos(combos)

		results = []

		combos.each do |email|
			begin
				results.push("#{email}, #{EmailVerifier.check(email)}")
			rescue
				results.push("There was an error with the email #{email}, please try again")
			end
		end

		results

	end

end
