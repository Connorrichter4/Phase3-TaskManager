# Create a Task Manager

## Project Description

Create a task manager application with spring boot and spring Data JPA.

## Background

- The application will have UI in JSP.

- At least 4 JSP Pages -> create task, display tasks, delete tasks, and update task.

- Likely additional pages for login / registration, plus welcome page.

## Requirements

Important Notes:

- Project must be well organized in packages.
- Usage of DAO, DaoIMPL, Service, Entity, and custom exception handling
- All data must persist in the database. (User information should also be stored in database)
- User must be logged in before adding or seeing the tasks. (spring boot security is acceptable but not mandatory.)
- User must get registered, to perform the login.
- User must implement swagger to generate the docs and UI. (use the provided springfox module) Not Required
  Application RESTful API between UI and business logic is optional but not required. Not Required
- Either monolithic or microservice based architecture is acceptable.
  Important fields of this application:
- Task name (text box)
- Start date (date picker)
- End date (date picker)
- Description (text area)
- Email (text box)
- Severity (drop down) (High, medium, low)
- User (tasks should belong to a user)

## Technologies Used

- Eclipse/IntelliJ: An IDE to code for the application
- Java: A programming language to develop the prototype
- Git: To connect and push files from the local system to GitHub
- GitHub: To store the application code and track its versions
- Scrum: An efficient agile framework to deliver the product incrementally
- Specification document: Any open-source document or Google Docs

## Examples

### Login Page

![Login-page](https://user-images.githubusercontent.com/58124052/108869527-e880f900-75bc-11eb-8c35-56feb749eca8.png)

### Sign Up Page

![Signup-page](https://user-images.githubusercontent.com/58124052/108869529-e9198f80-75bc-11eb-98c0-665fbedc7152.png)

### Logout Page

![logout-page](https://user-images.githubusercontent.com/58124052/108869530-e9198f80-75bc-11eb-94ef-2151ff47b136.png)

### Display Tasks Page

![display-tasks](https://user-images.githubusercontent.com/58124052/108869531-e9198f80-75bc-11eb-80ee-9d33e66da97a.png)

### Create Task Page

![create-task](https://user-images.githubusercontent.com/58124052/108869533-e9198f80-75bc-11eb-9e9b-a3e6d7176c7c.png)

### Update Task Page

![update-task](https://user-images.githubusercontent.com/58124052/108869534-e9198f80-75bc-11eb-9494-13552886380b.png)

### Delete Task Alert

![deleted-task](https://user-images.githubusercontent.com/58124052/108869535-e9b22600-75bc-11eb-8b6b-1b3fce88839f.png)
