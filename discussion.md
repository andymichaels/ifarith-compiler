# Discussion and Reflection


The bulk of this project consists of a collection of five
questions. You are to answer these questions after spending some
amount of time looking over the code together to gather answers for
your questions. Try to seriously dig into the project together--it is
of course understood that you may not grasp every detail, but put
forth serious effort to spend several hours reading and discussing the
code, along with anything you have taken from it.

Questions will largely be graded on completion and maturity, but the
instructors do reserve the right to take off for technical
inaccuracies (i.e., if you say something factually wrong).

Each of these (six, five main followed by last) questions should take
roughly at least a paragraph or two. Try to aim for between 1-500
words per question. You may divide up the work, but each of you should
collectively read and agree to each other's answers.

[ Question 1 ] 

For this task, you will (read?) three new .irv programs. These are
`ir-virtual?` programs in a pseudo-assembly format. Try to compile the
program. Here, you should briefly explain the purpose of ir-virtual,
especially how it is different than x86: what are the pros and cons of
using ir-virtual as a representation? You can get the compiler to to
compile ir-virtual files like so: 

racket compiler.rkt -v test-programs/sum1.irv 

(Also pass in -m for Mac)

**Answer:** The .irv programs are much more concise and easier for the user to read. Since they are shorter, the run time is also shorter, and its comination of functions to add values will make the run time a lot faster, as it has less to process. THe downside with using this is that the user will get less access to the pathing of the data, since every step of mov isn't visible. Because of this, the user does not have manipulation over every memory address like one would have in an x86 compiler.

[ Question 2 ] 

For this task, you will write three new .ifa programs. Your programs
must be correct, in the sense that they are valid. There are a set of
starter programs in the test-programs directory now. Your job is to
create three new `.ifa` programs and compile and run each of them. It
is very much possible that the compiler will be broken: part of your
exercise is identifying if you can find any possible bugs in the
compiler.

For each of your exercises, write here what the input and output was
from the compiler. Read through each of the phases, by passing in the
`-v` flag to the compiler. For at least one of the programs, explain
carefully the relevance of each of the intermediate representations.

For this question, please add your `.ifa` programs either (a) here or
(b) to the repo and write where they are in this file.

[ Question 3 ] 

Describe each of the passes of the compiler in a slight degree of
detail, using specific examples to discuss what each pass does. The
compiler is designed in series of layers, with each higher-level IR
desugaring to a lower-level IR until ultimately arriving at x86-64
assembler. Do you think there are any redundant passes? Do you think
there could be more?

In answering this question, you must use specific examples that you
got from running the compiler and generating an output.

[ Question 4 ] 

This is a larger project, compared to our previous projects. This
project uses a large combination of idioms: tail recursion, folds,
etc.. Discuss a few programming idioms that you can identify in the
project that we discussed in class this semester. There is no specific
definition of what an idiom is: think carefully about whether you see
any pattern in this code that resonates with you from earlier in the
semester.

**Answer:** The idioms that we noticed in this code were pattern matching, recursion, and fold. With pattern matching, we see a very similar structure to the church encoding assignment, where we were going on a case-by-case basis to build definitions. In this way, we can ensure unique outcomes based on the structure of the input. With recursion, we have been using it since the beginning of the semester, as Racket has no built-in loop functions, so using recursion effectively traverses loops in its own way. Finally, this program also uses fold to traverse lists. We saw this on a few of our exams and practice exams, as a way to traverse lists either from the right using foldl or the left using foldr. This program used foldl to reverse lists to traverse from both sides.

[ Question 5 ] 

In this question, you will play the role of bug finder. I would like
you to be creative, adversarial, and exploratory. Spend an hour or two
looking throughout the code and try to break it. Try to see if you can
identify a buggy program: a program that should work, but does
not. This could either be that the compiler crashes, or it could be
that it produces code which will not assemble. Last, even if the code
assembles and links, its behavior could be incorrect.

To answer this question, I want you to summarize your discussion,
experiences, and findings by adversarily breaking the compiler. If
there is something you think should work (but does not), feel free to
ask me.

Your team will receive a small bonus for being the first team to
report a unique bug (unique determined by me).

bool0 isn't working no matching clause for '(let ((a #t)) (let* #<procedure:rest> (print a))) in the compiler rkt:122:2 


[ High Level Reflection ] 

In roughly 100-500 words, write a summary of your findings in working
on this project: what did you learn, what did you find interesting,
what did you find challenging? As you progress in your career, it will
be increasingly important to have technical conversations about the
nuts and bolts of code, try to use this experience as a way to think
about how you would approach doing group code critique. What would you
do differently next time, what did you learn?

**Answer:** In this project, we got to learn about the differences in x86 and irv. This part was especially interesting to us, because we got to see the assembly code behind it, which you don't normally get to pick apart in most programs. This made for a better way to understand the behind-the-scenes of lower level languages like Racket, and understand their versatility. Our group also finds assembly very interesting, and being able to dissect it as a group was honestly a little fun. We studied many different concepts, such as recursion, pattern matching, traversing lists, and much more with this project. Being able to work in a group meant collaboration, which is something that is very important for entering the work force, especially in computer science. Together, we were able to troubleshoot with each other, and bounce ideas for let* around. Because of this, it was much more thinking, rather than trial-and-error, and overall made for a positive learning enviornment. One thing we wish we would have gone more smoothly is being able to get our .ifa files to run, was we had problems in the terminal that were time-consuming. Overall, we learned about applying concepts from our old projects, and working together to find parts that we could optimize.



