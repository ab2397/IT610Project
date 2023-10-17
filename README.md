# IT610Project
## Jerry Containerization Demo
(**NOTE: This project was tested with the Windows OS in mind. Compatibility with MAC devices is uncertain at this point**)

## Description of the Project
For my IT 610 project, I have created a Dockerfile that will build an Ubuntu image that runs a command-line tool called jerry. Jerry is a tool that allows users to stream anime from various providers through the terminal. One of the main appeals of jerry is that you can watch anime in sync with an Anilist account (a website that lets you track, share, and discover your favorite anime and manga). This means that your Anilist account is updating the progress of the show you're watching automatically while streaming. 

## Prerequisite
Although the Dockerfile has jerry installed, a user will need to complete two tasks in order to properly use the tool. First, the user must have an Anilist account that jerry can link to. You can create an account at the home page of Anilist (https://anilist.co/). Second, since jerry is using a media player called mpv to stream anime in, the docker image needs to be able to run GUI applications on it. To do this, the user needs to have an X Server (an application that manages one or more graphic displays and input devices connected in the computer) running in the background before building the Docker image. If you are an NJIT student taking a CS or IT major, then you can have MobaXterm running in the background. Otherwise, you can install X Server in Windows, and have it running in the background (https://sourceforge.net/projects/vcxsrv/)

## A Demo Application of the Project
With those two tasks complete, now you can start your Docker image! Make sure to run the docker image in interactive bash shell **docker run -it <image_name> bash**. There are many different types of commands that you can do with jerry (see the documentation here: https://github.com/justchokingaround/jerry), but for your first time, I recommend that you follow the following steps:
1. Create a config file for jerry with the command: **jerry -e**
2. Run this command to test jerry: **jerry -q 720 banana fish**
3. The first time you run this command, you will be given a link, as well as an instruction stating to paste your token next to the colon at the end of the link.
4. Copy that link and paste it to your web browser in your Host OS
5. You may be directed to login to your Anillist account if you hadn’t already. Do so, and copy the token that they generated for you
6. Go back to your Docker image, paste the token in the spot provided at your terminal, and click enter.
7. You will then be given an option to pick the anime that correspond to the one that you type in the command. Select it, and viola! The anime should be playing in mpv through an X Server instance.

## Current Issues
So far, I’m able to run jerry in my Docker image with the visuals of the anime being shown. However, I do not have any audio playing through the container yet. I tried to use a solution involving PulseAudio as shown in this YouTube tutorial that I followed (https://www.youtube.com/watch?v=SF_WMBpQ0Qs), but it didn’t work as expected. I did some searching, and I found a forum that had a similar error to me, but the solution that they provide didn’t help me (https://forums.docker.com/t/connecting-to-audio-output-mpv-subprocess-python-webapp/137745). 


