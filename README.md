# Sample Space
## Back End API
### version 1

Sample Space is an interactive application that allows users to play space sounds as instruments, and create beat patterns from them. The sound originate from a wide range of sources, including NASA satellites and other scientific research. Information about the origins of each sound, along with links for further reading, are also provided to the user.

This repo is a back end Rails API that exposes data about Sample and Kit resources to the front end application. It handles requests via two endpoints and builds secure, signed links to sound and image files on an AWS S3 server.

Try the deployed web application [here](https://sample-space-fe.herokuapp.com/).
View the front end repo [here](https://github.com/Sample-Space/sampleSpaceFE).

## Getting Started
### Prerequisites
- Ruby 2.7.4
- Rails 5.2.7
- [HerokuApp](www.herokuapp.com) account
- [CircleCI](www.circleci.com) account
- AWS S3 server and obtain an access key id, secret access key, and region.


### Installing
Fork this repo and clone it down to your machine.

In your terminal, navigate into the home directory, install the gems, and setup a local database:
```
$ cd sample-space-be-api
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

Create an `application.yml` file using Figaro, then open it for editing. The file is git-ignored, so it may not show up in your GUI.
```
$ bundle exec figaro install
$ (open in your text editor) config/application.yml
```

Add your API credentials to `application.yml` file using the syntax shown:
```YML
AWS_ACCESS_KEY_ID: {your key id}
AWS_SECRET_ACCESS_KEY: {your secret key}
AWS_REGION: {your region}
```

Ensure all tests are passing.
```
$ bundle exec rspec
=> ..............................

=> Finished in 1.27 seconds (files took 2.24 seconds to load)
=> 30 examples, 0 failures

=> Coverage report generated for RSpec to /Users/markertmer/turing/4module/projects/sample-space-be-api/coverage. 388 / 390 LOC (99.49%) covered.
```

You should now be able to establish a local server to start answering requests.
```
$ rails s
```

## Endpoints

Using a tool such as [Postman](https://www.postman.com/), you can send HTTP requests to the API according to the following guidelines.

### 1. Kit Index
This `GET` request will obtain a list of the names of all available kits:
```
/api/v1/kits
```
The response will look like this:
```JSON
{
    "kits": [
        "Andromeda Strain",
        "Magnetosphere",
        "Apollo 11"
    ]
}
```

### 2. Kit Show
Obtains all pertinent details related to a specific kit, including attributes for every sample. For example, this endpoint will return info for the Andromeda Strain kit:
```JSON
{
    "kit": {
        "name": "Andromeda Strain",
        "id": 18,
        "sequence": "[['C3', 'F#3'], ['D#3', 'E3'], ['D3'], ['D#3'], ['C#3', 'F#3'], ['D3', 'E3', 'F#3'], ['D#3'], ['D3'], ['C3'], ['D#3', 'F3'], ['D3', 'F3'], ['F3'], ['C#3', 'G3'], ['D#3', 'F#3'], ['D#3', 'F#3'], ['C3', 'D3']]",
        "bpm": 180, # the sequence and bpm attributes define the default pattern that loads.
        "elements": {
            "kick": {
                "name": "K_Star 808 Kepler KIC",
                "source_name": "kepler",
                "sound_url": "https://sampe-space.s3.amazonaws.com/kick_kepler_star_808.mp3?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAUJ552RO7A2PY6M6C%2F20220526%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220526T164632Z&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=0344d019451236cc266906a60c54ae62a626652cda0f580b3b03231147297db4",
                "thumbnail_url": "https://sampe-space.s3.amazonaws.com/kepler.jpeg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAUJ552RO7A2PY6M6C%2F20220526%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220526T164632Z&X-Amz-Expires=900&X-Amz-SignedHeaders=host&X-Amz-Signature=d27cabd94dd44011852d34ab2015f7b61a5f9a93052eb86b073b41bac0676fd7",
                "description": "Kepler: Star KIC7671081B Light Curve Waves to Sound",
                "info_url": "https://www.nasa.gov/mission_pages/kepler/overview/index.html"
            },
            "snare": {...},
            "hh_closed": {...},
            "hh_open": {...},
            "melody": {...},
            "texture": {...},
            "one_shot_1": {...},
            "one_shot_2": {...}
        }
    }
}
```

## File & Server Setup
Assuming you have your own sound and image files, these must be uploaded to your AWS S3 server. To ensure that each file can be found, you will want to make sure that your samples' `filename` and `thumbnail` attributes correspond to the exact filenames as they exist on the server. All the files must be stored in the same bucket, and the bucket's name must be set in the app/poros/presignable.rb module.

## Deployment
To deploy to Heroku from the command line:
```
$ heroku create
$ git push heroku main
$ heroku run rake db:create
$ heroku run rake db:migrate
$ heroku run rake db:seed
$ figaro heroku:set -e production # sets AWS environment variables
```

From your CircleCI dashboard, ensure that it is connected to your repo via GitHub. Navigate to Dashboard -> Settings -> ENV variables. Add your three AWS credentials and save. Your project should now be set up to:
- Run all RSpec tests for each new branch pushed up to GitHub.
- Automatically deploy when a branch is merged into `main`.
- Automatically migrate and reseed the deployed database.

## Tools & Tech
- Postman
- RSpec
- PostgreSQL
- Figaro
- CircleCI
- Heroku
- Rails
- Ruby
- AWS S3 Servers

## Authors

  - **[Mark Ertmer](https://github.com/markertmer)**
  - **[Austin Moore](https://github.com/AustinCMoore)**
  - **[Ruben Pasillas](https://github.com/hobbiathan)**

## Contributing

Please contact one of us if you are interested in contributing to this API.

## License

All rights reserved. But feel free to make a copy and make it yours!

## Acknowledgments
  - Sample Space was the Capstone Project of Module 4 in the combined 2111 cohort of [Back End](https://backend.turing.edu/) and [Front End](https://frontend.turing.edu) programs at **[Turing School of Software and Design](https://turing.edu/)**.
  - It was submitted on May 26, 2022 and received a passing grade from instructor [Brian Zanti](https://github.com/BrianZanti).
  - The project was built to the specification of [these requirements](https://mod4.turing.edu/projects/capstone/index.html).
