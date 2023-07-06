---
layout: podcast-post
categories: agile-in-action-podcast
author: Bill Raymond
date: 2023-07-11
title: To AI or not to AI?
twitter-text: ""
libsynUrl: https://directory.libsyn.com/episode/index/id/27282945
guest-details:
  - guest-name: Jay Palat
    guest-title: Independent AI adoption consultant and writer
    guest-photo: /uploads/jay-palat.jpeg
    guest-links:
      - guest-link-label: 🌎 Jay on LinkedIn
        guest-link-url: https://www.linkedin.com/in/jaypalat/
        fieldGroup: guest-links
      - guest-link-label: "✍️ Jay's article: Agile Development Applied to Machine Learning Projects"
        guest-link-url: https://www.infoq.com/articles/machine-learning-agile/
        fieldGroup: guest-links
      - guest-link-label: 🗞️ Referenced Amazon AI discussion
        guest-link-url: https://www.reuters.com/article/us-amazon-com-jobs-automation-insight-idUSKCN1MK08G
        fieldGroup: guest-links
    fieldGroup: guest-details
type: podcast
---

🎙️ When do you use 🤖 AI? Let's find out in this informative interview

Today, we are thrilled to have Jay Palat as a guest who will help you decide when to use artificial intelligence and machine learning for your organization.

Jay and Bill discuss how Machine Learning and AI work using real-world examples without technical jargon. Jay then helps you decide when to use tried-and-true software development techniques vs. adopting AI capabilities.

In this podcast, you will learn the following:

✅ The definition of ML and AI

✅ The differences between traditional software development vs. AI systems

✅ Real-world examples that exemplify the proper use of AI

✅ Real-world examples of how AI cannot meet your expectations of value

🎉 The people and processes required for successful AI adoption


## Transcript
(transcripts are auto-generated, so please excuse the brevity)


### [00:00:00] Podcast clip

[00:00:00] **Jay Palat:** A corporation inside their company, they're looking to use AI to maybe improve how they do business. What are some examples of that? There's a lot of different ways people are trying to use AI. There's a company called Lemonade, which is famous, I think they have a Guinness Book of World records of the shortest time to settle a claim in like 3.5 seconds.

And the way they did that was they took the input from a customer they used a number of different algorithms to do fraud detection. And then based on the results of that, they were confident enough that this was the right thing, that they could just pay the money out immediately.


### [00:00:33] Intro

[00:00:33] **Speaker:** Welcome to the Agile in Action Podcast with Bill Raymond. Bill will explore how business disruptors are adopting agile techniques to gain a competitive advantage in this fast-paced technology driven market.


### [00:00:52] Podcast interview with Jay Palat

[00:00:52] **Bill Raymond:** Hi, and welcome to the podcast. Today I'm joined by Jay Palat, independent AI adoption consultant. Jay is also the author of an article that we found called Agile Development Applied to Machine Learning Projects, which is a perfect type of conversation to have here on this podcast.

Hi Jay. How are you today?

[00:01:12] **Jay Palat:** Doing well. How are you doing?

[00:01:13] **Bill Raymond:** I'm doing great. We're gonna talk a little bit about whether they're going to use AI or not use AI in our next projects, and you're going to give us some guidance on how to do that, some ways to think about how we can, think about how you might approach an AI project and what it might look like to approach a traditional software development project.

But before we get started, could you introduce yourself a little bit?

[00:01:37] **Jay Palat:** Sure. so I said my name is Jay Palat. I am a independent software consultant. Focusing on AI and AI adoption. for the past four years I've been working, with the Software Engineering Institute to help develop AI solutions for the government. So helping customers understand the capabilities and possibilities of AI and looking at how to solve real world problems with it.

Previous to that, I had 15 years in industry, working on software projects, everything from enterprise to mobile to plain old web stuff.

[00:02:04] **Bill Raymond:** before we get too far into this maybe just give us a quick overview as to what machine learning and AI is.

