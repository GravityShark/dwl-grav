## features that dont exist

1. run-or-raise
   - `namedscratchpads` should do this but its currently only working on v0.7
2. always on new tag
3. idk how to handle layouts, i currently just disable everything but i might
   need to use `nextlayout`, if im gonna do like columns layout
4. multi monitor
5. obs recording

## minimal set

1. [alwayscenter](./alwayscenter.patch)
   - always center floating clients
2. [attachbottom](./attachbottom.patch)
   - put new clients at the bottom of the tiling list
3. [better-resize](./better-resize-0.7.patch)
   - makes resizing actually good
4. [ipc](./ipc.patch)
   - allows dwl to communicate to other apps
   - basically required to use with external bars
5. [mouse-trackpad-split](./mouse-trackpad-split-0.7.patch)
   - splits the settings for mousepad and trackpad, so that they have different sens
6. [movestack](./movestack.patch)
   - allows you to move a client up and down the tile stack
   - norway we needed a patch for this :pray:
7. [pertag](./pertag.patch)
   - makes each tag to have its own layout mfact and nmaster, cause thats not default
8. [tmux-borders](./tmux-borders-0.7.patch)
   - make the borders actually stand out and you can see it and it looks good
   - and its distinguishable
9. [warpcursor](./warpcursor.patch)
   - moves the cursor in the currently focused client

## extras

1. [btrtile](./btrtile-v0.7-gaps.patch)
   - focus based tiling, and also you can drag an drop things
2. [buttonbystate](./buttonbystate.patch)
   - could allow for me to use the win key for launcher again
3. [column](./column.patch)
   - columns style layout, i might want to use it if i remember
4. [cursortheme](./cursortheme.patch)
   - allows you to set the cursor theme because WHY THE FLIP DOES THE WC HAVE
     TO SETUP A CURSOR THEME???
5. [dim-unfocused](./dim-unfocused.patch)
   - as title suggests
6. [foreign-toplevel-management](./foreign-toplevel-management.patch)
   - allow for things like bars and shit to function sometimes, dunst needs it i think
7. [genericgaps](./genericgaps-0.7.patch)
   - adds gaps
8. [globalkey](./globalkey.patch)
   - allow you to enable global hotkeys for other apps, like obs
9. [gridall](./winview+gaplessgrid+gridall.diff)
   - its some sort of like omega overview that lists every single client
     and you can select one to focus
10. [menu](./menu.patch)
    - its like a poorer version of grid all, just opens a dmenu listing all windows
11. [modes](./modes.patch)
    - vim like modes
12. [regexrules](./regexrules.patch)
    - support regexs for rules thing
13. [right](./right)
    - new monitors connected will be on the right
14. [rlimit_max](./rlimit_max.patch)
    - sets max open file descriptors to something really high
    - only affects if there is an insane amount of apps running
15. [rotatetags](./rotatetags.patch)
    - allows you to move and send clients to adjacent tags
    - goes against my current workflow philosophy tbh

16. [setrule](./setrule.patch)
    - allow sto set window rules on runtime, for ease
17. [skipfocus](./skipfocus.patch)
    - adds a rule where you can now like, make it not focus on that app
    - mainly for things like notifications n shit
18. [stacker](./stacker.patch)
    - directional tile stack management
19. [tearing](./tearing-0.7.patch)
    - adds a window rule where you can configure something to allow screen tearing
    - usually for videogames
20. [toggle_constraints](./toggle_constraints.patch)
    - allows you to toggle if your pointer can get restricted by apps (e.g.
      fullscreen videogames)
21. [xwayland-handle-minimize.patch](./xwayland-handle-minimize.patch)
