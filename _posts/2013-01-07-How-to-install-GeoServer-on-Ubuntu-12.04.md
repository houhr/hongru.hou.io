---
layout: post
title: How to install GeoServer on Ubuntu 12.04
category: Development(other)
tags: Apache GeoServer sftp ssh Tomcat Ubuntu
published: true
---
As an open source GIS program, GeoServer has became one of the most popular GIS server all over the world. However, there's no related instructions about how to install it on Ubuntu, the most popular open source operating system nowadays, in the official user guide before I writing this article down. So I tried this today and here how I did.

## Step 1: Login Ubuntu via SSH

Before we installing anything, I have to login Ubuntu via SSH at first, because our Ubuntu is running as a virtual machine in the server room in our lab. You can type the following code into the terminal to login Ubuntu, then it will require for the password. After you inputing the correct password, you can use the remote system as yours. And of course, inorder to complete this tutorial, you must have the permission to install softwares.

    SSH username@system-ip-address

## Step 2: Install Apache2

We need test GeoServer by using Web pages, so let’s install Apache2 first. If you don’t need it or it has already worked, you can skip to the next step. To install Apache2, you only need one line of command:

    sudo apt-get install apache2

Quite simple, right? Once the install progress completed, you can visite http://localhost/ then you’ll see words “It works!” in bold. By the way, the root directory of apache's Web server is “/var/www/”, and we can drop our test file there. Though we've been here, I’d like to mention three very useful commands which are used to start, stop and restart Apache2:

    sudo /etc/init.d/apache2 start
    sudo /etc/init.d/apache2 stop
    sudo /etc/init.d/apache2 restart

## Step 3: Install Java 7

GeoServer and Tomcat both require Java, therefore we need install it via terminal. This step can be a litter complicated and torturing, but please don’t worry. It’s not that hard.

First of all, Because of Ubuntu has pre-installed Openjdk, which used to replace Oracle’s Java JDK, we need to uninstall it and remove other Java 7 related package incase it has been installed.

    sudo apt-get purge openjdk\*
    sudo rm /var/lib/dpkg/info/oracle-java7-installer\*
    sudo apt-get purge oracle-java7-installer\*
    sudo rm /etc/apt/sources.list.d/\*java\*

Then, we need to use the repository that build by Webupd8team to install Java 7 for there’s no official command-line solution exists.

    sudo apt-get update
    sudo apt-get install python-software-properties
    sudo apt-get update
    sudo add-apt-repository ppa:webupd8team/java
    sudo apt-get update

At last, we run the install command:

    sudo apt-get install oracle-java7-installer

Thus, about one hour later, Java 7 could be installed on Ubuntu successfully.

## Step 4: Install Tomcat 7

The reason why we need Tomcat is that we have to use GeoServer in Web Archive edition on Ubuntu. Compare with other editions, the Web Archive edition is lack of Java Servlet. Hence, we use Tomcat as a replacement. Run the following code:

    sudo apt-get install tomcat7

For some reason, Tomcat cannot find JDK automatically, so we have to set “$JAVA_HOME” in the “/etc/default/tomcat7″ file manually and restart Tomcat 7:

    sudo vi /etc/default/tomcat7
    JAVA_HOME=/usr/lib/jvm/java-7-oracle
    sudo /etc/init.d/tomcat7 restart

Now, you can visite http://localhost:8080/ to see it works well or not. BTY, the root directory of Tomcat is located at “/var/lib/tomcat7/webapps/”, and we’ll put GeoServer files there.

## Step 5: Transfer GeoServer war file into “webapps”

Have you noticed that I used the word “transfer” rather than “copy”? Do you know why? Because we cannot copy file from local to remote via SSH, and our only choice is SFTP. However, we still cannot put local file into the “webapps” folder via SFTP, because we cannot use sudo command via SFTP. Uhm … what should we do? CHMOD? Bingo! Let’s do it:

    chmod 777 /var/lib/tomcat7/webapps/

Then, after downloading the Web Archive of GeoServer and uncompressed it, you can find a file ended up with a “war” extension. Just use SFTP software (such as cyberduck or FileZilla) to upload that file:

    chmod 775 /var/lib/tomcat7/webapps/

Now, you can see the familiar GeoServer login page at (gasping) http://localhost:8080/geoserver/.
