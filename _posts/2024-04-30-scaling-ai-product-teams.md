---
layout: podcast-post
categories: agile-in-action-podcast
author: Bill Raymond
date: 2024-04-30
title: Scaling AI Product Teams
twitter-text: ""
libsynUrl: https://directory.libsyn.com/episode/index/id/31001668
youtubecode: gw4zl-cYiao
guest-details:
    - guest-name: Paolo Sammicheli
      guest-title: "Author Scrum in AI: Artificial Intelligence Agile Development with Scrum"
      guest-photo: /uploads/Paolo-Sammicheli.jpeg
      guest-links:
          - guest-link-url: https://scrum-ai.com
            guest-link-label: "Paolo's book: Scrum in AI"
            fieldGroup: guest-links
          - guest-link-label: Paolo's website
            guest-link-url: https://paolo.sammiche.li
            fieldGroup: guest-links
          - guest-link-url: https://www.amazon.com/Scrum-Book-Spirit-Game/dp/1680506714
            guest-link-label: "Recommended reading: A Scrum Book by Jeff Sutherland"
            fieldGroup: guest-links
          - guest-link-label: Paolo on LinkedIn
            guest-link-url: https://www.linkedin.com/in/paolosammicheli/
            fieldGroup: guest-links
      fieldGroup: guest-details
type: podcast
---
Running an AI project? Be prepared to 🤔 think a little differently.

Bill Raymond interviews Paolo Sammicheli, author of Scrum in AI. They discuss the unique differences between typical software development and AI product teams. Paolo shares insights on building AI models, the importance of diverse skills in AI teams, challenges in data preparation, the role of product ownership in AI projects, and using Scrum patterns for scaling effectively.

In this podcast, you will learn the following:

✅ The difference between software and AI teams

✅ The importance of subject matter expertise in AI teams

✅ The cross-functional nature of AI teams

🎉 How to effectively scale and manage Scrum AI teams

## Transcript
(transcripts are auto-generated, so please excuse the brevity)


### [00:00:00] Welcome to the Agile in Action Podcast

**Bill Raymond:** Hi, and welcome to the Agile in Action Podcast with Bill Raymond. Today I'm joined by Paolo Sammicheli. Paolo, how are you today?

**Paolo Sammicheli:** Oh, great. Thank you, Bill.

**Bill Raymond:** Wonderful. We are going to talk about scaling AI product teams with Scrum, popular topic right now. Paolo is a registered Scrum trainer in Italy, author of Scrum for Hardware and also author of Scrum in AI, which is going to be the topic we converse about today. 


### [00:00:29] Introducing Paolo Sammicheli

**Bill Raymond:** Before we get started, Paolo, could you share a little bit more about yourself?

**Paolo Sammicheli:** Thank you, Bill. So I've been working on, let's say digital work for a little bit more over 30 years. The first 20, I was developing software like probably almost everybody in the Agile space. And then the last 10 years I moved from silicon to carbonium. So meaning from the telling machine, what to do, to trying to help human beings in being more productive at work.

**Paolo Sammicheli:** And so my first and the big love is Scrum. And I 've been lucky enough to work on companies of different sectors and different markets. And different industries. So I worked in a software company, traditional software company. I worked with marketing and digital ads.

**Paolo Sammicheli:** And then I had the opportunity to coach a hardware company. So industrial manufacturing, oil and gas construction and engineering companies automotive and later uh, pharma. And even today I'm working with companies mainly on on the industrial part. So my journey started with hardware.

**Paolo Sammicheli:** So hardware meaning uh, a product that is tangible that might contain some software. Since the software is everywhere today, but also contains some electronics so that the software can work, the mechanical parts, the plastics and so on. This gave me a little bit of need and desire to go and understand the root of Scrum.

**Paolo Sammicheli:** And that's how I end up working with Jeff Sutherland and Scrum Inc. and teaching for them. 


### [00:02:11] Paolo's Journey to AI

**Paolo Sammicheli:** And pandemic came. And so that's where I had the opportunity to stay at home for a little bit and learning more about something that was passionate, since many years AI.

**Bill Raymond:** And we're going to be talking a lot about how teams can work together building AI. But I guess, AI is this generic term that a lot of people throw around. There's machine learning. There's large language models. There's all these different terms in the market space. 


### [00:02:40] Demystifying AI: Models, Machine Learning, and More

**Bill Raymond:** But specifically, what are we going to be talking about today when you're talking about working with AI in Scrum teams?

**Paolo Sammicheli:** Yeah. So I would like to open it with a joke, I'm an Italian funny man. And what's the difference between AI and machine learning? So if you want to work with machine learning, then you probably need the Python. If you work, if you want to work with AI, probably you need the PowerPoint.

