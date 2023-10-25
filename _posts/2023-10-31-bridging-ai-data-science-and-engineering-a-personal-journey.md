---
layout: podcast-post
categories: agile-in-action-podcast
author: Bill Raymond
date: 2023-10-31
title: "Bridging AI data science and engineering: A personal journey"
twitter-text: ""
libsynUrl: https://directory.libsyn.com/episode/index/id/28424264
youtubeurl: ""
guest-details:
    - guest-name: Christos Hadjinikolis
      guest-title: Machine Learning Engineer at Vortexa
      guest-photo: /uploads/Christos-Hadjinikolis.jpeg
      guest-links:
          - guest-link-label: 🌎 Christos on LinkedIn
            guest-link-url: https://www.linkedin.com/in/christoshadjinikolis/
            fieldGroup: guest-links
          - guest-link-url: https://christos-hadjinikolis.github.io
            guest-link-label: 🌎 Christos' website
            fieldGroup: guest-links
          - guest-link-label: 🏢 Vortexa
            guest-link-url: https://www.vortexa.com
            fieldGroup: guest-links
          - guest-link-label: 🧑‍🏫 Andrew Ng, Coursera trainer mentioned in the podcast
            guest-link-url: https://www.coursera.org/instructor/andrewng
            fieldGroup: guest-links
          - guest-link-label: 🎙️ Mentioned Agile in Action podcast with Jeffrey Frederick and Douglas Squirrel
            guest-link-url: https://agileinaction.com/agile-in-action-podcast/2021/03/16/transform-your-conversations-transform-your-culture.an-interview-with-douglas-squirrel-and-jeffrey-fredrick.html
            fieldGroup: guest-links
      fieldGroup: guest-details
type: podcast
---
🤝 Unlock the full potential of your AI and ML teams

We are excited to welcome @Christos Hadjinikolis, Software Engineer at @Vortexa, to discuss his journey from a purely data science role to software engineering.

Christos and @Bill Raymond discuss these two unique roles and the importance of connecting them as a team to deliver repeatable and sustainable data pipelines and software solutions to meet customer needs.

Here is what you will learn:

✅ The role of data scientists

✅ The role of software engineering in machine learning efforts

✅ Collaboration challenges when data scientists and software engineers are not collaborating to deploy ML and AI solutions

🎉 The unique roles each team member plays to ensure consistency and maintainability

## Transcript
(transcripts are auto-generated, so please excuse the brevity)


###  [00:00:00] Introduction

[00:00:00] **Bill Raymond:** Hi, and welcome to the Agile in Action podcast. Today, I'm joined by Christos Hadjinikolis, and he is a machine learning engineer at Vortexa.

[00:00:10] **Bill Raymond:** Hi, Christos. How are you?


###  [00:00:11] Christos Hadjinikolis' Background

[00:00:11] **Christos Hadjinikolis:** Hi, Bill. Very happy to be here today. Thanks for the invitation. I was really looking forward to this one.

[00:00:17] **Christos Hadjinikolis:** Yeah, me too. And we're going to talk about bridging AI data science and engineering. And you're going to talk a little bit about your personal journey here. And I'm really excited about that. But before we get started, could you introduce yourself? Yep. Very happy to. As everyone has already heard I'm Christos. I am originally from the beautiful island of Cyprus, but I currently reside in London. I've been here since 2010 when I migrated to start my PhD. And I've been around, as I said for the past 14 years. And for the past three years, I've been I've been working for a company called uh, Vortexa, Vortexa Limited as a lead machine learning engineer.

[00:00:53] **Christos Hadjinikolis:** Vortexa is an AI driven energy intelligence company, and it's been my home, my professional home for the past three years.


###  [00:01:00] The Role of a Data Scientist

[00:01:00] **Bill Raymond:** For our audience on this podcast, we have not gone too deep into the role of a data scientist or what an AI and machine learning team look like. Can you start with the data scientist?

[00:01:12] **Christos Hadjinikolis:** Yep. Cutting right into chase, so much at stake, so much at stake in a definition, you get that wrong, everything goes down the drain. I was thinking about this very happy to start with a polished definition, like something that you would get from Wikipedia. But I also want to provide my own view of the whole thing.

[00:01:29] **Christos Hadjinikolis:** In general, a data scientist is somebody that is trained to extract insights from data. They will use processes, they'll use algorithms, they'll use systems to do so. And generally they are very good at it. And primary tool they use is basically statistics and machine learning. But one of the things that I really want to communicate about data scientists is how I see them in general, how, where do I place them in a team and in this data extraction journey.

