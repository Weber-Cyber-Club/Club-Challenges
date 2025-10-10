# Contributing
This document outlines the contribution standards set forth by the Weber State Cybersecurity Club. These standards ensure a safe, educational, and ethical environment for contributors. Within this file, you’ll find guidelines on repository usage, contribution procedures, formatting, and code of conduct.

## Becoming a Contributor
To become a contributor,  you have two main options—it really comes down to how involved in contributions you would like to be. For more regular maintainers of this repository, you can request to become a contributor on the Weber State Cyber Club Discord. To do this you would mention the @Github Admins  on Discord under the GitHub channel and request to join. Your other option, if you would just like to submit one or two challenges or labs, would be to do your pull request off of your own forked repository.

## Rules of Contributing
There have been branch rules implemented within this repository to keep all users from pushing code directly to main branches. For this reason, a staging branch has been made, which is where changes should be made initially. Then, you can open a pull request against this repository to merge it into the main branch. This code will then be reviewed by the users in the CODEOWNERS file. As long as there are not any changes made to other folders other than your own lab or challenge, and there is not any data that is found to be out of compliance with the [Allowable Use](#allowable-use) section, then your branch changes should be merged into the main branch.

**Example process for creating a new challenge (if you are already a contributor):**

    #Clone the repository to bring it down to your local machine
    git clone https://github.com/weber-cyber-club/Club-Challenges.git

    #Change branch to staging branch so you are allowed to commit changes
    git checkout staging

    #Make your desired changes

    #Stage all the files that you have made changes to so these changes will be committed
    git add -A

    #Add your commit message
    git commit -m “Some message”

    #Push your local commits to GitHub
    git push origin staging

    # Following this step you would go to GitHub and open a pull request, requesting to merge from staging to main.


## Allowable Use
Due to the type of content that we are covering in this course, there need to be some ground rules laid for acceptable use of this repository. In accordance with Article VII Section 1 of the Weber State Cyber Club's Constitution: "Members shall adhere to ethical standards in all club activities, avoiding any form of hacking, unauthorized access, or illegal activities." All contributors will be subject to this same clause in everything they contribute to this repository. Any violations of this clause will find the individual subject to any and all disciplinary actions listed under Article VII Section 2 of the Weber State Cyber Club's Constitution: "Any member found engaging in behavior that is unethical or illegal, or that reflects poorly on the Club, may be subject to disciplinary action, including suspension or expulsion, following a unanimous vote by the Executive Board and the Advisor."

As stated, any sort of unauthorized access or illegal activities will not be tolerated. This will be grounds for immediate removal from the club. Any person who engages in any illegal activity should consider themselves lucky if this is the only action taken against them. This is a club in association with Weber State University, as such, all individuals contributing to this project will be subject to all rules and regulations put in place by Weber State University.

We appreciate any contributions, however, all data of any form must be obtained legally and under proper authorization. Individuals must also have proper authorization to publish this data to an open medium. For any questions regarding the standing of a challenge or lab you would like to contribute please get in contact or the @Github Admins under the GitHub channel on the Weber State Cyber Club's Discord.

## Commits
All commits made by any individual should contain a clear well documented message on what has been done, such as explaining what files were changed, what was changed, and why they were changed. It is completely understandable if a commit is very limited in scope and just a few words are given for that commit. However, it is helpful for everyone else who is contributing if you make clear, well documented commits. Most commits for general contributors would likely look like this:
    Added medium password cracking challenge
This would be a completely reasonable commit message given by a contributor. We do not need every detail, but we would like to know what happened during each commit for version control reasons.

## Important Note on Executable Binaries
Individual contributors will not be allowed to upload executable binaries into any repositories. Any code that is executable either needs to be submitted as original source code, or in the case of a reverse engineering binary, the source code shall be submitted to the @GitHub Admins in the GitHub channel on the Weber State Cybersecurity Club Discord. The @GitHub Admins will then review the code, compile, and upload the code to your repository. If you would like to submit a reverse engineering challenge from another site, you will need to provide proof that this code is from a reputable challenge site. The code would need to have some sort of signed hash-file or a way for the admins of this repository to authenticate the source of the binary. A final note–any programs of any type that are uploaded to this repository should not require sudo privileges in order to run. If there are files that need to be installed, there will need to be a way to install them within a users home directory. There shall not be any programs written in this repository that would make any sort of changes to the core of any sort of operating system. For the safety of all those people involved in this repository and Weber State University, any executables not following these criteria will be denied.

## Important Note For Writing Challenges and Labs
All challenges and labs will have a README.md. This is a file written with markdown syntax. Files will need to match the criteria given under their respective Readme sections contained within this file.

## Challenge Layouts
All challenges should be placed under the [/Challenges/](/Challenges/) Folder. The challenge should be in its own folder which will be named the same as your challenge. Within this folder will be the files that will be used in the challenge, as well as a README.md file and an assets folder if you are going to be needing any images or extra assets for any part of the challenge. Within the README.md file, you should have the purpose of the lab, which will outline what the lab is looking to teach students, as well as all of the questions you would like students to answer. An example of this README.md file will be contained under [Challenges README Layout](#challenges-readme-layout). There should also be an associated answers file under [/Challenges/Answers/](/Challenges/Answers). The format of the /Challenges/Answers/ directory will be as follows: Inside of the /Challenges/Answers/ directory you will add a folder—contained within this folder will be a README.md file containing the answers to the questions of your challenge in the order they were given. Seeing this is not a lab, there is not a requirement of giving a walkthrough. As such, if you want to have a walkthrough, your challenge should be submitted as a lab. Labs are covered under [Lab Layouts](#lab-layouts). If you would like an example of a challenge layout please view [/Challenges/Passwords/Passwords-Medium](/Challenges/Passwords/Passwords_Medium/).

## Challenges Readme Layout

    # Challenge Title

    ## Purpose: Give a basic outline of why this challenge was created, and what students should learn.

    ### Question: Give questions for students to answer.

        Indent questions so students can copy and paste easily, especially if there are some values they will need to evaluate.

    Special messages should be bolded using **{Message}**

## Lab Layouts
The lab section of the repository will mostly be used for labs that will be presented at the Cyber Club meetings. Although, they do not need to be presented in order to be contributed. The main requirement to become a lab is that the given material must have an associated walkthrough. This is what sets a lab apart from a challenge. The layout for a lab walkthrough is given under [Walkthrough Layout](#walkthrough-layout). All labs will be contributed under the [/Labs/](/Labs/) directory in a folder named after the lab that you have contributed. Inside of this folder, there shall be all the required files needed to complete the lab. Also contained shall be a README.md file which will contain the lab walkthrough, as well as an optional assets directory which would contain any extra assets needed for the lab. If you would like an example of a lab walkthrough layout please view [/Labs/ProfCom/](/Labs/Profcom/).

## Walkthrough Layout

    # Lab Title

    ## Purpose: Explain why this lab was created—what will this teach students?

    ## Background: How has this lab been created? What kind of environment is it in? What machines are contained in the lab? Is there anything students should know about the technologies or protocols being used? Basically, give background on the topic being covered, and give students a high level overview on how to replicate the lab environment.

    ## Lab Guide: Begin stepping through your lab. Go through all the files being used in the lab itself. Explain, if applicable, what the files are, how they have been made, why they are important. Then, act upon the files.

    ## Questions (If Applicable): There should always be some questions given in the lab. At least have questions that are results from steps taken in the lab to give the students a knowledge check.
 
        Indent questions so students can copy and paste easily, especially if there are some values they will need to evaluate.

    ## Conclusion: Give a final summary of what has been done in this lab. Let students know the topics they have covered. Let the students know possible next steps, or resources where they could deepen their knowledge of this topic if it is something that interests them.

    Special messages should be bolded using **{Message}**

    ### Answers: This section will contain all of the answers to any questions asked within the lab. Be sure to give an explanation of the answer if it is not a cut and dry question and answer. The answers will go here instead of right after the questions to give the students a chance to answer the questions without seeing the answers right away.

## Wrap Up
As mentioned previously, the Cyber Club appreciates any contributions to our club. Any way that an individual can find a way to help as always appreciated. However, we do ask that all contributions do fall under a certain set of guidelines, this allows the club to continue helping students in the smoothest way possible, and also ensure the safety of any and all students that want to use this platform to learn. Thank you for your willingness to help the club. We hope to see your contributions soon!

## Contact Information
For any further questions or concerns please contact the @GitHub Admins group within the Weber State Cyber Club’s Discord server under the GitHub channel. This will be the main group responsible for all inquiries regarding this GitHub repository.


