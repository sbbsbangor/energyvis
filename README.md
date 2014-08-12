#Energy consumption indicator visualisation prototypes

##Introduction

Energy visualisation has been around for many years, from simple needle-type meters to modern versions that provide colourful graphs on LCD displays, or even transmit energy data to your smartphone. But mostly they only provide simple feedback (like numbers or bar charts), which makes it difficult for many (especially non-technical) people to engage with what the data they show really means. And that’s one of the reasons why so many people stop using their home energy monitors after a few weeks.

So, for example in homes and offices where feedback on energy consumption is critical to reducing our carbon-footprints, designing good visualisations of energy data is very important. They need to engage our interest and continue doing so into the longer-term. So, together with a group of Bangor University undergraduate students, we spent a little time thinking about how we can represent levels of consumption in a more informative, engaging and fun way.

The two visualisations in this repository show the results of doing just that. One of them, the smiley face visualisation, is intended to show what common metaphors for high and low consumption could look like in computer code. The other, the ‘energy rings’ visualisation, is intended to show what younger people see as a useful metaphor and the students who created and coded it (Craig, Aaron, Ryan, Benjamin and Andrew) went to the trouble of talking to groups of students to ensure they achieved exactly that.

We think they did an excellent job of making it simple as well as useful, informative and fun. And all of the code is written in Processing (www.processing.org) which means it’s quite beginner-programmer friendly and so easily adaptable to your preferences. Plus, it means it can easily be integrated into PC programs, web pages and even smartphone and tablet apps. Our hope is that you’ll find it a fun and useful way of exploring the exciting world of energy visualisation.

##Designing visualisations around a single parameter

Energy consumption data is really very simple, current use being easily represented with a single number showing how much energy is being used per second (e.g. kilowatts). So representations of it are often quite boring, such as numbers on a home-energy monitor. But, does that really need to be the case? We think not, so a central aspect of this work was thinking about how we could make parametric computer graphics that contain many metaphors for that single value.

For instance, graphical animations can be varied in many ways to represent how quickly we use energy, such as colours, shape, size and speed. We’ve tried to use all of those variables, and more, in our prototype visualisations, in a way that draws attention to times when our energy use is getting out of hand, as well as providing a bit of fun background interest when we’re doing much better. But please keep in mind when you view the code that all of the graphical variations are based around a single parameter.

##Using the code

If you haven’t used processing before you can download it from their website (www.processing.org) and follow their instructions to install it and get it up and running. Then, create a folder in your Processing sketchbook folder (usually in your documents or home folder) called ‘energyvistypes’ and save energyvistypes.pde into that folder. Open or restart Processing after that and you should find our code under ’Sketchbook’ in the file menu.

You can then run the code like any other Processing program, such as using the triangular play button or selecting ‘Run’ in the sketch menu (or using the keyboard shortcut appropriate for your operating system). When it’s running, move your mouse pointer across the window and you’ll see the graphics changing (if not, click on the window first and try again).

##The future

The prototype visualisations presented here were intended as a quick start to considering how we at SBBS can make energy visualisation more effective, and even affective. We also wanted to make them open source, as environmental impacts are a common problem that demand a common solution. So, we hope you’ll find them useful for your own work. For our part, we hope to continue looking at how visualisations can be made more useful including adding things like audio and some Welsh culture to add greater appeal (SBBS is located in Bangor, North Wales). If you’d like to know more, why not have a look at our website (www.sbbs.org.uk) and maybe get in touch too.

##Credits

Energy rings visualisation by Craig Bebbington, Aaron Hughes, Ryan Neal, Benjamin Sobey and Andrew Williams, so congratulations to them :-) Smiley face visualisation by Dr Andrew Thomas. The energy rings work was undertaken as an undergraduate ‘2014 Software Hut’ project within the School of Computer Science at Bangor University, North Wales. Project supervision by Dr David Perkins, with Dr Andrew Thomas acting as project client.