[00:02:01] **Christos Hadjinikolis:** And I don't know if you've heard about the knowledge pyramid, that visual where you can see data at the very bottom, and then you have information, and then you have knowledge at the very top. I think of data scientists are sitting somewhere between data and knowledge. Some in the information layer, and I think they sit there because I why don't I assume that they're at the top, knowledge.

[00:02:23] **Christos Hadjinikolis:** I think that's because you need a little bit more domain expertise to interpret information and extract knowledge out of it. So I, I see data scientists basically sitting in that layer and another way I look at them is. Very close to the concept of a hacker but I guess I'm going to be given the opportunity to talk more about why I see them like that as we go along today.

[00:02:44] **Bill Raymond:** Sure. You're currently in the role of a machine learning engineer. Can you share what that role looks like and maybe just the outskirts of what an AI machine learning team looks like? And I know we're going to get more detailed later.


###  [00:02:59] The Role of a Machine Learning Engineer

[00:02:59] **Christos Hadjinikolis:** Yeah. Indeed, at the moment, I am leading a team that is composed of data scientists and engineers. I call myself a machine learning engineer. I think a machine learning engineer is somebody that sits between these two worlds, like bridging the gap between them. Yeah, to come back to your question data science team, a team that basically develops machine learning models is traditionally composed of people that understand data engineering, data engineers and data scientists.

[00:03:26] **Christos Hadjinikolis:** And machine learning engineering is basically a specialization of a software engineer that can account for the peculiarities, for the niche things that data science brings into the domain of software engineering.

[00:03:39] **Bill Raymond:** Can you provide an example of how a data scientist, for example, would work with the AI machine learning team? Just a basic example of that.


###  [00:03:48] Collaboration Between Data Scientists and Engineers

[00:03:48] **Christos Hadjinikolis:** Yeah. Suppose you want to develop a very simple system that predicts housing prices. The data scientists can go in get some data about from the housing market, do his analysis, develop a linear regression model, generate the predictions, provided some inputs about, the characteristics of a house.

[00:04:09] **Christos Hadjinikolis:** They can build a prototype, evaluate the model, everything is going to work fine. But the question then becomes. How do you productionize that? How do you get that into a production system and offer it to a potential user who's going to pay you in order to get these insights, find out what is the potential price of a house.

[00:04:25] **Christos Hadjinikolis:** This process is the bit that is covered by the software engineer. So they'll come in and they'll have to get the model that was built by the data scientist and expose it to production. And they'll have to make sure that the process by which data are processed. In order to be fed into the model, it's consistent with what the data scientist has done.

[00:04:44] **Christos Hadjinikolis:** So there's a little bit of a sync that needs to take place. Like the two worlds need to be in sync. The software engineer needs to understand exactly what the data scientist has done and expose his work in a productionized manner.

[00:04:59] **Bill Raymond:** Okay. So I think I get this, the data scientist is going to take the data, crunch the numbers understand the data at a deep level, transform the data. So that it works best with an AI and machine language model.

[00:05:11] **Christos Hadjinikolis:** Yes.

[00:05:11] **Bill Raymond:** Once the data scientist has some sort of data and model that the AI and machine learning team could work with, is it their role to then just start building the user interface so they can turn it into a product?

[00:05:21] **Christos Hadjinikolis:** Yes. You're painting a very nice picture. The one thing that it's very important to stress here is that it's not just about security or the UI and everything, being beautiful is about reproducibility is about robustness of the pipeline and maintenance, right?

[00:05:37] **Christos Hadjinikolis:** And there are aspects of their productionization work that are quite complicated and they have to do with. The engineering side of the world traditionally, just to give you a very simple example, it has to do with the tooling and the methods that data scientists use. I don't know if you know what is a Python notebook, a very very well known tool for experimentation purposes.

[00:05:59] **Christos Hadjinikolis:** It's like the right hand of a data scientist, they'll go in, they'll use their Python notebook to create beautiful charts, do all the work in there, that's fine. They'll do the prototyping, they'll create a model, it will be great. But that cannot go to production in production. You can't, you can expose a Python notebook in production, but traditional code bases, they are structured differently.

[00:06:21] **Christos Hadjinikolis:** An engineer needs to unit test code. They need to make sure that there's some sort of a deterministic behavior there, make sure that there's reproducibility. What if I want to upgrade the model tomorrow? Am I going to be able to maintain the existing behavior of my system? And when I expose this to a client, how can I bring in improvements to this process and not break the product?

[00:06:43] **Christos Hadjinikolis:** How can I abide by the SLAs that I've got in place with my clients? That's what you get from the software engineer. So the data scientist is there to get the prototype. That's in a successful state, generate a model and the engineer is there to get that model into production to provide a product that you can pass on to your market.