**Paolo Sammicheli:** So basically AI is the fancy and the like more marketing name for something that is more specific. So the machine learning, so making, creating algorithms, Making the machine learning by itself through the data. It's the topic I covered in my book. Today, after the advent of uh, ChatGPT, everybody is focused on little, a very narrow part of the machine learning that is called the Large Language Model. The stories I've included in my book that I published before ChatGPT are about people building applications on top of machine learning algorithms or better machine learning models. So we should say and especially specifically in one long story, it's about a client of myself in pharma, but also I mentioned other clients like in banking and so on.

**Bill Raymond:** So we're going to be talking about building AI models. I guess the big question that I would have is, and maybe our listeners might have, is what is a model in this context?

**Paolo Sammicheli:** Yeah, so if you want to develop a software traditionally, you use the programming language and basically you using this language, you tell the machine what to do. So you write the algorithm and then you provide the input and you get the output from the machine. That's the traditional way of developing software.

**Paolo Sammicheli:** Now, through this kind of empty structure that in some way, try to mirror how the human brain works called the neural networks. You provide the machine the data, and you provide some example of how the output should be. And with this process called the training, the machine learns what I did.

**Paolo Sammicheli:** The characteristics of the data to produce that kind of output and learn the algorithm by itself. So an example, maybe if you want to build a simple algorithm to recognize dogs or cats in pictures, you provide the multiple pictures and you say, okay, this is a dog. This is a cat. This is a dog.

**Paolo Sammicheli:** This is a cat. After a while, if you provide a new picture, the machine had never seen before, it then can say, okay, this is according to what I know, 90 percent a dog and 10 percent a cat. So this is machine learning. So if we talk about the traditional development, we talk about algorithm. These are not really algorithms, are more like heuristics.

**Paolo Sammicheli:** So we call it model because it's basically on an executable part that comes from data. So it's modeling the data. That's why they are called models. 

**Bill Raymond:** So I think I understand when we write software code and let's say, we just want to perform some sort of a known function like two plus two. You, okay. You just create some sort of a math function in software code that adds two plus two and software has been able to do that for the better part of our lives.

**Bill Raymond:** And now what we're saying is, we don't necessarily know what the result is, because if I feed an image of a dog to a computer, it doesn't necessarily know what a dog is. So you train it, and you have a model that has these images of dogs, and somewhere, and in the background, being trained, is a model that has lots and lots of pictures of dogs so that when you do send a picture of a dog, it says, I know that this is a dog for these reasons. And it finds these characteristics. So it's much more than a two plus two problem. It's a prediction. The system is figuring out how to do that, not the programmer, if you will, is that what you're saying?

**Paolo Sammicheli:** Exactly. And also the trick part is that you provide the data and you hope that this will create the model you expect, but you can't know in advance the result until you try it. So basically training and machine learning models uh, is uh, an empirical process because you have to continually inspect the adapter and basically you stop when the result is good enough because there is no perfection.

**Paolo Sammicheli:** Of course, there is no perfection also in traditional software. Unless you do something very simple, it's impossible to have a bug free code. But with machine learning it's even more probabilistic rather than deterministic. So you think that in most of the case the model will perform as expected, but in the development process, you understand if works or not you're truth testing basically. So you start with a set of data. You keep for yourself a subset of these data, and then after the training, use these subset that you didn't provide to the machine to check if the model is performing as you expect. And so it is is empiric. And guess what else is empirical?

**Paolo Sammicheli:** Scrum, of course. So that's how my client came to the idea of let's use a scrum and approached me asking me, can you help us with this AI development?

**Bill Raymond:** Yeah. 


### [00:08:29] Building Effective AI Teams with Scrum

**Bill Raymond:** And that's what I want to get into, but I guess I'd like to understand from a team perspective, if you think about your typical software development scrum team, and then think about what an AI team might look like, what are some of the differences, what might we expect to see differently?

**Paolo Sammicheli:** In scrum, we have a team defined as a cross function. What means a cross function? Means that all the skills necessary to build the product, the increment called the Scrum stay within the team. So the developers combined they, they possess all the needed skills to be the increment.

**Paolo Sammicheli:** Now, when you have trained the machine learning model, Of course, you need somebody that knows about the technical part, how to set up the neural network, how to choose the right one and so on. But also you have to have the data and in most domains, Understanding the data is something very far from the competencies, the skills of AI.

**Paolo Sammicheli:** If in a software team, you normally have a certain number of skills, the standard dev team and software might be a front end, back end somebody about data, somebody about systems, but I don't think it would be more than six or seven different skills. When you have to work with these models on top of the software people, you need the domain expert.

