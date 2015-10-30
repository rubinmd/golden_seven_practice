Rails.application.routes.draw do
  get("/contacts", {controller:"contacts", action:"index"})
  get("/new_form", {controller:"contacts", action:"new_form"})
  get("/submit_new", {controller:"contacts", action:"submit_new"})
  get("/contacts/delete/:id", {controller:"contacts", action:"delete"})
  get("/contacts/view/:id", {controller:"contacts", action:"view"})
  get("/contacts/update/:id", {controller:"contacts", action:"update_form"})
  get("/update_contact/:id", {controller:"contacts", action:"update_contact"})
end