[00:07:04] **Bill Raymond:** You mentioned the word pipeline. And that got me thinking about my very first AI and machine learning project where I actually sat down and wrote the code to create a machine language model that could detect whether an image fed into it was a cat or a dog. 

[00:07:19] **Bill Raymond:** And I thought it was really fascinating that the amount of code that you had to write in order to do that, wasn't that significant. 

[00:07:27] **Bill Raymond:** All of the work was in that upfront part of manipulating the data. For example, you can't just take a photo of a cat and feed it into the system. You have to actually break it down and convert it to numbers. You shouldn't have images of different sizes. You have to kind of crop and manage those things. And so there was all this data manipulation that has to happen. So when you use the word pipeline, Are you referring to the reproducibility of that data manipulation. When you're getting information out of a system?


###  [00:07:56] Challenges in Productionizing Data Science Models

[00:07:56] **Christos Hadjinikolis:** Yeah, exactly. When I think about a pipeline, and in general, for the audience as well, for your listeners, like the idea of a pipeline is basically the process by which you will get the input of a specific house, in our example. That house is going to have certain properties, right? How big it is, how many windows it has, how many doors it has, where it is situated in the world.

[00:08:16] **Christos Hadjinikolis:** And data scientists, what they do is they extract features from these properties, right? And they'll do this in a Python notebook, of course, and they'll do it in a sloppy, in a hacky way. They'll put together some stuff and they'll generate the numerical vectors to get some numbers, basically.

[00:08:31] **Christos Hadjinikolis:** And these are the things that you feed into a machine learning model, either to train it or to generate a prediction. This process needs to be replicated. In order for you to productionize this process, imagine that you have a solution, uses that model in a production environment, in a webpage, for example, you would expect somebody to go in the webpage like Zoopla in the UK for example, and you would put in the characteristics of a property the postcode for example, and how big the house is supposed to be and whether it was refurbished, how many rooms it has, and a number of other things.

[00:09:01] **Christos Hadjinikolis:** And you click enter and you expect that after some seconds, you will see a price range, right? How do you get from the original input to the number behind the scenes? An engineer has gotten all these original inputs, converted them into that vector, fed that vector into a machine learning model.

[00:09:22] **Christos Hadjinikolis:** The model gave a response and he shows you that response on the web page. The calls to the model, the web page, the web UI, getting that input, all of that is the engineering side, right? The data scientists behind the scenes. It's just worrying about the model.

[00:09:36] **Bill Raymond:** Thank you. I really appreciate that. I think that will help the context here because there's two very different roles that you mentioned there, what the data scientist is doing and how the software team is going to work. So let's get into your story a little bit because you started off as a data scientist and I'm seeing two like very different, but important roles that do need to work well together if they're going to produce something that would be of value.

[00:10:04] **Bill Raymond:** So can you share a little bit about your journey going from a data scientist to moving into the engineering team, the software team?


###  [00:10:11] Christos' Transition from Data Scientist to Engineer

[00:10:11] **Christos Hadjinikolis:** Very happy to. So originally, as I said I migrated to the UK back in 2010 to do a PhD in computer science. It was four amazing years. I was able to really delve into my research. I was able to finish by the time we got to 2014 and at the time, my personal aspirations were to remain an academic.

[00:10:30] **Christos Hadjinikolis:** I wanted to do a postdoc. I wanted to become a lecturer. And as soon as I finished, I started applying for different positions. The same time I was maintaining a position as a teacher at a college, which I had obtained while trying to complete my PhD. And I was basically able to make a living out of it.

[00:10:49] **Christos Hadjinikolis:** The thing is, after about six months of trying and after many interviews over the, over a number of universities in the UK, I was not able to acquire a position. So I thought to myself, maybe I should give industry a try. I, I started looking into what else it is I could do. And after Googling a little bit, I remember reading a very influential blog by Harvard Business Review.

[00:11:14] **Christos Hadjinikolis:** It was titled Data Scientist, the Sexiest Job in the 21st Century. And it was written back in 2012. I was like, wow this is exactly what I want to do, right? I've got a PhD. I've done machine learning and graph analytics in my PhD. Maybe I should give this a try. And I remember at the time coming across the very famous Coursera course by Andrew Ng on machine learning, I registered and followed the whole course.

[00:11:38] **Christos Hadjinikolis:** I finished it and I then started applying for data science positions. And I don't know about your audience in the U.S. and how much they know about London, but in London specifically, there is an area close to old street where a number of startups have accumulated in that area. 

