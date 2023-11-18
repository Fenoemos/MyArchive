> # Google Advanced Data Analytics Professional Certificate

## **Course 4: Create the PACE strategy document, the hypothesis test code notebook & the executive summary**

by [Phattharachai Maichin](https://www.linkedin.com/in/phattharachai-m/)

Start date: 2023-11-15

Last edit: 2023-11-18
***
## List of contents:
- [Project background](#project-background)
  - [Your assignment](#your-assignment)
- [Scenario](#scenario)
- [My response](#my-response)
  + [PACE Strategy Document](https://docs.google.com/document/d/1pZ7NACOooi1SW5736v09r2yci2UQonnamJPZ3QX_s7k/edit?usp=sharing)
  + [Hypothesis Test Code Notebook](https://github.com/Fenoemos/MyArchive/blob/main/%5BProject%5D%20Coursera/Google%20Advanced%20Data%20Analytics%20Professional%20Certificate/Other_file/Activity_Course%204%20Waze%20project%20lab.pdf)
  + [Executive Summary](https://docs.google.com/presentation/d/1hMWdnV_mSJlGkVFnamuju0OUXASM3wW0uw-KaaZsT1I/edit?usp=sharing)

___
### Project background
Waze’s data team is working on the churn project. The following tasks are needed at this stage of the project:
  + Explore the project data
  + Implement a hypothesis test
     - Computing descriptive statistics
     - Conducting a two-sample hypothesis test
  + Communicate insights with stakeholders within Waze

#### Your assignment
You will conduct hypothesis testing on the data for the churn data. The data team has asked you to investigate Waze's dataset to determine which hypothesis testing method best serves the data and the churn project.
___
### Scenario
Your Waze team is nearing the midpoint of their project to develop a machine learning model to predict user churn. 
So far, you’ve completed a project proposal, and used Python to explore and analyze Waze’s user data. 
You’ve also used Python to create data visualizations. The next step is to use statistical methods to analyze and interpret your data. 

You receive a new email from Sylvester Esperanza, your project manager. Sylvester tells your team about a new request from leadership: to analyze the relationship between mean amount of rides and device type. 
You also discover follow-up emails from three other team members: May Santner, Chidi Ga, and Harriet Hadzic. 
These emails discuss the details of the analysis. A final email from Chidi includes your specific assignment: to conduct a two-sample hypothesis test. 

<sub><ins>**Email from Sylvester Esperanza, Senior Project Manager**</ins>

<sub>**Subject:** New Request - Analyze rides based on device type

<sub>**From:** “Sylvester Esperanza,” <ins>Sylvester@Waze</ins>

<sub>**Cc:** “May Santner,” <ins>May@waze</ins>; “Harriet Hadzic,” <ins>Harriet@waze</ins>; “Chidi Ga,” <ins>Chidi@waze</ins>

<sub>Hello, data team! 

<sub>Excellent work so far. The leadership team is impressed with the results, especially the analysis on the last report! 

<sub>On that note, they have requested a new deliverable be added to the initial project scope. They would like a statistical analysis of ride data based on device type. In particular, leadership wants to know if there is a statistically significant difference in mean amount of rides between iPhone® users and Android™ users. 

<sub>Should you conclude that the difference in mean amount of rides between iPhone users and Android users is statistically significant, please discuss next steps: what are your thoughts on strategies our team could implement to address these differences, such as improving user experience on a specific device? 

<sub>Many thanks! 

<sub>Sylvester Esperanza

<sub>Senior Project Manager

<sub>Waze

<sub><ins>**Email from May Santner, Data Analysis Manager**</ins>

<sub>**Subject:** RE: New Request - Analyze rides based on device type

<sub>**From:** “May Santner,” <ins>May@waze</ins>

<sub>**Cc:** “Harriet Hadzic,” <ins>Harriet@waze</ins>; “Chidi Ga,” <ins>Chidi@waze</ins>; “Sylvester Esperanza,” <ins>Sylvester@Waze</ins>

<sub>Thanks, Sylvester. 

<sub>It’s great to hear leadership is happy. I’m reminded again what a great data team we have! 

<sub>Please tell leadership we will provide them with this analysis in two weeks time. 

<sub><ins>@Chidi</ins>, my initial thought is for us to conduct a two-sample t-test to analyze the difference in the mean amount of rides between iPhone users and Android users. What do you think? 

<sub>Thanks, 

<sub>May Santner

<sub>Data Analysis Manager

<sub>Waze

<sub><ins>**Email from Chidi Ga, Senior Data Analyst**</ins>

<sub>**Subject:** RE: New Request - Analyze rides based on device type

<sub>**From:** “Chidi Ga,” <ins>Chidi@waze</ins>

<sub>**Cc:** “May Santner,” <ins>May@waze</ins>;“Harriet Hadzic,” <ins>Harriet@waze</ins>; “Sylvester Esperanza,” <ins>Sylvester@Waze</ins>

<sub>Hi all, 

<sub><ins>@May</ins>, I agree with you on hypothesis testing. We’ll share a summary of the results before we present to leadership. 

<sub>We’ll get started right away. 

<sub>Thank you,

<sub>Chidi Ga

<sub>Senior Data Analyst

<sub>Waze

<sub><ins>**Email from Harriet Hadzic, Director of Data Analysis**</ins>

<sub>**Subject:** New Request - Analyze rides based on device type

<sub>**From:** “Harriet Hadzic,” <ins>Harriet@waze</ins>

<sub>**Cc:** “May Santner,” <ins>May@waze</ins>;“Chidi Ga,” <ins>Chidi@waze</ins>; “Sylvester Esperanza,” <ins>Sylvester@Waze</ins>

<sub>I support this plan of action. Thank you all. 

<sub>Harriet Hadzic

<sub>Director of Data Analysis

<sub>Waze

<sub><ins>**Email from Chidi Ga, Senior Data Analyst**</ins>

<sub>**Subject:** New Request - Analyze rides based on device type

<sub>**From:** “Chidi Ga,” <ins>Chidi@waze</ins>

<sub>Hi there, fellow data guru! 

<sub>You’ve been handling all of this work really well, by the way. Excellent job. 

<sub>I was wondering if you’d like to try the hypothesis test on the user data yourself? Based on what you’ve shared with me, I’m confident you have all the skills and experience needed for this task. 

<sub>What do you think? 

<sub>Also, as I said in my email to May, you’ll need to draft an executive summary of the results to share with Harriet and the rest of the leadership team. 

<sub>Thanks so much! 

<sub>Chidi Ga

<sub>Senior Data Analyst

<sub>Waze
___
### My response
+ [PACE Strategy Document](https://docs.google.com/document/d/1pZ7NACOooi1SW5736v09r2yci2UQonnamJPZ3QX_s7k/edit?usp=sharing)
+ [Hypothesis Test Code Notebook](https://github.com/Fenoemos/MyArchive/blob/main/%5BProject%5D%20Coursera/Google%20Advanced%20Data%20Analytics%20Professional%20Certificate/Other_file/Activity_Course%204%20Waze%20project%20lab.pdf)
+ [Executive Summary](https://docs.google.com/presentation/d/1hMWdnV_mSJlGkVFnamuju0OUXASM3wW0uw-KaaZsT1I/edit?usp=sharing)
