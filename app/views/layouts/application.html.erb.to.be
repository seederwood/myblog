<!DOCTYPE html>
<html>
  <head>
    <title>MyBlog</title>

    <link href="https://fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:400,700" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <%= csrf_meta_tags %>

    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>

  <body>
    <header id="main_navigation" class="clearfix">
      <%= link_to "Ray Climie", root_path, class: "name" %>
      <nav>
         <% if user_signed_in? %>
            <%= link_to "New Article", new_article_path %>
            <%= link_to "New Project", new_project_path %>
        <% end %> -->
        <%= link_to "Posts", articles_path %>
        <%= link_to "Projects", projects_path %>
        <%= link_to "Contact", new_contact_path %>
        <% if user_signed_in? %>
          <%= link_to "Sign Out", destroy_user_session_path, method: :delete %>
        <% end %>
      </nav>
    </header>

    <%= yield %>

    <footer id="main_footer">
      <p class="copyright">&copy;2017 Ray Climie</p>
      <nav>
        <a href="http://twitter.com/buddycub" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a>
        <a href="http://github.com/seederwood" target="_blank"><i class="fa fa-github" aria-hidden="true"></i></a>
        <a href="https://www.linkedin.com/in/ray-climie-13a64013b/" target="_blank"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a>
      </nav>
    </footer>

  <%= js add_gritter(flash[:notice], title: "Blog Notification", sticky: false) %>
  </body>
</html>