[00:11:56] **Christos Hadjinikolis:** So we call it the Mini Silicon Valley, and there's an event that takes place on an annual basis. It's called Milk Silicon Roundabout event, where many of these startups go there and people just go and, hand their CVs hoping to be invited to interview. So I did that. I received an invitation by I received many invitations by companies at the time, and I was happy to get a position at a new startup, a spin off within a company called Reply, which was called Data Reply.

[00:12:27] **Christos Hadjinikolis:** It was a consulting practice, and I was amongst the first people they hired as a data scientist. And I joined reply. I was a consultant and My journey began with basically being placed into different companies. I would join a company, work there for three months, prototype, deliver a model, then join another company, and in the meantime I would be getting certified in different technologies and being exposed to new things for me.

[00:12:54] **Christos Hadjinikolis:** Like Neo4j or Apache Spark or different languages, everything was up. And to me, the experience was quite shifting because I went from being a researcher where you can really delve on the details of a very specific problem, and be an expert. And I went to basically touching on so many different things.

[00:13:13] **Christos Hadjinikolis:** So yeah, it was quite interesting.

[00:13:15] **Bill Raymond:** Now, when you say you built these data models, I didn't hear you say putting them into production. 

[00:13:21] **Christos Hadjinikolis:** Yeah, exactly. This was actually the reason why I was jumping so much from one project to another, and it was quite frustrating to be honest, I was getting to learn a lot and, switching domains was somewhat frustrating, but it increased my breadth as well, and I was never able to realize how useful this would have been in my career until years later, but yeah, as you said, then the main.

[00:13:43] **Christos Hadjinikolis:** Recurrent problem was productionization. We had prototypes that we couldn't convince the clients that had hired us, despite the fact that they were saying that the prototypes were successful to productionize them. And the reason was that we our clients basically either lacked the culture or the infrastructure or the skills to make that happen.

[00:14:07] **Christos Hadjinikolis:** And to me, I remember it was quite frustrating. But this was bound to change. Around the third year I was with Reply, I remember I was doing some other things along the side. I was running a meetup called a fling meetup. It was about a stream processing challenger framework.

[00:14:25] **Christos Hadjinikolis:** And my company wanted to invest a lot in growing a community around it. And I was I was doing a presentation in one of the meetups. And I remember on the day four members from a team over at UBS had joined the meetup. They had attended the whole thing and they were very happy with with the presentation that I made.

[00:14:43] **Christos Hadjinikolis:** And I remember them reaching out to my boss on the preview on the next day. And they were asking whether I would be happy to join their team. And so I did. I joined them with great excitement and I started working on a project. A quite interesting one. The only thing I can say about it is that it involves graph analytics, but deep inside me, I was feeling like, I don't know how far this is going to go.

[00:15:03] **Christos Hadjinikolis:** It's going to be one more case of a prototype that doesn't make it to production. We hit the ground running. We I deliver some very nice results. And by the end of three months, I do a presentation to the whole team. And for the first time in my career, the manager that was responsible he comes to me and he says, Christos.

[00:15:20] **Christos Hadjinikolis:** Great graphs, great results. How about we put this to production? And, you know what they say, be careful what you wish for, right? Because for the first time, I'm like I'm going to do this now, but I'm not an engineer. I don't know how to do this. And I was very frank about it. I told him, I'm a data scientist.

[00:15:36] **Christos Hadjinikolis:** Like, how do I productionize this? I don't know how to do it. And he was like, don't worry about it. We're going to pair you with an engineer, and together you're going to make it happen. And I can tell you, this was like the most impactful uh, point in my career to this day, because he joined me with an amazing engineer, somebody with 25 years of software engineering experience, somebody that was a religious supporter of something called Extreme programming. It's like a culture of engineers that are very supportive of ideas that have to do with pair coding and sharing your knowledge and skills with others. Other things that have to do with testament development and all, but the thing is this guy was like a textbook that you learn from on a daily basis.

[00:16:23] **Christos Hadjinikolis:** Imagine every day I would go in. We would sit down, we would pair together, and he even had some amazing plugins to display the shortcuts on the keyboard that he would be using on the screen. So I wouldn't even have to shift my eyesight from the screen to his keyboard to learn how he was using the keyboard.

[00:16:41] **Christos Hadjinikolis:** Anyway, I learned so many things from this guy. And I started coding myself and, productionizing my own code day by day, I was understanding the challenges of engineering more and more. And he was always there to, correct me when I would make a mistake. Within a period of six months, we had a first version, an MVP which means, which stands for Minimal Viable Product.

