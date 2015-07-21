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
		number_of_trues = 0
		count = 0

		combos.each do |email|
			begin

				if EmailVerifier.check(email)
					number_of_trues = number_of_trues + 1
				end

				results[count] = [:email => email, :valid => EmailVerifier.check(email)]

			rescue
				results[count] = [:email => email, :valid => "There was an error with #{email}"]
			end
		
		count = count + 1

		end

		if number_of_trues == 12
			return results = [[:email => "No Emails", :valid => "Nope, sorry :("]]

		else
			results	
		end
		

	end

end
