expect = require('chai').expect
Phone = require('./helpers/require-all')

describe 'Should validate a', ->
	describe 'a uk phone with a', ->

		number = ''

		afterEach ->
			# Act
			result = Phone.validate(number, "44")

			# Assert
			expect(result).to.be.true

		it 'standard formatted number', ->
			# Arrange
			number = "+441954780888"

		it 'specially formatted number', ->
			# Arrange
			number = "+44 (0) 1954 780888"

		it 'national destination code starting with the optional digit', ->
			# Arrange
			number = "+44 020 3000 5555"

		it 'mobile number', ->
			# Arrange
			number = "+447400123456"

	describe 'brazilian phone with a', ->

		number = ''

		afterEach ->
			# Act
			result = Phone.validate(number, "55")

			# Assert
			expect(result).to.be.true

		it 'standard formatted number', ->
			# Arrange
			number = "+552198986565"

		it 'specially formatted number', ->
			# Arrange
			number = "+55 (21) 9898-6565"

		it 'national destination code starting with the optional digit', ->
			# Arrange
			number = "+55 021 9898-6565"

		it 'mobile number (extra digit)', ->
			# Arrange
			number = "+55 021 998986565"

		it 'mobile number (extra digit, from new batch)', ->
			# Arrange
			number = "+55 31 998986565"

	describe 'argentinian phone with', ->

		number = ''

		afterEach ->
			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

		it 'an average number from Buenos Aires', ->
			# Arrange
			number = "+54 11 87876565"

		it 'a number with a national destination code with 3 digits', ->
			# Arrange
			number = "+54 220 8787656"

		it 'a number with a rio negro destination code', ->
			# Arrange
			number = "+54 298 1234567"

		it 'a mobile number', ->
			# Arrange
			number = "+54 9 11 87876565"

	describe 'uruguayan phone with a', ->

		number = ''

		afterEach ->
			# Act
			result = Phone.validate(number, "598")

			# Assert
			expect(result).to.be.true

		it 'number with national destination code with 1 digit', ->
			# Arrange
			number = "+598 2 682 1202"

	describe 'chilean phone with a', ->

		number = ''

		afterEach ->
			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

		it 'number with destination national code 2', ->
			# Arrange
			number = "+56 2 98986565"

		it 'number with 7 digits', ->
			# Arrange
			number = "+56 35 9898656"

		it 'number with 6 digits', ->
			# Arrange
			number = "+56 35 989865"

		it 'number with destination national code 58', ->
			# Arrange
			number = "+56 58 9898656"

		it 'mobile number', ->
			# Arrange
			number = "+56 9 98986565"

	describe 'american phone with a', ->

		number = ''

		afterEach ->
			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

		it 'number', ->
			# Arrange
			number = "+1 201 9898656"

	describe 'canadian phone with a', ->

		number = ''

		afterEach ->
			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

		it 'number', ->
			# Arrange
			number = "+1 204 9898656"

	describe 'colombian phone with a', ->

		it 'land line number', ->
			# Arrange
			number = "+57 1 9898656"

			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

		it 'mobile number', ->
			# Arrange
			number = "+57 301 9898656"

			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

	describe 'ecuadorian phone with a', ->

		it 'land line number', ->
			# Arrange
			number = "+593 2 989 6565"

			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

		it 'mobile number', ->
			# Arrange
			number = "+593 92 989 6565"

			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

	describe 'peruvian phone with a', ->

		it 'land line number from metropolitan area', ->
			# Arrange
			number = "+51 1 989 6565"

			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

		it 'land line number', ->
			# Arrange
			number = "+51 41 989 656"

			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

		it 'mobile number', ->
			# Arrange
			number = "+51 989 656 565"

			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

	describe 'a paraguayan phone with a', ->

		it 'a number with 7 digits', ->
			# Arrange
			number = "+595 21 656 6565"

			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

		it 'a number with 6 digits and 3 digit area code', ->
			# Arrange
			number = "+595 535 566 565"

			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

		it 'a number with 6 digits and 2 digit area code padded with 0', ->
			# Arrange
			number = "+595 021 566 565"

			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

		it 'a number with 6 digits and 2 digit area code', ->
			# Arrange
			number = "+595 21 566 565"

			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

	describe 'a mexican phone with a', ->

		it 'a number with 8 digits', ->
			# Arrange
			number = "+52 81 1212 1212"

			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

		it 'a number with 7 digits', ->
			# Arrange
			number = "+52 222 566 6565"

			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

	describe 'a guatemalan phone with a', ->

		it 'land line number', ->
			# Arrange
			number = "+502 2222 1234"

			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

		it 'mobile number', ->
			# Arrange
			number = "+502 5555 1234"

			# Act
			result = Phone.validate(number)

			# Assert
			expect(result).to.be.true

describe 'Should not get a', ->

	it '"almost" mobile number from Colombia', ->
		# Arrange
		number = "+57 501 9898656"

		# Act
		result = Phone.validate(number)

		# Assert
		expect(result).to.be.false