[00:02:12] **Jay Palat:** Sure. At its heart, machine learning, is about learning by example, right? We are programming a software system by giving examples of what we want to do. Traditionally, when we write code and do, traditional software development, it's, we give it a set of instructions to the computer, a set of logic that will transform an input into an output that's determined by the rules.

We give it. With machine learning, what we do is. We create an architecture for the system to learn through, and then we provide examples of what we want it to do. So rather than having describe what are the rules that transform this input into this output, we give it sets of examples of what the inputs are and what the output should be.

And the system, is trained to make those connections itself so it builds its own rules about how to do those transformations.

[00:02:56] **Bill Raymond:** So when you're talking about software development, very often we have these business rules that say something along the lines of, if this is a purchase order, then. That needs to go to finance and if it's greater than $10,000, it needs this signature approval. Those are things that are maybe what you're talking about with software development.

Is that accurate?

[00:03:19] **Jay Palat:** Yes, and some examples, it's. When's the right time to go into AI or machine learning is when it's really hard to write those rules. the place where we got started with the modern machine learning, and deep learning was in computer vision, right? Where it's really hard to describe what's a cat or what's a dog, right?

the set of if statements, you need to distinguish between all the breeds of cat and all the breeds of dog get pretty onerous and really hard for humans to describe. But we have an easy time saying, here's a list of examples, right? We can take pictures of different types of cats and different types of dogs in order to train a system to make those identifications easier.

while it's possible to say, you know, I wanna get a system which will take all documents in and, treat invoices versus, purchase orders, versus, different types of forms. many cases, it's just much easier to just write some rules around it. Like we, it's pretty easy to capture it and use that information to do something rather than having to rely on finding all the examples of the different types of materials.

[00:04:17] **Bill Raymond:** I couldn't imagine writing some sort of a, if this, then that kind of software code that figures out whether or not you have a cat or a dog in a. Picture.

[00:04:27] **Jay Palat:** Yeah. 

[00:04:27] **Bill Raymond:** I think one of the challenges is that there's a number of different terminology things here.

There's deep learning, machine learning, and AI. I think for purposes of this conversation, we're going to kind of lob that into one thing, which we'll refer to as ai.

[00:04:44] **Jay Palat:** AI is the super set of everything. So it is the, all the different techniques that we use to let computers learn or do things. machine learning is a specific branch of it, and deep learning is a very specific branch of that, but we can call it AI and be well covered.

[00:04:58] **Bill Raymond:** I will say thank you. And now I will say that when we talk about ai, very often you just said, for example, test whether this is a cat or a dog or what breed of a cat or a dog does that picture have. This is a very good example. I think chatbots are another good example. Things that we can all get our arms around.

How does that happen though? Because if you think about it, okay, so there's a picture of a cat and it happens to be this breed of a cat. That if we're, if it's we're saying that we're not writing software code and this thing is learning it, how exactly does that work?

The way to think about it is with these systems, what we're doing is we give it an example. So we fix the inputs, right? We wanna give it a standard set of things. the way deep learning works is that it creates a neural network. The way neural networks is we have these different parameters that we want to train to do different things.

[00:05:49] **Jay Palat:** So if you think about it, we can think about like simple inputs. If we had a,a linear graph, right? go back to high school, algebra Y equals mx plus B, right? I have a set of points that are sitting on a graph. I wanna figure out how do I get a line that intersects the most points. What we want to then do is figure out, okay, if I throw a scattering these spots in, I can create, a set of parameters, an M and a B, to create that line that will hit the most points, right? Figure out where, how to delineate these things. What machine learning does is it does that at scale, right?

So instead of having just one line, We could have thousands, millions, billions of different little equations that can all be tuned to determine different things about it. So as you take an input, what every layer of a, deep learning system is doing is it's taking a transformation of that data, applying it to different, parameters, running these little equations through at scale.

And so that's where it gets to the point where you do the billions of these calculations. Try and figure out how it fits on those lines. And it can predict an output for you.

