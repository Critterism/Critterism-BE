# Critterism - Back End

<b>Critterism</b> is an animal trivia application with an ulterior cause that seeks to persuade animal welfare without the Sarah McLachlan guilt trip soundtrack. 

The backend is responsible for receiving requests from the frontend, submitting requests to the Every.org and Open Trivia Database APIs, and return digestible JSON data for the frontend to consume. Crittism is currently deployed on Heroku, click <a href="https://critterism-fe.herokuapp.com/">here</a>. 

The frontend repo is linked <a href="https://github.com/Critterism/FE-Critterism">here</a> and is deployed to heroku<a href="https://critterism-fe.herokuapp.com/">here</a>.

<!-- TABLE OF CONTENTS -->

<h2> Table of Contents</h2>
<details open="open">
<summary>Table of Contents</summary>
  <ol>
    <li><a href="#technical-requirements"> Technical Requirements</a></li>
    <li><a href="#gems-and-tools"> Gems and Tools</a></li>
    <li><a href="installation"> Installation</a></li>
    <li><a href="#endpoints"> Server API Endpoint</a></li>
    <li><a href="#contributors"> Contributors</a></li>
  </ol>
</details>

<!-- TECHNICAL REQUIREMENTS -->

<h2 id="technical-requirements">Technical Requirements</h2>
<ul>
<li>Ruby 2.7.4</li>
<li>Rails 5.2.8</li>
</ul>

<!-- GEMS AND TOOLS -->

<h2 id="gems-and-tools">Gems and Tools</h2>
<ul>
  <li>Factory Bot</li>
  <li>Faker</li>
  <li>Faraday</li>
  <li>Figaro</li>
  <li>JsonApi Serializer</li>
  <li>Postman</li>
  <li>Pry</li>
  <li>SimpleCov</li>
  <li>VCR</li>
  <li>Webmock</li>
  <li>RSpec</li>
</ul>

<!-- INSTALLATION -->

<h2 id="installation"> </h2>

To get started, clone the repo in your terminal by entering the following:
<ul>
  <li>git clone git@github.com:Critterism/Critterism-BE.git</li>
</ul>  
   
Once cloned, run the following commands:
<ul>
  <li>bundle install</li>
  <li>rails db:create</li>
  <li>rails db:migrate</li>
  <li>Run the Figaro command: <em>bundle exec figaro install</em></li>
  <li>Sign up for the Every.org API key <a href="https://www.every.org/charity-api">here</a>. Update the `application.yml` file with `ENV` variables storing API keys for <em>everyorg_api_key: '< your api key >'</em>.</li>
</ul>  

<!-- SERVER API ENDPOINT -->
<h2 id="endpoints"> Endpoints</h2>

<h4>Get Wildlife Charities</h4>
<pre>
  <code>
    "/v0.2/browse/wildlife"

    "nonprofits": [
        {
            "description": "The Fungi Foundation is a global organization that works for the Fungi, their habitats, and the people who depend on them.. Launched in 2012, the Fungi Foundation is the first NGO dedicated to the fungi kingdom. Since its inception, it has achieved",
            "ein": "851478153",
            "name": "Fungi Foundation",
            "profileUrl": "https://www.every.org/ffungi",
            "logoUrl": "https://res.cloudinary.com/everydotorg/image/upload/c_lfill,w_24,h_24,dpr_2/c_crop,ar_24:24/q_auto,f_auto,fl_progressive/profile_pics/wq14eif08jx3kka2ixau",
            "coverImageUrl": "https://res.cloudinary.com/everydotorg/image/upload/f_auto,c_limit,w_3840,q_80/profile_pics/tqf7myovdptpxsde25rm",
            "logoCloudinaryId": "profile_pics/wq14eif08jx3kka2ixau",
            "matchedTerms": [],
            "slug": "ffungi",
            "location": "New York, NY, USA",
            "tags": [
                "wildlife",
                "education",
                "climate",
                "conservation",
                "research",
                "women-led",
                "environment"
            ]
        }
  </code>
</pre>

<h4>Get Animal Charities</h4>
<pre>
  <code>
    "/v0.2/browse/animals"

    "nonprofits": {
        "description": "Lil BUB is a one of a kind space cat. Since landing on Earth, she's raised over $1,000,000 for homeless pets nationwide.. Lil BUB’s Big Fund exists to advocate for special needs companion animals and build a community that celebrates and fosters the",
        "ein": "844229672",
        "name": "Lil BUB's Big Fund",
        "profileUrl": "https://www.every.org/lilbubsbigfund",
        "logoUrl": "https://res.cloudinary.com/everydotorg/image/upload/c_lfill,w_24,h_24,dpr_2/c_crop,ar_24:24/q_auto,f_auto,fl_progressive/profile_pics/dsor2nxk97p87umlwhvt",
        "coverImageUrl": "https://res.cloudinary.com/everydotorg/image/upload/f_auto,c_limit,w_3840,q_80/profile_pics/ipxxsfqxtt6skku7vh1z",
        "logoCloudinaryId": "profile_pics/dsor2nxk97p87umlwhvt",
        "matchedTerms": [],
        "slug": "lilbubsbigfund",
        "location": "BLOOMINGTON, IN",
        "tags": [
          "dogs",
          "cats",
          "animals"
          ]
        }
  </code>
</pre>

<h4>Get Charity by Slug</h4>
<pre>
  <code>
    "/v0.2/nonprofit/#{slug}"

    "nonprofits": {
        "description": "Dedicated to educating the public about the indoor care of domestic (house) rabbits.. Our purpose is to promote the welfare of domestic rabbits. This page is for people who love house rabbits. Please avoid posting information from or about rabbit b",
    "ein": "043672004",
    "name": "Rabbit Advocates",
    "profileUrl": "https://www.every.org/rabbit-advocates",
    "logoUrl": "https://res.cloudinary.com/everydotorg/image/upload/c_lfill,w_24,h_24,dpr_2/c_crop,ar_24:24/q_auto,f_auto,fl_progressive/faja_profile/ugk9vydh9ekprmow6pte",
    "coverImageUrl": "https://res.cloudinary.com/everydotorg/image/upload/f_auto,c_limit,w_3840,q_80/faja_cover/pvrov7qtvpwgobhwwkld",
    "logoCloudinaryId": "faja_profile/ugk9vydh9ekprmow6pte",
    "matchedTerms": [
      "rabbit"
    ],
    "slug": "rabbit-advocates","
    location": "PORTLAND, OR",
    "tags": [
    "animals"
    ]
    }
  </code>
</pre>

<h4>Get Trivia Questions</h4>
<pre>
  <code>
    "/api.php?amount=10&category=27"

    {
      "response_code": 0,
      "results": [
        {
          "category": "Animals",
          "type": "multiple",
          "difficulty": "easy",
          "question": "What do you call a baby bat?",
          "correct_answer": "Pup",
          "incorrect_answers": [
          "Cub",
          "Chick",
          "Kid"
        ]
      }
    ]
  }
  </code>
</pre>


<!-- CONTRIBUTORS -->
<h2 id="contributors"> Contributors</h2>

<h3>Anna Marie Sterling</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/AMSterling)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sterling-316a6223a/)

<h3>Nicole Esquer</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/nicole-esquer)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/nicole-esquer)

<h3>Nikky Rojas</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/nikkyrojas/)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/nikkyrojas/)

<h3>Sunny Moore</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/sunny-moore)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sunny-moore/)