[00:17:04] **Christos Hadjinikolis:** That we could present to somebody. And I always remember when I say MVP, that before I was exposed to engineering MVP always meant to me most valuable player, so yeah, it goes to say about how much I learned. So the experience. UBS was quite shifting for me. It's now the end of 2017.

[00:17:22] **Christos Hadjinikolis:** It's machine learning engineering is becoming a bit more popular as a term. Around the same time, there's a famous paper that comes out. It's called The Hidden Technical Debt in Machine Learning Systems by some Googlers. I'm reading that and this influences me even more. And it solidifies my shift to software engineering.

[00:17:41] **Christos Hadjinikolis:** After that, I joined Vodafone, I worked on a very a very interesting projects called the Infinity Platform, where we were trying to streamline the data science journey, like figure out exactly how to help data scientists iterate quickly and deliver results and give them the tools to do it. I never stayed there enough to finish it.

[00:18:00] **Christos Hadjinikolis:** I don't know what happened to that project. And I shifted to where I am today at Vortexa. And here I'm happy to say that, the combination of these experiences basically is what led me here. What gave me the opportunity to really practice all these learnings in my current position, helping and contributing to the development of machine learning systems here.

[00:18:20] **Bill Raymond:** That's a great story. Thank you. I love hearing these stories about people that are willing to take their time to help you through a process, understand the technology. And then all of a sudden you find yourself on a different career trajectory.

[00:18:33] **Christos Hadjinikolis:** For starters, let me say hi to Joe Schmitzer and thank him for all his support. If he's listening I will be forever indebted. In, in terms of, the things that I learned I think it's important to highlight challenges that have to do with what it means really to get involved with AI.

[00:18:54] **Christos Hadjinikolis:** What should be the mindset if if somebody wants to add AI and ML into their product which was basically the recurrent challenge that I had as a consultant I knew and understood a little bit about why our clients at the time were so hesitant to engage, but I was able to, really understand it when I started developing it myself.

[00:19:14] **Christos Hadjinikolis:** As I said, one of the big challenges is infrastructure challenges. And basically having the right development stack. The reason why this is necessary is because, even though it's not obvious machine learning systems rely on data. And they are therefore fundamentally different from software engineering projects.

[00:19:34] **Christos Hadjinikolis:** There's a strong coupling with data. And the reason is your models or your training pipelines, if you want, like the process by which you will train a model. And get the final output is not independent of the data that you use for it. That's why people say that 90 percent of data science work is cleaning data.

[00:19:52] **Christos Hadjinikolis:** They say that because a good model is going to be generated on the basis of that data. Depends on how much bias there is in that data and how much you find ways to balance it, for example. And as an engineer, what you need to do is make sure that whatever work you do is reproducible, but in this case, reproducibility also means not just versioning your code, having a way to update your code and, return to different versions of it.

[00:20:19] **Christos Hadjinikolis:** You need to do the same with data. So you need to version a specific. A snapshot of your code with a snapshot of data to make sure that these two together will generate a specific version of a model. And you need to always be able to do that. Traditionally, companies are going to use GitHub for their software.

[00:20:35] **Christos Hadjinikolis:** But what about data? You need different kinds of solutions to version data. And it's not that complicated, but the versioning is not just something that you do on its own. You need to couple the two. Coupling the two is crucial and therefore you need to turn to other tooling in the market that helps you do that.

[00:20:51] **Christos Hadjinikolis:** There's many tools that help you achieve things like that. But if the company doesn't have the skills to understand or the knowledge to include these things in its tech stack, they're not going to be able to do it. Then you have things like the need to monitor the performance of the model. You need to always bear in mind that a model may drift, something might change in the outside world, and therefore the market price of a house will also be impacted.

[00:21:17] **Christos Hadjinikolis:** How do you monitor the performance of your model? Monitoring and generating metrics about your monitoring becomes crucial as well. So there's another aspect that surrounds this piece of work. And then... When you figure out that your model is not working very well, you need to update it. So you need to maintain a process that will give birth to a new model and a way to bring that model into production as well.

[00:21:41] **Christos Hadjinikolis:** All these things were things that some companies didn't know how to do exactly. And to this day, some companies are challenged being challenged with this. The other big aspect that what became very clear to me had to do with cultural challenges. It had to do with a what you just said at the very beginning of our meeting today.

[00:21:59] **Christos Hadjinikolis:** Bridging the gap between skills and understanding that data engineers, software engineers have with data scientists, bringing these two different kinds of professionals together is not a simple thing to do. And there are many reasons for that. A very let's say Oh, Straightforward way of communicating it is to tell you a little bit more about why I think that data scientists are hackers.

