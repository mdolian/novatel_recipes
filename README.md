# EY Cloud Recipes

[![Build Status](https://secure.travis-ci.org/engineyard/ey-cloud-recipes.png)](http://travis-ci.org/engineyard/ey-cloud-recipes)

## Introduction

The cookbooks in this repository are for the use of the Novatel application on Engine Yard Cloud.



## Main Recipes Used

Nginx Rewrites - primarily used to convert the application from Apache to Nginx.  Addresses .htaccess



### How can I view the recipes uploaded to an environment?

You can view the recipes that have been uploaded to an environment in two ways:

- You can download the recipes for an environment using `ey recipes download`, which will be downloaded into a directory called `cookbooks` in the current directory.
- You can login to any of your instances and navigate to `/etc/chef-custom/recipes/cookbooks`, which is the location that your custom cookbooks are located.

### An error occurred during my chef run, where can I find the logs?

Next to each instance, on the [dashboard](https://cloud.engineyard.com/), there are two links entitled "Base" and "Custom", the "Custom" link will take you to the chef log for the last run of your custom chef recipes, for that instance.

The chef log for your custom recipes is also located on each instance at `/var/log/chef.custom.log`
