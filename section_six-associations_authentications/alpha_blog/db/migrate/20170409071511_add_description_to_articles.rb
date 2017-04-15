class AddDescriptionToArticles < ActiveRecord::Migration[5.0]
  def change
    #Adding a column, we are given an empty method by the rails geenerate add description to articles command.
    #Pass in what we are adding it to, what it is and what format it will be
    add_column :articles, :description, :text
    #What if we also want to put in a time stamp.
    #The names have to be created at or updated at otherwise rails will not track them
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
