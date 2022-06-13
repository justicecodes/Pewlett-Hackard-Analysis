# Pewlett-Hackard-Analysis
module 7 challenge

Pewlett Hackard is offering retirement packages to employees that meet certain qualifications. However, the company has realized that a large number of their employees meet those standards and are anticipating having many openings in the next years. So, a HR analyst, Bobby, is performing employee research to find out who may be retiring and how many positions in different departments may need to be filled. During his analysis, Bobby ran into other questions that he will need to discuss with his manager and provide further research on the employee databases provided.  

## Results:
- P-H decided that a mentorship program offered to veteran employees born in 1965 and close to retirement could be beneficial to keeping those employees longer. There are 1,549 employees who have been working at the company more than 5 years (from date 1998 or before) that would qualify. 
  - However, all of these employees, drawn from the original employee information file given, were born between 1-1-65 and 2-1-65, no later in the year. Note there may be information missing from the employee database provided. 
<img width="569" alt="count employees born 1965" src="https://user-images.githubusercontent.com/103595718/173280005-778f715c-c554-4bd4-bc66-4760fc3d57b6.png">
<img width="504" alt="employees born 2-2-65 to 12-31-65" src="https://user-images.githubusercontent.com/103595718/173280010-5549a3a7-67d0-4c07-ac28-ff2ca551ade7.png">
- Further analysis was done to show that most of these eligible mentors have the title of Senior Staff and a high number of Senior Engineers, showing they would be effective at helping employees in many introductory positions.
<img width="252" alt="mentors by title" src="https://user-images.githubusercontent.com/103595718/173280062-d34e7c95-cb44-4882-92cb-2350c93974b7.png">
- In the analysis of all employees eligible for retirement, the top two positions leaving are Senior positions which could create trouble for management of the company if many retire soon.
<img width="247" alt="retiring_employee_titles" src="https://user-images.githubusercontent.com/103595718/173280560-b59c70e0-1516-4277-b68a-f6034e89296e.png">
- There are 72,458 employees total born before 1956 and currently employed that are eligible for retirement. This is out of 300,024 total employees. 24% of all employees are eligible for retirement. 

## Summary:
After executing code and checking the results, Bobby has come up with inconsistencies and a question from each table created for his manager. A few questions and further research to help start explaining those questions are below:
- What's going on with the salaries, specifically low salaries for veteran and older employees?
  - Current employees eligible for retirement, born between 1952 and 1955 and hired before 1989 make an average of $52,961. 
  -  Current employees, hired between 1989 and 2000 (birth date not relevant) make an average of $52,995
  -  However, current employees hired after 1-1-2000 make an average of $54,205 even though they are younger and have less years experience. 
  <img width="469" alt="Screen Shot 2022-06-13 at 12 06 44 AM" src="https://user-images.githubusercontent.com/103595718/173283552-6a059c1d-f200-4232-8ee3-742d618c930e.png">
  
  ###### (Code example for determining average salary based on hire date above)

- Why are there only five active managers for nine departments, where are d001 (Marketing), d002 (Finance), d005 (Development), d006 (Quality Management) ?
  - This question cannot be answered by our analysis. Have these managers recently retired? Do these employees hold multiple positions with the company, and the manager position is not listed as the most recent?
- Why are some employees appearing twice in different departments?
  - Many employees with the company have had more than one position since being hired. 140,270 employees have had more than one title within their time at the company. 3014 employees have had 3 titles within their time at the company. Noone has had more than 3 titles total. 

<img width="526" alt="Screen Shot 2022-06-13 at 12 34 40 AM" src="https://user-images.githubusercontent.com/103595718/173286602-ce08a5cb-b5a2-4e12-b520-9be64e30fbff.png">


