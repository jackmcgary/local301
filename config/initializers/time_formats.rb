Date::DATE_FORMATS[:default] = '%m/%d/%Y'
Time::DATE_FORMATS[:pretty] = lambda { |time| time.strftime("%-m/%-d/%Y#{' %-I:%M%#p' if time != time.beginning_of_day}") }
Time::DATE_FORMATS[:full] = lambda { |time| time.strftime("%A, %B ") + time.strftime("%d").to_i.ordinalize + time.strftime(", %Y") }
Date::DATE_FORMATS[:full] = lambda { |time| time.strftime("%A, %B ") + time.strftime("%d").to_i.ordinalize + time.strftime(", %Y") }

Time::DATE_FORMATS[:simple] = lambda { |time| time.strftime("%-m/%-d/%Y") }
Date::DATE_FORMATS[:simple] = lambda { |time| time.strftime("%-m/%-d/%Y") }


Time::DATE_FORMATS[:context] = lambda { |time| time.strftime("%b %-d %-I:%M%#p") }
