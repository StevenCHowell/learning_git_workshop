For instructions on installing Git on you computer, refer to [section 1.5](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) of Pro Git.
How To Set Up Git
Now that you have git installed, you need to do a few things so that the commit messages that will be generated for you will contain your correct information.

The easiest way of doing this is through the git config command. Specifically, we need to provide our name and email address because git embeds this information into each commit we do. We can go ahead and add this information by typing:

git config --global user.name "Your Name"
git config --global user.email "youremail@domain.com"
We can see all of the configuration items that have been set by typing:

git config --list
git configuration
user.name=Your Name
user.email=youremail@domain.com
As you can see, this has a slightly different format. The information is stored in the configuration file, which you can optionally edit by hand with your text editor like this:

nano ~/.gitconfig
~/.gitconfig contents
[user]
    name = Your Name
        email = youremail@domain.com
        There are many other options that you can set, but these are the two essential ones needed. If you skip this step, you'll likely see warnings when you commit to git that are similar to this:

Output when git username and email not set
[master 0d9d21d] initial project version
 Committer: root
 Your name and email address were configured automatically based
 on your username and hostname. Please check that they are accurate.
 You can suppress this message by setting them explicitly:

    git config --global user.name "Your Name"
        git config --global user.email you@example.com

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author
    This makes more work for you because you will then have to revise the commits you have done with the corrected information.
    