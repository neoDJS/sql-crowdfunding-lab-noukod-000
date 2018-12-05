# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
"SELECT title, SUM(amount) FROM projects p JOIN pledges ON project_id = p.id group by title Order by title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
"SELECT name, age, SUM(amount) FROM users u JOIN pledges ON user_id = u.id group by name Order by name;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"SELECT title, (Sum(amount) - funding_goal) over_goal FROM projects p JOIN pledges ON project_id = p.id group by title Having (Sum(amount) - funding_goal) >= 0;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
"SELECT name, sum(amount) montant FROM users u INNER JOIN pledges ON user_id = u.id Group by name Order by montant, name;"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"SELECT category, amount FROM projects p JOIN pledges t ON t.project_id = p.id where category = 'music';"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
"SELECT category, SUM(amount) FROM projects p JOIN pledges t ON t.project_id = p.id where category = 'books' Group by category;"
end
