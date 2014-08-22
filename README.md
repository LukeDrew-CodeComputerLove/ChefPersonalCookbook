Code Computer Love Chef Repo
============================
This is the git repo to set up a machine in Code.

Install Ruby
------------
In this repo, there is a all in one Ruby installer (railsintaller-2.2.3.exe) for windows. Install this first before anything else

Run the batch file
------------------
This file will download and install IIS and .net 3.5, 4 and 4.5

Making changes to this chef set up
----------------------------------
To add a program to be installed to the process, first find the program you want to install at "https://supermarket.getchef.com/". Once you find the program you want, open up "Cheffile" and add the following line
```
cookbook 'PROGRAM_NAME_HERE'
```
(This line can also be found under the "Librarian" tab on the cookbook page for that progarm)
Now add the following piece of code in "node.json" to the "run_list" array
```
"recipe[PROGRAM_NAME_HERE]"
```

solo.rb
-------
This file is the settings file for chef-solo and contains a link to where the cookbooks are and node.json. The referance to node.json could be replaced by using "-j node.json" at the end of the chef-solo call

Cheffile
--------
This has a default site set up at the top of the file and each cookbook is then retrieved from that site. This can be over ridden by using the following code for git repos
```
cookbook "PROGRAM_NAME_HERE",
  :git => "https://github.com/USER/COOKBOOK_NAME"
```