[00:06:53] **Bill Raymond:** So it doesn't ever really know that something is a cat or a dog. You have to feed at data saying, here's a bunch of cats, and feed at data saying, here's a bunch of dogs.

[00:07:02] **Jay Palat:** Exactly. it's relying on the labels that you're giving it to make determinations. What it's doing is it's building these, I have a set of input points and I want to do, I want to find out where it goes with that calculation and it will, it, the forward pass of it is going to, Come out with a result.

And then what we call is, backwards propagation is we then take the error of like, did we get it right or wrong? We call it the system called it a dog when it was actually a cat. Then we say, okay, there was an error there. The system will then go back and say, all right, let me adjust those parameters and those weights to figure out is there,what did I do wrong?

Where did I miscalculate in order to, To get that wrong result, and it does this over several passes. So as you put results or samples through examples into the system, it'll iterate over and over again. That's what the training is, and gets to the point where it gets better at making those guesses.

[00:07:50] **Bill Raymond:** this kind of reminds me of. When I was growing. Growing up and my mother would sit me down with one of those little books, I remember they were cardboard, I don't know if people even used books for thick of their kids now, or iPads, but I just remembered we'd open up these sort of four page almost cardboard books and there'd be this sort of like a picture of a cat or a picture of a dog and, she'd point at them and say, that's a cat.

Can you say Cat and you know, sometimes get it wrong. And over time, all of a sudden now I can just see any kind of a cat and know that it's a cat.

I don't need to know the, necessarily the breed. I can just say, oh, I see that that's a cat, and now I can look at a dog and see it's a dog. But it's because someone kept teaching me over the course of my life what these are and. We're just doing that with ai, but it's not taking years. It's taking more along the lines of minutes or hours or weeks.

[00:08:42] **Jay Palat:** Yeah. And, but I think it's important to distinguish, right? Like with humans, it's really cool of, that's one of the things that we do is we learn to generalize over time, right? kids over generalize it first. Like sometimes they call every animal they see a cat or a dog, right? It's just like, and no, no, you have to differentiate.

That's not a cat. Or if it is a cat, that's the cat. And if it's they point at the dog and call it a cat, you have to make that correction. Humans get really good at generalizing over time and getting better at it. With machine learning, it's a little bit trickier of how much training you want to do to make sure that it's learning just enough to generalize, but not too much to, be over specific.

So one of the, problems that machine learning can, can run into is, memorizing the set. And that's over training, right? So if it only recognizes the cats that it's seen in its examples of cats, then it doesn't help you very much. Cuz if you wanna show a new cat, it may do the wrong thing, right?

Whereas humans generalize and get better over time. Too much training of the system leads to negative results and you end up getting a system that isn't as effective as it could be. So there's a balance there when we train machines. Humans know when to back off of okay, I'm bored learning this.

I know it well enough and I can, and make those determinations, kids get bored and go off to other things. computers never get bored, so they'll keep doing, even when it's passed to the point of usefulness for them.

[00:09:58] **Bill Raymond:** Okay, so. there is a balance that you have to strike there.

[00:10:01] **Jay Palat:** That's where the like a difference for a software engineer. And what we have to do is making that balance of figuring out not just, What's the right data to put in the system, but when to stop training it? When do we move on to, looking for new examples to make sure that it keeps, being general, being able to answer the different types of inputs that we're getting from it.

[00:10:20] **Bill Raymond:** Okay. And I think we'll be talking a little bit about roles and who the different types of folks are that you might work with on an ai project a little bit later. But before we continue on, of course, we talked about this simple example of feeding a cat or a dog image.

But I think, I. I would be surprised if anyone listening to this podcast has not at least heard of ChatGPT and is probably used it for something if only just to try it out. And these new large language model things that we keep hearing about, like ChatGPT, they seem like they're pretty good at answering any kind of question, even if the question's never been asked before.

I think one of the questions I asked was, what happens if the butterfly and the universe fell in love? and it had an answer for me, right? and I just think that it's interesting to see that, and it makes it seem very smart, but really what's going on in the background there?

