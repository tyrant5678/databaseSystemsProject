# Welcome

This is a repository for the course project for CS 4750: Database systems. In this README, a simple workflow that you can (generally) follow will be established. Also, as need be, we will establish other standards here.

## Setting up git

If you haven't installed git at this point, please do so following the instructions [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) for your operating system.

## Repository setup

To setup the repository on your local machine, you can simply clone the repo using the following command:

```shell
git clone https://github.com/tyrant5678/databaseSystemsProject.git
```

This *should* configure the remotes for you correctly, but in case it doesn't, make sure to check what your remotes are using the following command:

```shell
git remote -v
```

The output after running the command should look like this:

```
origin  https://github.com/tyrant5678/databaseSystemsProject.git (fetch)
origin  https://github.com/tyrant5678/databaseSystemsProject.git (push)
```

If this output doesn't seem correct (i.e. missing the remote), you can run the following command to add a remote repository named "origin." If you want to change the name of your remote (how you reference it when working from your local machine), you can just replace origin with whatever you like.

```
git remote add origin https://github.com/tyrant5678/databaseSystemsProject.git
```

You can now run ```git remote -v``` again if you'd like to make sure that the remote was added successfully.

## Workflow

If you are interested in using the command-line version of git, a simple workflow for git will be as follows (if you're using the graphical version that github provides, the process is basically the same, but you'll have a non-terminal GUI to work with):

### Step 1

**Create a feature branch.** This can be done in a couple of different ways.

```shell
git checkout -b branch_name
# OR
git branch branch_name
git checkout branch_name
```

The first command will both create a branch and check it out all in one line, but if you prefer, the second method is equivalent but using two lines. As a note, you'll probably only ever do this step once (we'll probably just have individual working branches), but it's good to know how to do this for the future.

### Step 2

**Pull changes.** You can pull upstream changes using `git pull`. This will *probably* be sufficient for the scope of the project, but if it's not, let me know and I can walk you through the harder (but more robust) way of incorporating changes from remote

### Step 3

**Stage your changes**. Once you've finished writing your code, you'll need to commit it to the repository. In order to commit, you'll first need to **stage** your commits. To stage commits, you'll need to use the `git add` command.

A simple way to add all the file in the repository is to run

```
git add *
```

If you only want to add changes stored in your working directory, you can write

```
git add .
```

If you're not sure what is and is not staged, you can run `git status` at any time to see the status of any modified and uncommitted files in the repository.

### Step 4

Once you're satisfied that all your changes are staged, you can finally **commit** them (update the git repository to know that these are the most recent changes). To commit your changes you can use 

```
git commit -m "commit message"
```

Please replace "commit message" with something descriptive that says what your commit is doing.

Alternatively, you can omit the `-m` which will open a text editor where you will type the commit message.

### Step 5

**Push your changes**. Pushing your changes means making them accessible on the remote repo. To push your changes, you can use

```
git push remote_name
```

This will push your head to the remote.

### Step 6

This part will be the same no matter whether you're using the GitHub GUI or the CLI. To get the changes on your branch into the main branch, you'll have to make a **pull request** on GitHub itself. To do this, navigate to your branch on Github, then click the "pull request" button (should be above the list of files).

From here, you should use the *base* dropdown menu to select the branch that you would like to merge changes into and you should use the *compare* dropdown to select the branch you would like to merge changes from.

Finally, fill out the title and description and press the create pull request button.

If you want, you can approve your own PR, or you can ask someone to review it, it doesn't matter too much for this project. The main point of the branches in this case is to separate work so that our work doesn't conflict with each other but so much.

One the PR has been approved, there should be an option on the main page of the branch to merge changes, so press that. If all goes well, you should see your commits on the main branch!

## Contact

If there are any issues with this README or the concepts contained within, please contact Jacob Rice at jwr5ky@virginia.edu or (757)715-3541 or tyrant5678#1736 on Discord.

Happy coding!