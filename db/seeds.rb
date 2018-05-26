# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bank.destroy_all

Bank.create!([{ name: 'Nordea' },
              { name: 'Socgen' },
              { name: 'ZAO Unicredit' },
              { name: 'DNB' },
              { name: 'SWED' },
              { name: 'ABSA' },
              { name: 'KS(Bay)' }])

p "Created #{Bank.count} banks"

Activity.destroy_all

Activity.create!([{ name: 'No Activity' },
                  { name: 'QA Regression' },
                  { name: 'QA Test Execution' },
                  { name: 'QA Incidents Verification' },
                  { name: 'QA Test Design' },
                  { name: 'QA Management' }])

p "Created #{Activity.count} activities"

User.destroy_all

User.create!([
               { username: 'Asif', email: 'asif.aly@surecomp.com', password: '123456', password_confirmation: '123456' },
               { username: 'Balaji', email: 'balaji.venkatachalam@surecomp.com', password: '123456', password_confirmation: '123456' },
               { username: 'Surendhar', email: 'surendhar.murugan@surecomp.com', password: '123456', password_confirmation: '123456' },
               { username: 'Sharone', email: 'sharone.xavier@surecomp.com', password: '123456', password_confirmation: '123456' },
               { username: 'Rajiv', email: 'rajiv.kannan@surecomp.com', password: '123456', password_confirmation: '123456' },
               { username: 'Aasaithambi', email: 'aasaithambi.mathaiyan@surecomp.com', password: '123456', password_confirmation: '123456' },
               { username: 'Anjana', email: 'anjana.mary@surecomp.com', password: '123456', password_confirmation: '123456' },
               { username: 'Karthick', email: 'karthick.ravi@surecomp.com', password: '123456', password_confirmation: '123456' }
             ])

p "Created #{User.count} users"

Task.destroy_all

Task.create!([
               { bank_id: 1, project: 'allNETT 6.3 Upgrade', task_name: 'allNETT Offsite QA Patches' },
               { bank_id: 4, project: 'DNB SWIFT 2018', task_name: 'Offsite QA' },
               { bank_id: 5, project: 'SWED SWIFT 2018', task_name: 'Offsite QA' },
               { bank_id: 6, project: 'ABSA SWIFT 2018', task_name: 'Offsite QA' },
               { bank_id: 2, project: 'SOC SWIFT 2018', task_name: 'Offsite QA' },
               { bank_id: 7, project: 'allNETT 6.3 Upgrade', task_name: 'Offsite QA' },
               { bank_id: 3, project: 'AO UC Ongoing Up', task_name: 'Offsite QA' }
             ])

p "Created #{Task.count} tasks"

Assignment.destroy_all

Assignment.create!([
                     { task_id: 1, user_id: 4, task_date: '2018-02-04', notes: 'Test 1', activity_id: 3, hours: 9 },
                     { task_id: 4, user_id: 2, task_date: '2018-02-04', notes: 'Test 2', activity_id: 4, hours: 4.5 },
                     { task_id: 5, user_id: 1, task_date: '2018-02-05', notes: 'Test 3', activity_id: 5, hours: 4.5 },
                     { task_id: 7, user_id: 3, task_date: '2018-02-05', notes: 'Test 4', activity_id: 3, hours: 4.5 },
                     { task_id: 6, user_id: 5, task_date: '2018-02-06', notes: 'Test 5', activity_id: 4, hours: 4.5 },
                     { task_id: 3, user_id: 6, task_date: '2018-02-07', notes: 'Test 6', activity_id: 5, hours: 4.5 },
                     { task_id: 4, user_id: 1, task_date: '2018-02-08', notes: 'Test 7', activity_id: 3, hours: 9 },
                     { task_id: 2, user_id: 1, task_date: '2018-01-27', notes: 'Test 8', activity_id: 5, hours: 6.5 },
                     { task_id: 3, user_id: 2, task_date: '2018-01-28', notes: 'Test 9', activity_id: 4, hours: 4.5 },
                     { task_id: 7, user_id: 4, task_date: '2018-02-07', notes: 'Test 10', activity_id: 5, hours: 4.5 },
                     { task_id: 3, user_id: 3, task_date: '2018-02-06', notes: 'Test 11', activity_id: 5, hours: 3.25 },
                     { task_id: 2, user_id: 7, task_date: '2018-02-05', notes: 'Test 12', activity_id: 3, hours: 10.5 },
                     { task_id: 1, user_id: 5, task_date: '2018-02-04', notes: 'Test 13', activity_id: 4, hours: 4.5 },
                     { task_id: 4, user_id: 4, task_date: '2018-02-07', notes: 'Test 14', activity_id: 4, hours: 7.5 },
                     { task_id: 5, user_id: 1, task_date: '2018-02-08', notes: 'Test 15', activity_id: 2, hours: 9 },
                     { task_id: 7, user_id: 2, task_date: '2018-02-08', notes: 'Test 16', activity_id: 2, hours: 9 },
                     { task_id: 6, user_id: 3, task_date: '2018-02-07', notes: 'Test 17', activity_id: 3, hours: 9 },
                     { task_id: 3, user_id: 4, task_date: '2018-02-06', notes: 'Test 18', activity_id: 3, hours: 2 },
                     { task_id: 4, user_id: 3, task_date: '2018-01-29', notes: 'Test 19', activity_id: 5, hours: 3 },
                     { task_id: 2, user_id: 1, task_date: '2018-01-29', notes: 'Test 20', activity_id: 4, hours: 4 },
                     { task_id: 3, user_id: 2, task_date: '2018-02-06', notes: 'Test 21', activity_id: 3, hours: 3.75 },
                     { task_id: 7, user_id: 6, task_date: '2018-02-07', notes: 'Test 22', activity_id: 5, hours: 4.5 },
                     { task_id: 3, user_id: 8, task_date: '2018-02-07', notes: 'Test 23', activity_id: 4, hours: 4.5 },
                     { task_id: 2, user_id: 8, task_date: '2018-02-07', notes: 'Test 24', activity_id: 3, hours: 4.5 }
                   ])