[00:11:16] **Jay Palat:** So it's one of the cool things about, ChatGPT is it's been the best affordance for communicating with a natural language processing model, right? And the LLMs have been around for a couple years. But ChatGPT really captured everyone's imagination cuz it was easy to create a chat with it and start working with it.

While it does seem like it has a lot of answers, it's because, what it's doing is slightly, it almost sounds nonsensical to say it, ChatGPT is a word prediction machine, so it's trying to figure out, based on the prompt that you gave it, what's the right combination of words that follow it that will sound like a good answer. It's not looking for what is a correct answer, but it's looking for what sounds like a good answer. The way that our, these large language models work is that they are, trained on a lot of data. So let's quantify that a little bit. ChatGPT, was based off of GPT 3.5.

And they had published a paper that talked about all the data that went into it,at least at the very broad level. And so they used over 75 terabytes of text data to try and train the system. So it took huge amounts of books, that are available online. It took corpus of places like GitHub, Stack Overflow, Reddit to try and figure out how do.

Humans talk to each other. How do we communicate? What are our ideas, what are our sentences? And it learned how to predict it. it does two separate things that kind of help make it effective. it does a thing called embeddings where it builds relationships between words, right? So if you think about what's one of the challenges of teaching languages?

Like how do you define a word if you can't use other words to define it? Computers don't understand any words. They understand numbers. in order to build understanding of language, what researchers realize is you could build relationships between words. How do they appear in sentences? How do those sentences appear together and use this kind of bootstrap, these, meanings together.

So what they do is they call, uh, vector embeddings. What they do is they create a vector out of each word, and they can use those vectors to create relationships. So the canonical example is if you took a, embedding for the word king then, embedding for the word queen, the vector between them will be the same thing as, the vector between the word man and the word woman, right?

You can even do math to say, imagine we have a concept called royalty of king minus royalty equals man or king minus Man equals royalty, plus woman equals queen, right? The system figures out how to build these relationships by looking at how the words are used together. So it's like a, its own rosetta stone of finding relationships between words on how they're used and using that to bootstrap the definition of things.

So that's the first part. With that, it builds this understanding of the languages that it uses. And the cool part about that is it can do that across multiple languages, right? So each of these things, you can imagine like a galaxy of words and having relationships to each other, right? So some words cl clumped together.

So if I have red, blue, and yellow, that's kinda live in one space, if I have car bus and train, those will clump together in a particular space, right? Some of those clumps will line up in other languages. So you can look at colors in other languages and start looking at how do we build translations?

Because we can look between these two overlaying sets of concepts and make mappings between them, right? One of the cool things that they're doing is making these, building these relationships. Some folks are going really far with that. there is a, gentleman, who's currently working on a project that was mentioned in nature, trying to figure out can we build embeddings for animal languages, right?

So can we translate for something we have no understanding of into something we can make understanding of? it's a fascinating process. We'll see how they go along with it. But embeddings is the first part. the second part is something called attention. Attention is the technique that they use to try and build relationships of sentences together.

The way I think about, or it's helpful to think about for training, it is, if you remember growing up playing Mad Libs? So Mad Libs is a game where you ask the participants for a list of parts of speech, right? It could be a noun, a verb, an adjective. They give them to you without context, right?

And so they don't know why you're asking for these things or where it fits into it. They just give you this list of words. And when you plug those words into the Madlib , they're hilarious, right? Because the sentences don't make any sense. it's the right part of speech, but it doesn't often fit with the rest of the context.

And that's what makes it hilarious. What large language models try to do is make the most boring, mad Libs ever. They're trying to predict, what's the word that fits into that space that makes the most sense. It's not trying to make us laugh, it's trying to make like, okay, this is what a human would say if they were given this sentence.

And so over time it tries to predict using all this 75 terabytes of data, what are the patterns that were of, of words moving together that will let me predict something. in the case that you're giving of the, what was it? the, how does the butterfly of the universe find love?

