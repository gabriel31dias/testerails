
É possivel gerar seeds para o banco usando o comando
 rails db:seeds

Para se pesquisar a vaga como descrito pode usado titulo, descrição, ou skills no parametro search

http://localhost:3000/recruiter/jobs?search=django

Para se autentificar use essa rota
 http://localhost:3000/v1/auth/login
passando esse objeto 

{
	"recruiter": {
	"email": "teste@teste",
	"password": "0030015529"
	}
}



ubmissions_path	GET	/submissions(.:format)	
submissions#index

POST	/submissions(.:format)	
submissions#create

submission_path	GET	/submissions/:id(.:format)	
submissions#show

PATCH	/submissions/:id(.:format)	
submissions#update

PUT	/submissions/:id(.:format)	
submissions#update

DELETE	/submissions/:id(.:format)	
submissions#destroy

recruiter_recruiters_path	GET	/recruiter/recruiters(.:format)	
recruiter/recruiters#index

POST	/recruiter/recruiters(.:format)	
recruiter/recruiters#create

recruiter_recruiter_path	GET	/recruiter/recruiters/:id(.:format)	
recruiter/recruiters#show

PATCH	/recruiter/recruiters/:id(.:format)	
recruiter/recruiters#update

PUT	/recruiter/recruiters/:id(.:format)	
recruiter/recruiters#update

DELETE	/recruiter/recruiters/:id(.:format)	
recruiter/recruiters#destroy

recruiter_jobs_path	GET	/recruiter/jobs(.:format)	
recruiter/jobs#index

POST	/recruiter/jobs(.:format)	
recruiter/jobs#create

recruiter_job_path	GET	/recruiter/jobs/:id(.:format)	
recruiter/jobs#show

PATCH	/recruiter/jobs/:id(.:format)	
recruiter/jobs#update

PUT	/recruiter/jobs/:id(.:format)	
recruiter/jobs#update

DELETE	/recruiter/jobs/:id(.:format)	
recruiter/jobs#destroy

auth_login_path	POST	/v1/auth/login(.:format)
