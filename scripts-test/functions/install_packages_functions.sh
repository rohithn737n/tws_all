#!/bin/bash

<< function_defination
# defining function, function which is defined does not mean it will be executed for the tasks written,
#inside the function, we still need to call the function for the tasks to be executed
function_defination

echo $1 #this attribute for the command and is global variable

install_package() {

sudo apt-get install $1 #To install the package 


}

install_package docker.io #This docker.ie attribute is specific to the funnction and would be considered as local variable 