it's building a model of, okay, here are all the words and spaces that come together. How can I create a story based on that? Or how can I predict the next word that will make someone happy? chat gpt on the side of it has every time it gives you a response, it gives you a thumbs up and a thumbs down icon.

And it's asking you for a response to that, that feedback that you're giving, it feeds into the last part of what makes large language models really powerful, right? They have reinforcement learning for human feedback. What they're doing is they're taking all the feedback that's given by the people who are working with ChatGPT and turning that into like a set of responses.

They know that the response was good or bad, and what they can do is they can train another model. to imitate the human feedback, right? And so rather than having to use the human feedback to be processed and retraining the models, now they can have something that pretends to be human like pretends and simulates the type of feedback that humans give, and repeat that even faster.

So that gives them a much shorter, tighter retraining. model that allows them to build these better and better models. And so that iterative development,pays off of it sounds better and better with every release.

[00:17:11] **Bill Raymond:** Of course, there are companies right now that are trying to create their own large language models for whatever purpose, whether they're. competing with ChatGPT or Google or whatever, or maybe they wanna put that into their product.

So it has this chat capability. But AI, as you said before, is that it's a prediction engine. It tries to do its best to predict what. It's looking for. And it could be anything. It could be looking for, what might the stock market look like? what might the housing market look like? And it can, if it could, has enough data, there and some historical information, then it might make a fairly decent prediction.

[00:17:49] **Jay Palat:** But, that's just some piece of data that we can use. We have to still validate it. But what are some of the ways that a corporation inside their company. they're looking to use AI to maybe improve how they do business. What are some examples of that? There's a lot of different ways people are trying to use AI. it, it's fascinating in almost every field someone's looking at new applications. For it. there's a company called Lemonade, which is famous, I think they have a Guinness Book of World records of the shortest time to settle a claim. They were able to settle a claim in like 3.5 seconds.

And the way they did that was they took the input from the, from a customer who was trying to file a claim, they used a number of different algorithms to do fraud detection. And then based on the results of that, they were confident enough that this was the right thing, that they could just pay the money out immediately.

If it turned out that there was a problem, if the fraud detection realized that there was something else that had to be, that was ambiguous, it would be turned over to a human. And a human could then help them through the process of figuring out what was the right thing to do. They're still human in the loop, but it gave a place where the customer got the benefit of if the algorithm thinks it's going okay, it can get the best possible outcome. There are folks who are using it for cybersecurity, trying to detect malicious attacks before they show up in, different tools, right? Of can I tell from behavior what's going on and take an action against it? in talking about computer vision recognition. While cats and dogs are fairly well understood, people are using it for things like medical imaging, right?

Can we detect cancer faster? Can we detect, radiological results to help a radiologist or someone to, to identifying things that have visual identifiers to do their job a little bit easier, right? Can they make their lives better?

It's not trying to replace, but it's looking to augment. How can we help these people do like their jobs faster or better? I think that's where AI really shines today is like, helping people do their jobs in ways they couldn't do it before. It's not a matter of is AI gonna replace my job? 

probably not, but is someone who's using AI gonna take,have that kind of job, probably, right? And so it becomes a thing for corporations to make the decision of are they gonna empower their people and give them the right tools to do their jobs better and more effectively? Or are they gonna be like, chased by a competitor who's using these tools more effectively than they are?

The history of industry has always been of a. Who uses the tools to their advantage better, to reduce their costs, to increase customer satisfaction, to do all these things. AI has a good chance of being able to help companies do that. And using AI can make customers' lives better, by making it easier for them to communicate or to do their transactions faster.

A lot of possibilities right now.

[00:20:28] **Bill Raymond:** I remember when I was working on a really large project. It was a global transformation project where this is back when. Companies were just starting to implement E R P, those enterprise Resource planning systems. So SAP, Oracle, these, these big financial planning products so that the CFO of the company didn't have to track down what do you have in your access database or in that Excel spreadsheet, and and then if you have to collect all this globally in order to report

