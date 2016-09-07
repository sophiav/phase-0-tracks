# Release 1: Web Servers 

## 1. What are some of the key design philosophies of the Linux operating system?
It is one of the most reliable, stable and dependable platforms for both the desktop and the server
* Linux is an Open Source Software, developed as a group-effort by volunteers from all over the world. There is no single organization responsible for developing the system. 
* The system is designed with an open-ended, feature-minded approach and anyone can contribute for a new feature or software application (some conventions have been developed around the development process and testing phases (alpha, beta, final stages) for new features
* Linux has a number of different versions (for different types of users) called distributions that can be downloaded for free as they are distributed under an open source license
* Installing software and applications on Linux is easy – there is a centralized location where software can be searched and installed 


## 2. What is a VPS(virtual private server)? What are the advantages of using a VPS?
A VPS is a virtual server that appears to the user as a dedicated server, but is actually installed on a computer serving multiple web sites. On a VPS you are allotted resources that are not shared by everyone. The overall CPU time and memory are shared across all accounts on the machine, but at the same time portions of those resources are always dedicated to each account. This allows for more power and flexibility than being on a shared hosting account for example. Other advantages include:

* Using a VPS is cheaper – the cost of paying for a VPS is significantly smaller than paying for a dedicated server when you don’t need one
* Scalability – a VPS can be upgraded on the spot. There is no need for data migration
* Managing – a VPS can safely be managed with a control panel on the internet
* Operating System – with a VPS you can choose whatever operating system you like 
* Configuration – a VPS can easily be created and configured


## 3. Why is it considered a bad idea to run programs as the root user on a Linux system?
A root user has full access to all the aspects (commands/directories) of the operating system and if the program has a bug or an exploit, potentially others can use it to gain access to the system. So practice is to run it under another user account that has more limited access (has access to only the things it needs to run the program)
