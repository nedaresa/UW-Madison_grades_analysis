# download uw madison courses data into the working directory
wget https://www.kaggle.com/Madgrades/uw-madison-courses#subjects.csv

#create uw medicince courses database
createdb uw-madison-courses

# migrate the SQLite database to PostgreSQL
pgloader ./uw-madison-courses/database.sqlite3 postgresql:///uw-madison-course

#get the list of courses offered by business school from 
https://bus.wisc.edu/current-student-resources/bba/study-abroad/incoming-exchange-students/courses
# Accounting and Information Systems (ACCT I S)
# Actuarial Science (ACT SCI)
# Finance, Investment and Banking (FINANCE)
# General Business (GEN BUS)
# International Business (INTL BUS)
# Management and Human Resources (M H R)
# Marketing (MARKETING)
# Operations and Technology Management (OTM)
# Real Estate and Urban Land Economics (REAL EST)
# Risk Management and Insurance (R M I)


#using the list of courses, get the subject_codes from subjects table:
# business_courses = ['231', '232', '233', '235', '236', '237', '238', '239', '241', '242']