your finances,and be remain legal. It was a very difficult process, and so we went through these massive changes and everyone thought that was going to be the end of finance teams. It just reorganized how finance teams worked. Most people didn't lose their jobs because of them. And I remembered I was, working on one project where,I walked in the room.

People were angry at me because I was leading the effort. They were just so upset with me before I even had a chance to talk about what we were doing, because they thought that I was there to remove their jobs. And my point to them was that, it's too hard for us to understand how to manage our finances.

What we're doing is we're giving you these tools so that it will all be automated. This will free you up to help find new ways and new approaches to better manage our work. and it did. it, it truly did. But there's a lot that goes into that. So I think that the AI hype people talk about people losing their jobs.

I'm sure that's going to happen in some way sense form. but I guess I. Maybe it's 20 or 30 years out, but I'm not necessarily worried about people losing their jobs because of this, but I think one of the important things here is to embrace it and see what you can do. like that lemonade insurance company that you mentioned, I'm sure what that means is that now we have people that are in the insurance industry that can make more informed decisions because a lot more has been thought through by the time the paperwork gets through to them.

[00:22:29] **Jay Palat:** And I think that's, that is. Exactly right in terms of, these tools can help open up capabilities to do more stuff. it, it's, everyone's got a full workday today. It's not like people are starving for work. 

What new value can you add as a team? I like your example from finance, right? Because once they had a handle on everything that was going on, or able to figure out where there was, information missing, they were able to start tackling bigger and different problems, right? And their value increased not because they, they could be replaced for the collecting of data, but they couldn't be replaced for really understanding what that data meant and what it does for the business.

And I think AI's in a similar kind of space of. It can help people better understand the things that they're getting and make more informed decisions about the things they wanna do next. There's this interesting kind of spectrum of, automation and manual. and it starts off at like, everything's completely manual.

I do everything by hand, right? All the way at the far end of it is I do this completely automatically. And like the system will inform me afterwards that it's taken in action. And there's a spectrum in between of how a system and a person works together, and that's an interesting place of how to navigate and use things.

At this point I set a thermostat and I let the thermostat regulate where it goes. I don't go and stoke the fire or open the window to try and adjust the heat. I let the tool do it and it, it does a good job with it. At the same time,there are things that require a human touch and I wanna make sure I have complete control over it, but it's the middle ground of like, when is it the right time to use the tool?

When is it better to have this go out automatically and be informed afterwards? That's where I think businesses really have to think and figure out like, what are the right places to introduce these tools? When is it better to have human in the loops? When should people know to trust or not trust the system?

There was an example a couple years ago of a healthcare system that had adopted an AI system for clinical support. And in the first round, like the doctors were completely did not like it. They were concerned that it would, hurt their performance. And so they were very diligently checking all the answers because they didn't trust the system.

And over time they started trusting it. But they actually went a little bit too far in the other direction, right? They stopped validating it when they should have been validating it. there's a concept of calibrated trust, or calibrated understanding. And it's recognizing that like these are tools.

They're not perfectly infallible. They're not perfect. It's not something we should reject outta hand cuz they can be useful, but at the same time we need to know that, they need, they may need adjustments. I think one of the things that, surprise people when they get to artificial intelligence, machine learning and all of that is the, there's the expectation that you're working with a super brain that knows everything, and it has a perfect answers.

And the reality is that they are prediction machines which are very sensitive to environmental contexts. An example a couple years ago is there were predictive algorithms that were used for supply chains for, when, to do promotions, when to get people in stores, when to make sure the right products are there.

When Covid hit, no one was expecting that it was different from the historical data. No one ever seen anything of that. And so the systems were very wrong, right? Some companies weren't able to adjust to the, suddenly, no one was going to the stores anywhere. No one was shopping in, in, in place.

And Supply chains got very confused even before we stopped getting things through supply chains. But if we think about different ways that AI systems are trained. They're trained on the data, the examples that we give them. We don't live in a static world. Things constantly change, and so these systems need to be adjusted.

