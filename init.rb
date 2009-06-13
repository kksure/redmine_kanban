require 'redmine'

Redmine::Plugin.register :redmine_kanban do
  name 'Kanban'
  author 'Eric Davis'
  url 'https://projects.littlestreamsoftware.com/'
  author_url 'http://www.littlestreamsoftware.com'
  description 'The Redmine Kanban plugin is used to manage issues according to the Kanban system of project management.'
  version '0.1.0'

  requires_redmine :version_or_higher => '0.8.0'

  menu(:top_menu,
       :kanban,
       {:controller => 'kanbans', :action => 'index'},
       :caption => :kanban_title)
end