p "Created #{Assignment.count} assignments"

Role.destroy_all

Role.create!([
               { title: 'QA Team Leader' },
               { title: 'allNETT Developer' },
               { title: 'IMEX Developer' },
               { title: 'Project Manager' }
             ])

p "Created #{Role.count} roles"

Contact.destroy_all

Contact.create!([
                  { name: 'Asaf Dahan', email: 'Asaf.Dahan@surecomp.com', role_id: 1 },
                  { name: 'Udi Lubelski', email: 'Udi.Lubelski@surecomp.com', role_id: 1 },
                  { name: 'Edi Oved', email: 'Edi.Oved@surecomp.com', role_id: 1 },
                  { name: 'Ludmila Gavrilenko', email: 'Ludmila.Gavrilenko@surecomp.com', role_id: 1 },
                  { name: 'Oded Tali', email: 'Oded.Tali@surecomp.com', role_id: 1 },
                  { name: 'Eitan Laufer', email: 'Eitan.Laufer@surecomp.com', role_id: 2 },
                  { name: 'Eti Mizarchi', email: 'Eti.Mizarchi@surecomp.com', role_id: 2 },
                  { name: 'Eliran Mersika', email: 'Eliran.Mersika@surecomp.com', role_id: 2 },
                  { name: 'David Malkian', email: 'David.Malkian@surecomp.com', role_id: 4 },
                  { name: 'Andrea Stromer', email: 'Andrea.Stromer@surecomp.com', role_id: 3 },
                  { name: 'Ron Gofman', email: 'Ron.Gofman@surecomp.com', role_id: 3 },
                  { name: 'Liron Orkun', email: 'Liron.Orkun@surecomp.com', role_id: 3 },
                  { name: 'Avi Boltanski', email: 'Avi.Boltanski@surecomp.com', role_id: 4 },
                  { name: 'Jacob Weiss', email: 'Jacob.Weiss@surecomp.com', role_id: 4 },
                  { name: 'Avihoo Elias', email: 'Avihoo.Elias@surecomp.com', role_id: 2 },
                  { name: 'Tanya Zaritsky', email: 'Tanya.Zaritsky@surecomp.com', role_id: 2 },
                  { name: 'Eli Rosenses', email: 'Eli.Rosenses@surecomp.com', role_id: 4 },
                  { name: 'Sabrina Gabay', email: 'Sabrina.Gabay@surecomp.com', role_id: 3 },
                  { name: 'Ester Horowitz', email: 'Ester.Horowitz@surecomp.com', role_id: 3 },
                  { name: 'Hadasa Friedman', email: 'Hadasa.Friedman@surecomp.com', role_id: 3 },
                  { name: 'David Porat', email: 'David.Porat@surecomp.com', role_id: 3 },
                  { name: 'Dror Sabbag', email: 'Dror.Sabbag@surecomp.com', role_id: 4 },
                  { name: 'Gili Sabbag', email: 'Gili.Sabbag@surecomp.com', role_id: 3 },
                  { name: 'Christopher Jiminez', email: 'Christopher.Jiminez@surecomp.com', role_id: 3 },
                  { name: 'Gabi Asher', email: 'Gabi.Asher@surecomp.com', role_id: 4 }
                ])

p "Created #{Contact.count} contacts"