I think the other thing, in software we're used to having to do, quarter releases. If you're a good company who's doing fast development, you can do like daily releases or multiple times a day, but you have to change in accordance to your changing business conditions. In the AI side, it's very sensitive to these types of changes as well, right?

So if people change their patterns, it's gonna predict on what it knows not on what has, like it doesn't understand the change, right? That's up to the humans to do, to retrain and teach the system of like, okay, people are doing things differently. It's seasonal, right? Seasonal patterns. you may have a good, prediction algorithm for customer behavior.

But it has very different behavior in March versus December, right? December shopping patterns are very different than the rest of the year. So do you use the same model? Do you use a special model for that time? These are the decisions that you need to make of like, how do I make sure that I'm taking into account the environment and how it's changing and how am I monitoring my system to understand that if things are changing. Am I aware of them? Are my predictions still very good? with a large language model, it's a little hard to tell when they've gone off the rails. But if you're trying to do something like, let's talk about Lemonade in their fraud detection, if there's a new form of fraud that they weren't aware of, there were algorithms might not pick up on it, and it won't be until after they start seeing, oh, we're losing money for this particular thing.

There's something else going on. Let's investigate and retrain the algorithms to detect these new types of problems.

[00:27:22] **Bill Raymond:** Yeah, because someone might use generative AI to create, to make their car look like it's broken when it's not.

[00:27:27] **Jay Palat:** Exactly. it, we're entering a world where there's gonna be a lot of AI versus AI competition of, how can I create something that will. Fool the machine. there's an entire discipline of adversarial machine learning where it's, how do I learn, how do I trick the machine into doing the wrong thing?

it's fascinating stuff.

[00:27:45] **Bill Raymond:** Yeah. And it's gonna get, it's gonna get more interesting probably every week for the next few years. It seems like every time I, I. Open up the news. there's another very interesting story about something going on with ai. Now, I guess one of the things that I'd like to do is we're getting close to the end of the podcast here, but I'm very curious to hear from your thoughts on what does this look like in order to build this.

Now we're not gonna get into, of course, the whole, how do you scope it out and all those things, but I do think there's some basics here, such as how do you define. the value in what you're doing, how do you say, this is a software project or this is an AI project, and define the value for that.

And I guess my a follow on question to that,is going to be around what do the teams look like? What do the people look like that you would work with in order to implement some sort of a, a corporate? AI system to improve how how you do whatever you do, such as building a fraud detection system.

[00:28:46] **Jay Palat:** Great question. If you have the opportunity to solve the problem with traditional software, that's the way you should go to start, right? it's, we understand how to maintain, it is, fairly straightforward to, get developers we understand how to build software pretty well at this point.

If you can get it down to a hero stick and it gets you to the level of capability that you want, start there. And that, that's always a good go-to of if you think you can get a good system, start with it. Just building a basic prediction based on rules. If you find that you want to do more with that, so like maybe your fraud prediction system only gets you to

50%, through the heuristics. Then you wanna start looking at, do I have the data to make better choices, right? Can I collect a set of samples or examples that it can use to train a system to do more? the beautiful part about starting with a software system is that you're gonna start collecting data immediately, right?

You can have all the results of the predictions you made, the mistakes it made, and then use that to start label and build a new set of algorithms, that you can train to do the same kind of predictions. The thing about building an AI system is really understanding that data is a,an important factor in that.

data's been important to companies for forever. and that there's been a lot of efforts of people trying to do like master data management, making sure that your data's well managed. These are now table stakes for doing ai, right? You really can't just, throw data around and hope for the best you can.

You get the results that you get from that kind of strategy. But really it's an investment in. Building out this collection and curation of data, which is new and different. In the past when we do software development, you have a product owner, you have a, software engineer, a QA team, maybe user experience person depending on the application.

And those four kind of work together. What changes for AI is you're gonna need someone who understands the data, at a deep level to build these connections. So you're gonna need data engineers to help you move the data from different sources. As you talked about in the e r p example, there's lots of little lakes of data all over the place that people need to, use to make decisions.