[00:22:22] **Christos Hadjinikolis:** The way I see these two professionals is like this. Imagine that I'm a father and I've got two children. One of them is the data engineer, the software engineer. Let's say that the software engineer is a boy and let's say that the data scientist is the girl. Okay. Imagine walking into the room of the data engineer.

[00:22:40] **Christos Hadjinikolis:** I can already tell you that it's gonna be a very tidy room. Everything is gonna be organized. The bed is gonna be well made. The office is gonna be very well organized. The pencils are gonna be arranged in the proper order. Everything is gonna be shiny, right? Then you walk into the room of the data scientist.

[00:22:58] **Christos Hadjinikolis:** And what do you see is like chaos is you can't make where the desk is or where the bed is this clothes all over the place. It's a, it's everything is like a mess. You can't even find where the bed is. And if you do, it's going to be just the bed frame. And for some strange reason, the mattress is going to be somewhere in a closet. I don't know how to communicate. The chaotic nature that befits the data scientist and how it really maps to their the characteristic of a hacker that I see in them. Both worlds work just fine. There's nothing wrong with being a scientist. There's nothing wrong with chaos. If you can deliver your work and data scientists to deliver their work, but engineers, they are like.

[00:23:41] **Christos Hadjinikolis:** Why did you do this like this? Why did you change the code there like that? It's going to break my test. It's going to make this not work. And the data scientist is I want to iterate quickly. I want to try this example. It doesn't matter if I changed the code over there, it just works. And I was able to confirm an assumption and I got a result.

[00:23:57] **Christos Hadjinikolis:** The engineer is all about reproducibility. The data scientist is about getting some results quickly, prototyping, understanding how the world works. I don't care about reproducing anything. And both of these worlds need to work together and there, there is no way to get it right. You can't force a data scientist to become an engineer.

[00:24:16] **Christos Hadjinikolis:** You can't do the other way around. You just need to bring them together in ways that are educational to both of them. You need to bring them together in a way that allows them to communicate clearly what is expected of each other and allow them to learn from each other. You need a little bit of engineering in the data scientist's world and the other way around.

[00:24:34] **Bill Raymond:** I'm going to share some observations from my own experience. And I'd be curious to hear your thoughts on it. I have seen of course, tech companies integrating the data scientist role with software development teams and that's been going on for a very long time. 

[00:24:50] **Bill Raymond:** However, I do see in many organizations that have the budget to have data scientists, those models that they're building aren't necessarily products. And now companies are starting to see machine language and AI is becoming a product. So the importance of the data scientist role becomes much more important. However they seem to be separated still. There's this wall in between the data scientist role and the AI and machine learning teams. I think people are just now starting to figure out how they might integrate them. I'm curious if that's what you're seeing as well?


###  [00:25:24] Successful Integration of Data Science and Engineering Teams

[00:25:24] **Christos Hadjinikolis:** I think that. Yes, what would you say is indeed happening? But I wouldn't say that there is a silver lining of sort or a magic formula about how to do this right. I think it depends on a number of factors. It depends on the nature of the product. It depends on the size of the organization.

[00:25:41] **Christos Hadjinikolis:** In most cases where you see data science teams being completely decoupled from engineering teams, we usually talk about big organizations where they have the luxury to do that. There's nothing wrong with it. But in other cases or at least in the case of Vortexa, for example, we have what we call cross functional teams to some extent, where we blend data scientists with engineers and we have them working together.

[00:26:07] **Christos Hadjinikolis:** Now, again, we don't expect that data scientists are going to be engineers, but we structure our teams and help everybody in the team to develop certain skills to a certain level. Like a data scientist is going to be familiar at least within the Vortexa world with engineering to a good extent.

[00:26:27] **Christos Hadjinikolis:** And on the other hand, engineers are exposed to data science and they understand it. Enough to be able to deliver the work to say the least, sometimes even more as I'm very happy to say that I'm working with some exceptional people, but what I'm trying to say is that there is no formula about, perfect formula about how to do this, right.

[00:26:45] **Christos Hadjinikolis:** It comes down to the product. It comes down to the size of the organization. And it comes down to what works for you.

[00:26:51] **Bill Raymond:** What are some of the things that you've witnessed that drive success for these teams? If you have the data scientists that are doing the, if you will, messy things of making sure the data is cleansed and the room can be a little bit messy and then you've got these nice clean software engineers that like repeatable processes and easy to communicate code.

[00:27:09] **Bill Raymond:** What are some of the things that you've seen to be successful?


###  [00:27:11] Driving Success for Data Science and Engineering Teams