**Paolo Sammicheli:** So if you have to train a model to recognize cats and dogs probably you need somebody expert in cat and dogs. Now almost everybody is expert in cat and Dogs because it is is quite simple knowledge. What if you have to be the, some models very specialistic medical models to recognize an X-ray If there, there is some disease for example, the on X-ray picture recognize if there is a cancer or a broken bone or you need the doctors. So the skills of within the Scrum AI team tend to be more and more diverse. And so also the language and the jargon will be more, more diverse within these people.

**Bill Raymond:** Yeah. 


### [00:10:48] The Complexities of Data in AI Development

**Bill Raymond:** And what I understand too, because I did learn how to write some very basic models while I was also sitting through the pandemic with extra time on my hands, shelter in place, specifically, I did learn how to create some of these. And it was, it's very interesting. Even if you think we have this database.

**Bill Raymond:** And we can just feed it into this AI system. No, you can't, you really need to think about how the AI system is going to use the data and there's a lot of various things that you need to do to get that data accurate. And then I think also, if we look at this from a larger company perspective, if you want to have some sort of uh, AI system in your organization, it could cut across business units. So now not only do you need data scientists and experts in the data, you might be bringing databases together that you never did before, and that's work. That the bringing together of the databases might be your typical skillset, but all this upfront work of understanding how the model needs to be trained, the science behind it and the domain knowledge.

**Bill Raymond:** That's pretty significant, isn't it? That's a big change to a software development team.

**Paolo Sammicheli:** Yes. And then also, depending on how sensitive are these data, because my clients, they are multinational, they have data all around the world, and there are kind of data that might be in banking, there might be in medical field, of course, that data from of about the US citizen cannot leave the US data about European citizen cannot leave the European Union data about the Chinese.

**Paolo Sammicheli:** I mentioned three systems that are not allowing to export sensitive data. So you have a lot of challenges like masquerading the data so that you remove, the relation within the data and the real person and and then you, but doing these, you have to maintain the significance of these data.

**Paolo Sammicheli:** And so the challenges are many and they need to have a kind of a team, teamwork mindset in companies. It must be necessary because if you have a company thinking in silos, this is my own data. This is your data. Then the interesting part is correlating data that has never been correlated before. And so sometimes the problem is not even technical, it's more like political slash organizational and in big organizations that, that is from challenging to sometimes impossible

**Paolo Sammicheli:** Even though you stay within the same company.

**Bill Raymond:** It sounds like there's all this upfront work that needs to happen in figuring out how you're going to bring this data together and get it into the format that's required for the model and the legal aspects.

**Bill Raymond:** And there's a lot more that goes into it, it seems. And then also it does seem like maybe there could be more time required for this model to be built in order for teams to just jump right into a sprint. So how do we get our arms around that? 


### [00:14:00] Integrating Scrum with AI Development Processes

**Bill Raymond:** How do we think about continuing with this effective value delivery concept of scrum and continue developing at a clip at a pace that allows us to test and validate before we go too far and realize that we don't have a functioning product. What are some of the things that we need to change or be aware of in scrum if we're going to do that?

**Paolo Sammicheli:** Bill you touched a very important point of this topic. Thank you. So basically that's what many people thinks, right? Oh, I need the prepared data, created data, reliable data. So let's have a first data preparation moment, or let's call it phase. And then when we have a data, from different sources that we can have a I think developing the model.

**Paolo Sammicheli:** And then when we have the model, okay, let's have somebody building the application because that is a traditional software. And now what you get a Gantt chart where you have a AI, then machine learning, data AI, and then software. And then when you reach the end, what is the biggest risk normally developing AI?

**Paolo Sammicheli:** It's actually developing something that nobody cares. I attended online a few classes of professor Andrew Eng of Stanford University, one of the most appreciated professor in AI space. And he have this comic in his slide saying that

**Paolo Sammicheli:** there is like a group of developers saying our model perform a very well on the test set and the product owner says but we haven't sorted the business problem yet and the developers answer but we are performing very well in the test set. So the problem is that from beginning, how you know that the data is right, how you know that the way the model is producing the output is usable? You have to go all together. So the idea is what I've seen with these clients doing successfully is you need to build a team of all the needed skills. And this means having the domain expert, the data scientist, the machine learning engineer, and the software developers. Let's pretend that we can stick on less than 10 people.

**Paolo Sammicheli:** So we have only one team. For a second. Okay. And what we do, okay, every sprint we collect a little bit of data and believe me, sometimes it is actually domain expert copy pasting data on a spreadsheet and exporting like a comma separated value file. It might be simple like that, but the understanding which data is significant to build the model, it's really a skill that is, is a domain expertise.

