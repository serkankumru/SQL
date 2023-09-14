--select * from  Applicant a 
--join CandidateApplicant ca 
--on ca.ApplicantId=a.Id
--where ca.CandidateId=1



select * from  Applicant a
join Job j on a.JobId=j.Id
where a.Id not in(
select a.Id from  Applicant a join CandidateApplicant ca on ca.ApplicantId=a.Id
where ca.CandidateId=1)