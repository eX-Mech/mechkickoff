# mechkickoff
Template for collection of abstracts for kick-off meeting at Stability
and Control group (KTH Mechanics).

Nicolò Fabbiane, June 2016

## Usage
The template is meant to simplify the organisation of the kick-off
presentation schedule.

1. Each speaker should write the abstarct according to the template in
   `abstract-template.zip` and name the files according to her/his
   surname.

2. Collect all the abstracts and figures in the folder `contributions`.

3. Modify the collected abstracts by commenting the preamble and the
   `\begin{document}` and `\end{document}` statements.

4. Include the abstracts in the main document `kick-off.tex` via the
   command `\input` according the the meeting schedule.

## Makefile
A `Makefile` has been written for this template. The options are
listed below.

- `kick-off` (default):  compiles and generates the `kick-off.pdf`
- `clean_kick-off`:      cleans the main folder
- `clean_contributions`: cleans the `contributions` folder
- `clean`:               cleans the whole template
