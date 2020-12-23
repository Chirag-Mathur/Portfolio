# This is a basic workflow to help you get started with Actions

name: Flutter build

# Controls when the action will run. 
on:
  # Triggers the workflow on push or pull request events but only for the master branch
  push:
    branches: 
      - master
      - dev 
  pull_request:
    branches: [ master ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:


# The job(s) you want to do when the workflow is triggered
# We will be using an ubuntu-latest virtual machine to perform these processes
jobs:
  build:
    runs-on: ubuntu-latest

    # Job consists of instructions that you want to trigger
    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:

      # Checkout our code
      - uses: actions/checkout@v1

      # Switching to Flutter dev branch
      - uses: subosito/flutter-action@v1
        with:
          channel: 'dev'

      # Enabling Flutter Web
      - run: flutter config --enable-web
        
      - run: flutter channel beta

      - run: flutter upgrade
      
      # Get the latst dependencies
      - run: flutter pub get
      
      - run: flutter clean
      # Build our 
      - run: flutter build web --release
