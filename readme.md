# Scribble

![](https://dl.dropboxusercontent.com/s/8frf8rblw6pnpds/hipsterlogogenerator_1438007087793.png?dl=0)

is a Ruby on Rails application where users can read, write, and interact
with the best content all around the world. It is designed to be built, refined, and deployed over the course of four nights.

We will start off with two models: `Post` and `Comment`, and eventually
add in `User` with secure password authentication.

## Models + Migrations (due Wednesday)

- Create ERD for Post and Comment
- Create models for Post and Comment
- Create migrations for Post and Comment

## Views + Controllers (due Wednesday)

- Add views and controllers. Full CRUD/REST.
- Remember to add authenticity tokens to forms.
- Use strong params.

## Helpers (due Friday)

- Convert links, forms, etc. to helpers.

## Routes (due Friday)

- Implement nested routes.

## Sessions (due Friday)

- Add User model with authentication using Devise.
- Associate posts with users.

## Deploy (due Friday)

- Deploy to Heroku.

## Many-to-Many (Bonus)

- Create two additional models: Category and Tag.
  * Tag represents the join table between Post and Category.
- The Post show page should include...
  *  A linkable list of that Post's Categories.
    * When clicked, each Tag should link to its Category show page. 
  *  A form that allows you to create a Tag and/or Category.
    *  If the Category exists, it will create a tag for that post.
    *  If the Category does not yet exist, it will create that Category and create a Tag for that post.
    *  If the Category exists AND the post already has that Tag, nothing will happen.
- The Category show page should display all posts with that particular category.
