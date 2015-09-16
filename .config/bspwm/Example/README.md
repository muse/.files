# Bar
Getting started with Lemonbar usually isn't the easiest thing to do. It's not *very* well documented and lacks a big community. It is however one of the best and customizable bars to use. I've decided to make a **Bspwm** example for Lemonbar. It's fully commented and does most of the nasty things for you by default.

* Apply the fonts.
* Retrieving the active, free or unused desktop(s). 
* Create section handlers to run applications.

You can however easily add any kind of functionality by writing a bash function and then feeding that to the **FIFO**

## Getting started
There's 3 things you will have to do, all very minor so don't be scared.

### Retrieving the file
Create a directory in `~/.config/bspwm/` with a theme name. This is useful for whenever you want to have multiple panel files for different themes.
Then clone/copy/curl the panel file and place it in `~/.config/bspwm/theme/`. 

### Activating it
Edit your bspwmrc file and add `~/.config/bspwm/theme/panel` to the bottom of it. This will execute the panel whenever **Bspwm** is start.

### Dependencies
While this template doesn't have a lot of dependencies there are a few you will need to install. If you don't want to download them you can open the file and edit them out. (You want to be looking for the fonts)

If you do decide to get the 3 quick dependencies you will need the following ones:

* Lemonbar-xft
* Siji
* Lemon

If you have these installed there should be no problems when trying to start it.

-------

That's it. Restart **Bspwm** and witness your new awesome bar!