**Paolo Sammicheli:** Then we have the machine learning engineer, that scientist that needs to select the kind of machine learning architecture and try many way of training this model. And so I'm going to use some fancy term now for machine learning expert to like hyper parameters and so on.

**Paolo Sammicheli:** So we have to tweak the model and retrain multiple times, comparing the different results to, to try to guess the best combination of these multiple parameters. Actually, this is so complex that some advanced solutions, they have a machine learning model tweaking the parameters of the machine learning model because it's it can be so time consuming for a human being that we trained a machine to try to do that at the best possible way.

**Paolo Sammicheli:** And then you have to see if the result makes sense for the software part. So we want to develop something like an MVP or just a scaffolding so that we can already try to use this output. And then the feedback from the user perspective, is this data actually solving something we care? And then we repeat these this kind of development continuously.

**Paolo Sammicheli:** So the AI solution basically is growing like a snowball when you throw it in the mountains, right? The fascinating part is that if you ask a machine learning expert, they already say, okay, I need a little bit set of data. Let me do some experimentation. Then you can provide me more data.

**Paolo Sammicheli:** I will keep it experimenting. Then you provide me more data. So they are instructed at school to progress iteratively. So the thing is, let's put everybody together so that every time somebody have a problem. I can speak with other people and fix it on the fly instead of relying on long distance communication processes of inter-silo communication.

**Paolo Sammicheli:** But most importantly, you understand quickly the roots that you are taking that are leading nowhere.

**Paolo Sammicheli:** And so you can change direction because sometimes you want the data differently, you want a different set of data, or maybe the data that a scientist might say, do not contain strong signals so that you can't, from the data, learn what you want to learn. So we need some, we need to change the approach and that this is something you cannot be done in different moments and different silos needs to be done altogether.




### [00:19:16] Scaling AI Projects: Challenges and Strategies

**Bill Raymond:** I am curious though, probably every team in any organization is working on some sort of an AI effort, probably building models or working with existing models and tweaking them.

**Bill Raymond:** What are we going to do from a product management perspective? How do we make sure that we can look at this, if you will, outside of just the one scrum team. And we think about this at a scale?




### [00:19:41] The Role of Product Ownership in AI Initiatives

**Paolo Sammicheli:** The product ownership with this kind of solutions, it's even more challenging than in traditional software. It's quite challenging already. In software, we know that 20 percent of the feature of a software is used 80 percent of the time. So by prioritizing what is more valuable can have a huge impact and have a tremendous return on investment because in a very short time, you can build something very valuable.

**Paolo Sammicheli:** Or missing that 20%, developing something irrelevant, then you have a feature that is never used. According research, in early 2000, there was the Standish Group Jim Johnson publishing these data and then being these kind of researchers have been re repeated multiple times.

**Paolo Sammicheli:** But it is, it's called the pareto ratio 20/80. In AI, there there is a a video of a conference of 2019 in San Francisco. And in this conference, the I heard two people talking on a round table. There was this woman from IBM that was the vice president of Artificial Intelligence at IBM, and there was a guy, I don't remember the name, sorry. That was, I think it was the VP of AI and Innovation if I recall correctly, at GAP, the fashion brand. And they, during this conference, they shared some data about 87% of AI project never end in production.

**Paolo Sammicheli:** And this number is huge. Now with ChatGPT and large language model things are easier because you can iterate faster, but for those that are still relying on new models, they can just take a model off the shelf and just calling a simple API. The chance of building the wrong thing, it's very high. If we talk about the large language model for a second, basically every two weeks, at least every month, there is a significant news from the big players about something new in in the larger language model alone.

**Paolo Sammicheli:** And this is, required very close collaboration within technical people in software, technical people in AI, domain experts, and also product ownership.

**Paolo Sammicheli:** That's why I insist in calling it Product Ownership and not management because it's the same difference of restaurant owner or restaurant manager. So if you ask a restaurant manager to change dramatically the setup of the restaurant so that maybe you can get, I don't know, a Michelin star and get a lot of people attracted by this recognition, then maybe the manager does not have the delegation to invest a lot of money for these kinds of things. You have to talk with the owner. So it was the same meaning of the restaurant owner talking directly to the staff and making decision quickly. So that, that's really the thing. When you build traditional software, you still need the product ownership because software is challenging at the end. It is never been easy. But maybe for something you can stick on management product manager. With AI I think that you just need the product owners period. Again, the Standish Group is very vocal on this decision latency is affecting project failure. So with a high decision latency, the chances of failure becomes a very high.