[00:27:11] **Christos Hadjinikolis:** Yeah. I want to focus on the cultural aspects a little bit later, but for now, I'm going to try to, talk about a problem and map it to some sort of a solution if you want. An obvious one that we've been talking about is synchronizing data scientists with engineers, right? And it's important to give tangible examples about how wrong this can go.

[00:27:31] **Christos Hadjinikolis:** Let's go back to the example where we were talking about the housing pricing model, right? Imagine how we provide the input of the characteristics of the house, like how big the house is, how many windows it has, and so on. And somehow that is converted to a numerical vector fed into the model. We have cases and this is a very common problem to have, where The data scientist is going to develop the process by which you get those original inputs converted into that numerical vector and then feed it into the model.

[00:28:00] **Christos Hadjinikolis:** But because the training pipeline is sometimes different to the prediction pipeline, despite the fact that they should share common components, such as the bit of code that converts those numbers into a numerical vector, needs to be the same, for example, as a good practice. If for whatever reason you cannot do that, then you need a very good sync between data scientists and engineers because the engineers are the ones who are going to develop this code on the prediction side.

[00:28:26] **Christos Hadjinikolis:** So they are the ones who need to write that code exactly in the same way that data scientists have written that code when they were doing the training. If the two are not identical, you get problems. So this sync is crucial. And in order to minimize the chances of people being out of sync in terms of coordinating towards achieving a common goal, what we've done is that we have regular catch ups.

[00:28:51] **Christos Hadjinikolis:** Called the data science catch ups like once a week the whole team data scientists or engineers are going to present something they're working on. And it's not about reviewing code or anything. It's a general presentation where either an engineer or a data scientist is going to sync, discuss exactly what they're trying to achieve and how they're implementing it.

[00:29:11] **Christos Hadjinikolis:** And everybody gets to ask questions or identify issues and correct them and. Bring everybody under, establish a common ground. This has solved so many problems for us. And it's been so influential that ever since we started it if we don't do it sometimes, the data scientists or the engineers themselves are going to be asking for it.

[00:29:30] **Christos Hadjinikolis:** That's definitely one of the things that I would recommend. The other big problem that we have, with, which is very innate to data science itself, is that data scientists they can solve problems in a variety of ways. And when something is wrong, for example, the search space of things you can try or things that could be wrong is huge.

[00:29:51] **Christos Hadjinikolis:** So how do you navigate this vast research space? How do you make sure that you focus on the things that really matter? And I'm not going to recommend something really new to everybody here. We just use backlog refinements as everybody else would. And in this backlog refinements backlog refinement sessions.

[00:30:09] **Christos Hadjinikolis:** What we try to describe is the concept of an experiment. We don't talk about spikes in the same way that somebody would talk about spikes in a scrum world. A spike is closer to figuring out how to address an unknown in the engineering world. So we've come up with an equivalent notion, but for data scientists, we want to do an experiment.

[00:30:30] **Christos Hadjinikolis:** And. It's important to clearly define that experiment, clearly identify what kind of assumptions you want to confirm and define the acceptance criteria and what are the expectations. And when I say what are the expectations I want to stress that we want to focus also on figuring out whether an assumption is not right, disproving one, because this is equally useful to us.

[00:30:55] **Christos Hadjinikolis:** It's important, therefore, to grow a culture that is experiment driven, that is happy, that is, that welcomes experimentation, that welcomes research. And I say that because, and hopefully I'll be given the opportunity to touch more on that. The word experiment carries a negative connotation. If you have a product manager in the team and you tell them I'm going to go and experiment, they're gonna be like, Okay, what's going to be the output?

[00:31:16] **Christos Hadjinikolis:** Are you going to give me the feature that I asked for? Because, stakeholders are waiting. So developing and growing a an experiment friendly culture is a big challenge. And this is another thing that I learned. Finally, another very important thing is communicating results from that research.

[00:31:35] **Christos Hadjinikolis:** Again, data science is fundamentally different from engineering. As an engineer, you're going to write some code. You will issue a PR review. Engineers are going to go in, scrutinize your code, make some suggestions, fix some things, write some tests. I make it sound easy. I know it's not, but I'm trying to stress that with data science, a data scientist is going to write a Python notebook.

[00:31:54] **Christos Hadjinikolis:** They're gonna provide an executive report. Maybe they will tell you exactly what they've tried and they'll show you some charts. They need to tell you a nice story. Data scientists need to be good narrators. They need to be able to convey exactly what they've tried. Why they tried it, what they have achieved, why it failed in an amenable way.

[00:32:15] **Christos Hadjinikolis:** They have to do it right because I never have the time to scrutinize everything that a data scientist has done in a Python notebook. It will take me hours. So I need to trust my team and my team needs to be able to communicate these results in an amenable way. And whatever they do needs to be reproducible.