Are those pieces of data relevant to the problems you're trying to solve? They might be. Do you have someone who knows where to find them and how to move them into a place where you can use them? that's gonna be a portion of it. Data scientists are there to help you understand that data and make those relationships.

So they're the ones who help develop the algorithms. So once they have the data, they can't work in a vacuum. They need to have a set of things to work on to know what you've collected or inform you of what you need to collect in order to make these decisions moving forward, to get into the system.

[00:31:18] **Bill Raymond:** Thank you for that I think something that you're saying here is really important. I've been learning AI myself. I've been writing some articles on LinkedIn about it as well. This tagging of data, this bringing data together and then feeding it into an AI system is very complex and it's not like you can just take a bunch of dogs and throw 'em into a system and now it knows what a dog is like. You really have to think about how you're tagging that data. what are those pictures, Is a dog in a backyard? Is. The dog laying down. Is the dog standing up?

Is the dog, jumping to catch a Frisbee like the, in order to tell if it's a dog, you need lots of good data and that data needs to be tagged. And also if you're talking about like an internal corporate system, if you say, you know what, if we bring this data and that data together, a data analyst or a data scientist probably could do that and wrangle that information to, to feed an AI system. But what happens after they've done that? Did you think about how you're gonna tie these systems together for good? Because there's whole entire projects behind just setting yourselves up so that you can use this AI capability, isn't it?

[00:32:29] **Jay Palat:** Yes. And then the other thing, the, I wanna also bring the other, that example. You have to be careful about what you're trying to get as an outcome, right? So there's a famous example from Amazon. Amazon at one point was trying to, get better. results in their hiring. They want to do more diverse hires.

They wanted to try and get new types of talent into their software engineering groups. And so they developed a machine learning system to say, okay, let's look at who our top performers are and train a system to find people who are top performers. Part of the issue that is at the time, most of the top performers for Amazon were white men, right?

And so the system was then trained, okay, I should be only looking for white men. So if it had a woman in the system who was entered as a potential candidate, it would flag them negatively, right? Because it didn't reflect the data of what they had it like. Ideally this person was a, a hire that they'd want to bring into their organization and they were trying to build the system so that it would be less biased, but instead it reflected the biases that were already there.

Amazon recognized this. They stopped using the system and figure out other ways to support this initiative. But it's important to think about the data you have also captures. The biases in the way that you're doing things today. And if you're trying to get to a different outcome, you're gonna have to curate your data to support that outcome.

And that takes a little bit of time and imagination as well to figure out what are the examples that make the most sense, right? and how do I look at the problem that I'm trying to solve, the business problem I'm trying to solve, and get to that like understanding and curation to make sure that the system's gonna make the types of decisions I want it to make.

[00:34:04] **Bill Raymond:** As we wrap up this podcast, if someone is interested, look in, learning more about machine learning and AI and how they can use it in their organization. What are some of the next steps that they could take?

[00:34:16] **Jay Palat:** They can feel free to reach out to me. I'm happy to talk to anyone. I'm available on LinkedIn and I have a website, that they can reach out to me through.

[00:34:24] **Bill Raymond:** Sure. Yeah. And as a matter of fact, we'll make sure that we provide those links. for Jay Palat. Go to the agileinaction.com website and look up this podcast, or if you're listening to this in an app right now, just scroll down to the show notes, a description, and you'll find that information there as well.Thank you so much for your conversation today, Jay. I really appreciated it.

[00:34:44] **Jay Palat:** Thank you. Appreciated the time.


### [00:34:46] Outro

[00:34:46] **Bill Raymond:** Thank you for listening to the Agile in Action Podcast with Bill Raymond. Subscribe now to stay current on the latest trends in team organization, and agile techniques. Please take a moment to rate and comment to help us grow our community. This podcast is produced in affiliation with Cambermast LLC, and our executive producer is Reama Dagasan.

[00:35:07] **Speaker:** If there is a topic you would like Bill to cover, contact him directly at bill.Raymond@agileinaction.com.

