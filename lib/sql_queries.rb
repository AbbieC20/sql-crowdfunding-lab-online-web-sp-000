def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  return "SELECT projects.title, SUM(pledges.amount) FROM projects INNER JOIN pledges ON projects.id = pledges.project_id GROUP BY projects.id ORDER BY title ASC"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  return "SELECT users.name, users.age, SUM(pledges.amount) FROM users INNER JOIN pledges on users.id = pledges.user_id GROUP BY users.id ORDER BY name ASC"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  return "SELECT projects.title, (SUM(pledges.amount) - projects.funding_goal) FROM projects INNER JOIN pledges ON projects.id = pledges.project_id GROUP BY projects.id HAVING SUM(pledges.amount) >= projects.funding_goal"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  return "SELECT users.name, SUM(pledges.amount) FROM users INNER JOIN pledges ON users.id = pledges.user_id GROUP BY users.id ORDER BY SUM(pledges.amount), users.name ASC"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  return "SELECT projects.category, pledges.amount FROM users INNER JOIN pledges ON users.id = pledges.user_id WHERE projects.category = 'music'"
  # [["music", 40], ["music", 24], ["music", 34], ["music", 12], ["music", 40], ["music", 40], ["music", 20], ["music", 230]])
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "Write your SQL query Here"
end
