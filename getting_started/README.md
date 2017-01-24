As mentioned in [Tower's Version Control Best Practices](https://www.git-tower.com/learn/content/02-cheat-sheets/01-git/git-cheat-sheet-large02.png), "Branching is one of Git's most powerful features."  The key benefit to branching is that it helps you avoid mixing up different lines of development (new features, bug fixes, ideas, etc).  When working in a group, it can be helpful to name your branches using your username, the issue number it addresses, and a human readable note.  In the instance where there is not already an issue related to what you are working on, please create an issue to accomodate discussion and tracking of pertinent comments.  As an example branch name, say I want to work on something related to the issue [Always work in branches #1](), a good branch name might be `stvn66_1_motivating_why_use_branches`.

Working in branching presents one complication in keeping track of which branch you currently have checked out.  Whenever you checkout a branch, the Git application on your computer changes the file tree to match that branch.  A consequence of this is people can easily forget which branch they are/were working in most recently and inadvertently make changes in the wrong branch.  

The [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) project provides a quick and simple solution to tracking which branch you are in my displaying this info in the command prompt (shown below).  This can be further adjusted but lets start by looking what this default setting provides.  In the image below, you will notice an arrow followed by the current directory colored teal, then Git specific information about which branch you are in and if there are uncommitted changes.  The Git specific information only appears when you navigate to a directory containing files under version control using Git.  Notice the brach is shown in red; it changes from `master` to `LH_2039` after executing the checkout command `git co -b LH_2039`.  Also notice the yellow X that appears after making a change to the file named `x`.

![alt text](https://cloud.githubusercontent.com/assets/2618447/6316876/710cbb8c-ba03-11e4-90b3-0315d72f270c.jpg "Oh My Zsh Default")

In addition to displaying which Git branch you ar in, Oh My Zsh also provides many other great features.  One worth noting in this context is the significantly improved tab completion over Bash, which is Git aware.

The steps to get Oh My Zsh setup are: 

1. [install git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git),
2. [install `zsh` on your system](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH) (`brew install zsh`, `sudo apt install zsh`, or using another package manager),
3. [run the setup script](https://github.com/robbyrussell/oh-my-zsh) (`sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`).

After completing these three steps, you are ready to begin using Git to perform version control in your development project.