[00:32:32] **Christos Hadjinikolis:** I need to be able to get that notebook and go and reproduce it. So these two things. Are key, I think, for being successful. If you can communicate the results of your work in in an effective way, the whole team benefits from it. If you can't, you're the only one who knows exactly what's right and what's wrong. And you become a single point of failure for the team.

[00:32:52] **Bill Raymond:** You also said there is a cultural element. And I would love to hear your thoughts as we wrap up the podcast.


###  [00:32:58] Conclusion and Final Remarks

[00:32:58] **Christos Hadjinikolis:** Again, in general thinking about Agile what is the objective, like Agile's objective? What does do its values stand for? Like the main idea for me is to fail fast. If you can fail fast if I, if Agile can help you fail fast, then you're doing it right. So in, in general, what I try to tell my team, what I try to communicate to my data scientists, people that we're working together, is that if Agile is about failing fast, the role of a data scientist, in a, in an agile team, sorry, is to help the team fail faster if you want.

[00:33:28] **Christos Hadjinikolis:** And in order to fail faster, you need to confirm or disprove assumptions before you even start developing the solution. And that's the role of a data scientist. To go in there and do this thing we call iterative hypothesis testing define hypothesis in a very clear way, which is essential. Focus on learning, okay, not on delivering something that the product manager can be happy with.

[00:33:54] **Christos Hadjinikolis:** Reaching now, I guess the end of the podcast thinking about some final remarks. I know that probably I haven't given out any clear recipes about how exactly to do it. It's been very educational for me to figure out what's the correct way of doing it where I am right now.

[00:34:10] **Christos Hadjinikolis:** And I must say that I'm still learning, but what I try to always bring in mind when I when I think about whether I'm doing the best I can is something that I heard from a pair of a Agile coaches. Their names are Jeffrey Frederick and Douglas Squirrel that I was following a couple of years back one of them in in, in, in one episode that I had listened to, they were saying something that really stayed with me. They were talking about a case where, Beethoven at a a student was really talented, very good. And he went to his master one day and he said, master can you give me like the hardest piece that you have? I want to try and play that one.

[00:34:51] **Christos Hadjinikolis:** He, opened it up, started trying to play it on his violin, and he realized very quickly that trying to play it was next to impossible. He was trying to extend his fingers so much to hit some chords, right?

[00:35:03] **Christos Hadjinikolis:** And he just couldn't do it. It was impossible to reach two chords in the way that it was described. And when he was trying to read some other instructions, he saw that he had to stand on one hand. In order to play a specific note, but he kept on trying the best he could.

[00:35:19] **Christos Hadjinikolis:** And then at some point disappointed, he went back to Beethoven and he said, teacher, I tried it. I done the best I could, but I just couldn't play the notes. I, it was just impossible. And Beethoven then smiled and said, my dear child, there's nothing wrong with what you what you played. It was never about playing it right.

[00:35:39] **Christos Hadjinikolis:** It was about the sound that is produced when you try to play it right. And I think this is what I try to keep in mind. It's not about adhering to all these rules and thinking all the boxes is about trying your best to to make it. To get it as close to, those principles and hope for the best.

[00:35:58] **Bill Raymond:** Thank you very much Christos Hadjinikoli. I really enjoyed this conversation today. If anyone wants to reach out to you, how might they do so?

[00:36:05] **Christos Hadjinikolis:** Yeah, I'd be very happy to respond to LinkedIn requests for connection and messages. I always respond to LinkedIn messages, but I hope people can also find me through my website. I also provide my email through the website send me an email or ping me on LinkedIn. Very happy to get back to you.

[00:36:24] **Bill Raymond:** Wonderful. Thank you. And I will make sure that all these links go to the https://agileinaction.com website. If you're on a podcast app right now, or watching the video on YouTube, just go down to the description in the show notes and you'll find the links to how to reach Christos there. 

[00:36:38] **Bill Raymond:** Christos, it was great listening to your personal journey. And I really appreciate all of the time you spent with us today.

[00:36:43] **Christos Hadjinikolis:** Bill, thanks so much for the invitation and hope to keep in touch.

[00:36:47] **Speaker:** Thank you for listening to the Agile in Action Podcast with Bill Raymond. Subscribe now to stay current on the latest trends in team, organization, and agile techniques. Please take a moment to rate and comment to help us grow our community. This podcast is produced in affiliation with Cambermast LLC, and our executive producer is Reama Dagasan.

[00:37:09] **Speaker:** If there is a topic you would like Bill to cover, contact him directly at Bill.Raymond@agileinaction.com.