**Paolo Sammicheli:** And so this is a KPI that should be considered when you set up an organization.

**Bill Raymond:** That's a really good thought there. And that's, I think the power of agility and scrum, right? It's because we do time box things and we test things and we make sure that we're delivering value and it's okay for a team to say this work that we put all this time and effort into ultimately won't be successful and you can kill it before you spend too much money on it.

**Paolo Sammicheli:** Absolutely. Also, very importantly, for people listening to us that haven't never seen, there is a very interesting video, very clever video. I would say something that is genius is a video called the product owner in a nutshell by Henrik Kniberg and that is a condensed two days, a product or a class in less than 10 minutes.



**Bill Raymond, Host of The Agile in Action Podcast:** Thank you. And I'll make sure that I share that video. If you're listening to this podcast, I'll make sure that I include that in the links that we'll talk about in just a few minutes. 


### [00:24:10] Getting Started with AI and Scrum: Practical Advice

**Bill Raymond, Host of The Agile in Action Podcast:** Before we wrap up, I'd love to know if there's anything that someone listening to this podcast can do right now, if they want to start down this journey, because I have to imagine there are people listening to this podcast saying AI is either here and we're still trying to figure things out or they know it's coming any day now.

**Bill Raymond, Host of The Agile in Action Podcast:** So they want to get ahead of things. What are some immediate things that they can do?

**Paolo Sammicheli, Author of Scrum in AI:** Before I mentioned you might not have 10 people to cover these skills. So Maybe you need more people and that is scaling. So to scale properly, what I used successfully is scrum at scale and particularly the scrum patterns. So there is a very precious book that came out in 2019.

**Paolo Sammicheli, Author of Scrum in AI:** It's called the a scrum book. A Scrum book just like that by Jeff Sutherland and Jim Coplien. And there, there is a very large collection of scrum patterns. So basically you will find some optional pieces of Scrum on top of the Scrum Guide and build something more sophisticated to solve your challenges. And, in my book, Scrum in AI, you can find it on https://scrum-ai.com. I talk about these patterns and I recap what a Scrum pattern is and how to use it. 

**Paolo Sammicheli, Author of Scrum in AI:** And we know that large teams larger than 10 people normally are very unproductive. It's hard to communicate. It's hard to do all this stuff. So what do you want to be? There's a team of teams. So if a team is a set of individuals working together and helping each other. In order to achieve a common goal, that is the team goal, a team of teams is a set of teams working together and helping each other in order to achieve the common goal, meaning the team of teams goal.

**Paolo Sammicheli, Author of Scrum in AI:** Probably if you have, unless you're developing something simple, we just the larger language model APIs. So that is a AI, but it's not so complex, but if you have to train your own model, if you have, uh, domains like the one I faced in the pharma, for example, when you might have so many stakeholders and possible applications that you need to talk different jargons and if in different fields of medicine, for example, you will end up having too much work for a single product owner.

**Paolo Sammicheli, Author of Scrum in AI:** And we use the pattern called the product owner team. So this is a variation of Scrum that is contained in this book and and that's how I solved this problem. 


### [00:26:55] How to reach Paolo

**Bill Raymond:** Okay. Thank you. Paolo Sammicheli, how can people reach you if they want to further this conversation?

**Paolo Sammicheli:** Well, LinkedIn is the fastest way, so I'm the only Paolo Sammicheli probably I'm the first one. And there is my website, so it's https://paolo.sammiche.li. So just connect me and typing something in the introduction messages like I heard you on the podcast with Bill Raymond and we can start talking and I will happy to learn more from your challenges and your success as well.




### [00:27:28] Connclusion

**Bill Raymond:** Oh, that's wonderful. I will make sure that your LinkedIn link, your book, all of the recommendations that you made for other books and videos are all going to be on the https://agileinaction.com website. They'll also be in the show notes. If you're listening in a podcast app right now, just click the link that will bring you there.

**Bill Raymond:** And of course, if you are watching the video on YouTube, Just go ahead and look down at the description and you'll find that there. Paolo Sammicheli, thank you so much for your time today! 

**Paolo Sammicheli:** Thank you, Bill. Thank you for inviting me. Thank you everybody for listening!

**Speaker:** Thank you for listening to the Agile in Action Podcast with Bill Raymond. Subscribe now to stay current on the latest trends in team, organization, and agile techniques. Please take a moment to rate and comment to help us grow our community. This podcast is produced in affiliation with Cambermast LLC, and our executive producer is Reama Dagasan.

**Speaker:** If there is a topic you would like Bill to cover, contact him directly at Bill.Raymond@agileinaction.com.

