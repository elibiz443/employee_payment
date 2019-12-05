module EmployeePayment
	class GrossSalary
		def initialize(gross_salary_per_year, gross_salary_per_month, gross_salary_per_week, gross_salary_per_day, gross_salary_per_hour,
		hours_worked_per_day, nhif, nssf, helb, incentive, overtime) 
			@gross_salary_per_year = gross_salary_per_year
			@gross_salary_per_month = gross_salary_per_month
			@gross_salary_per_week = gross_salary_per_week
			@gross_salary_per_day = gross_salary_per_day
			@gross_salary_per_hour = gross_salary_per_hour
			@hours_worked_per_day = hours_worked_per_day
			@nhif = 550
			@nssf = 620
			@helb = 1200
			@incentive = 3400
			@overtime = 2800
		end
		
		def calculate_gross_salary_per_day
			@gross_salary_per_day = gross_salary_per_hour * hours_worked_per_day
		end

		def calculate_gross_salary_per_week
			@gross_salary_per_week = @gross_salary_per_day * 7
		end

		def calculate_gross_salary_per_month
			@gross_salary_per_month = @gross_salary_per_week * 4
		end

		def calculate_gross_salary_per_year
			@gross_salary_per_year = @gross_salary_per_month * 12
		end	
	end
end
