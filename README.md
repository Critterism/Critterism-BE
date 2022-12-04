<a name="readme-top"></a>

# Critterism - Back End

<b>Critterism</b> is an animal trivia application with an ulterior cause that seeks to persuade animal welfare without the Sarah McLachlan guilt trip soundtrack. 

The backend is responsible for receiving requests from the frontend, submitting requests to the Every.org and Open Trivia Database APIs, and return digestible JSON data for the frontend to consume. Crittism is currently deployed on <a href="https://critterism-fe.herokuapp.com/">Heroku</a>. 

The <a href="https://github.com/Critterism/FE-Critterism">Front End Repo</a> is deployed to <a href="https://critterism-fe.herokuapp.com/">Heroku</a>.

<!-- TABLE OF CONTENTS -->

<h2> Table of Contents</h2>

<details open="open">
<summary>Table of Contents</summary>
  <ol>
    <li><a href="#built-with">Built With</a></li>
    <li><a href="#technical-requirements"> Technical Requirements</a></li>
    <li><a href="#gems-and-tools"> Gems and Tools</a></li>
    <li><a href="installation"> Installation</a></li>
    <li><a href="#endpoints"> Server API Endpoint</a></li>
    <li><a href="#contributors"> Contributors</a></li>
  </ol>
</details>


<!-- Built With -->

<h2 id="built-with">Built With</h2>

* [![Rails][Rails]][Rails-url]
* [![Ruby][Ruby]][Ruby-url]
* [![RSpec][RSpec]][RSpec-url]
* [![Atom][Atom]][Atom-url]
* [![Visual Studio Code][Visual Studio Code]][Visual Studio Code-url]
* [![PostgreSQL][PostgreSQL]][PostgreSQL-url]
* [![Postman][Postman]][Postman-url]
* [![CircleCI][CircleCI]][CircleCI-url]
* [![Heroku][Heroku]][Heroku-url]
* [![Miro][Miro]][Miro-url]
* [![Fly][Fly]][Fly-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- TECHNICAL REQUIREMENTS -->

<h2 id="technical-requirements">Technical Requirements</h2>

<ul>
<li>Ruby 2.7.4</li>
<li>Rails 5.2.8</li>
</ul>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GEMS AND TOOLS -->

<h2 id="gems-and-tools">Gems and Tools</h2>

 * [bcrypt][bcrypt-docs]
 * [factory_bot_rails][factory_bot_rails-docs]
 * [faker][faker-docs]
 * [faraday][faraday-docs]
 * [figaro][figaro-docs]
 * [jsonapi-serializer][jsonapi-serializer-docs]
 * [pry][pry-docs]
 * [rspec-rails][rspec-rails-docs]
 * [shoulda-matchers][shoulda-matchers-docs]
 * [simplecov][simplecov-docs]
 * [vcr][vcr-docs]
 * [webmock][webmock-docs]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

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
  <li>Sign up for the <a href="https://www.every.org/charity-api">every.org API key</a>. Update the `application.yml` file with `ENV` variables storing API keys for <em>everyorg_api_key: '< your api key >'</em>.</li>
</ul>  

<p align="right">(<a href="#readme-top">back to top</a>)</p>

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

<p align="right">(<a href="#readme-top">back to top</a>)</p>

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

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->

[Atom]: https://img.shields.io/badge/Atom-66595C?style=for-the-badge&logo=Atom&logoColor=white
[Atom-url]: https://atom.io/

[Bootstrap]: https://img.shields.io/badge/bootstrap-%23563D7C.svg?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com/

[CircleCI]: https://img.shields.io/badge/circle%20ci-%23161616.svg?style=for-the-badge&logo=circleci&logoColor=white
[CircleCI-url]: https://circleci.com/developer

[CSS]: 	https://img.shields.io/badge/CSS-239120?&style=for-the-badge&logo=css3&logoColor=white
[CSS-url]: https://en.wikipedia.org/wiki/CSS

[Fly]: https://img.shields.io/badge/Fly-9C27B0?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMjAiIGhlaWdodD0iNjAiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PHBhdGggZD0iTTIxLjMxMyA0NC44MzZjLjA1My4wMTYuMTA4LjAyNC4xNTguMDQ3cy4wOTIuMDYuMTM4LjFsLjAxLjAwOC4xMi4xYTE3Ljc0NSAxNy43NDUgMCAwIDEgLjkzOC45MTlsLjYyLjY5NS4zNzQuNDc1LjMzLjQ3NS4yNjIuNDQ2LjIuNGEyLjcyIDIuNzIgMCAwIDEgLjE5NS43NThsLjAwOC4xNDV2LjEyOGwtLjAxNC4yMTZhMi45NCAyLjk0IDAgMCAxLS4yMDEuODQzIDIuNzM1IDIuNzM1IDAgMCAxLS44OCAxLjE1MyAyLjkyIDIuOTIgMCAwIDEtLjQ3LjMwMSAzLjg1MyAzLjg1MyAwIDAgMS0xLjQwNi40MDRsLS4yMjYuMDE3LS4yNS4wMDZhNC41NyA0LjU3IDAgMCAxLS41MTYtLjAzMSA0LjAzNiA0LjAzNiAwIDAgMS0uODQtLjE4OCAzLjQ0MyAzLjQ0MyAwIDAgMS0uNjctLjMxMiAyLjk3MiAyLjk3MiAwIDAgMS0uNjE0LS40OTUgMi43MDQgMi43MDQgMCAwIDEtLjU1LS44NTUgMi45MzcgMi45MzcgMCAwIDEtLjIxNS0xLjA2IDIuMzEgMi4zMSAwIDAgMSAuMDU5LS41ODIgMi45NyAyLjk3IDAgMCAxIC4xMjQtLjM5OSA0LjMxIDQuMzEgMCAwIDEgLjE3My0uMzg3Yy4wNzctLjE1NC4xNjMtLjMwMy4yNTQtLjQ0OGwuMy0uNDU3LjUyNy0uNjY2YTE3LjQzNyAxNy40MzcgMCAwIDEgMS4xNjItMS4yMjRsLjI0Mi0uMjI2LjItLjE3LjAxLS4wMDhhLjc2Ny43NjcgMCAwIDEgLjI5Ni0uMTM2em01OS4zLTIwLjQzN3YxNC43NTVjMCA1Ljc5OC0zLjc1IDguNTQtOC41NzUgOC41NC0yLjM5NSAwLTUuMTcyLTEuMDc2LTUuOTctMS43MzYtLjI0My0uMjA4LS4zMTMtLjU1NS0uMTc0LS45MDJsMS4yMTUtMi45MTZjLjE0LS4zMTMuNi0uNTIuOTM4LS4zMTMuNzY0LjQ1IDIuMDgzIDEuMjg1IDMuODg4IDEuMjg1IDEuOTggMCAzLjQwMy0uNzY0IDMuNDAzLTMuMTk1di0uODMzYy0uMDMuMDI0LS4wNTYuMDAyLS4wOC0uMDYtLjkwNC41NzgtMi4wMzcgMS4wMzQtMy4zOTIgMS4wMzQtNC42ODcgMC02LjE0NS0zLjEtNi4xNDUtNy42MzhWMjQuNGMwLS40NTIuMzQ3LS43NjQuNzMtLjc2NGgzLjc4NGMuNDE3IDAgLjc2NC4zMTIuNzY0Ljc2NHY3LjkxNmMwIDEuODA1LjUyIDIuNzc3IDIuMTUyIDIuNzc3IDEuMDQ2IDAgMS42NzItLjQ4MiAxLjk3LTEuMjI3bC4yMTgtOC4xMTJWMjQuNGMwLS42Ni40ODUtLjc2NC44NjctLjc2NGgzLjY0NmMuNDE2IDAgLjc2My4zMTIuNzYzLjc2NHpNMjEuNTc0IDcuNTI2bC4zODYuMDEuMTcyLjAxIDEuMDQ4LjA4NSAxLjQ0OC4yMDMuMTA1LjAyMyAxLjQwNS4zNDUuMzk2LjExNy40NS4xNTMuNTQ2LjIwNS40MjUuMTc3LjY2LjMuMzcuMTg2Ljc0Ny40MzUuMjI4LjEzNyAxLjAyLjczNy4yNS4yMTcuNzAzLjYzNS42MDIuNjQuMTY2LjE4NC43MDguOTMuMTA2LjE2Ny41NDUuOS4xNTMuMy4zMDguNjc3LjMyLjguMTA1LjMwNi4zNDIgMS4yMy4yNjYgMS42NjUuMDQ3LjUxOC4wNDIuNzQzLjAwMy4xLS4wMTUuODMtLjAxLjE1Ni0uMDQuMzI4LS4yMzUgMS4zMjgtLjAzNS4xNi0uNTQgMS42NjgtLjUgMS4yLS42NCAxLjI2NS0xLjE0MyAxLjk3NC0uNTg4Ljg4OC0uNzEyIDEuMDU2LS41MTQuNjk2LTEuMDAyIDEuMzI4LS42ODcuODU2LTEuMDE2IDEuMjI3LS43LjgyMi0xLjEwNCAxLjIzLS42OTQuNzU1LTIuMSAyLjE3Mi0xLjEgMS4wNy0uNjA3LjU3My0uMDM4LjAzNS0uMDQ3LjA0NC0uMDYuMDQzLS4wNDQuMDItLjEyLjA0LS4yODctLjAxMi0uMDI2LS4wMS0uMTU1LS4wOTctLjAyLS4wMi0uMDItLjAxOC0uMDgzLS4wNzYtLjIyNi0uMi0uMDE3LS4wMTYtMi4wMTQtMS45ODItLjYyMy0uNjQtMS41OTUtMS42OTgtLjM4LS40TDEzLjk5IDM1bC0uNTM4LS42Ni0xLjY5Mi0yLjE4My0uMTY4LS4yMjItMS4yODYtMS44NzYtLjM0OC0uNTU4LS45MjQtMS41Ny0uMjY4LS40ODgtLjgwOC0xLjY4Ny0uMTI3LS4zMy0uNDY0LTEuMy0uMTYtLjU1LS4xMy0uNTMtLjEtLjU4LS4xLS42NS0uMDM0LS4zOTUtLjAxNi0uNzQuMDAzLS4xMjcuMDItLjQuMTYtMS42MTUuMDM4LS4yMDguMzc2LTEuNjQzLjA2LS4xOC4yNTctLjc0NS4wOC0uMTg4LjQxNy0uOTEyLjI4NC0uNTMuNDAyLS42NTguNC0uNTg1LjI3OC0uMzY1LjMyOC0uNC4zNTgtLjM5My4yOTMtLjI5My43Ny0uNjcyLjU3NS0uNDY2LjY4LS40NTYuNDg0LS4zMDggMS4wMjctLjUzNiAxLjUzLS42MyAxLjI5NS0uMzc0LjUwOC0uMTEyLjctLjE0LjQ3NC0uMDcyLjczLS4xLjQ5My0uMDQzLjk4NC0uMDUzaC4wMDZsLjM2NS0uMDA0aC4wNjhsLjMxNS4wMDZ6bTYzLjY5NiAzMi40YzEuNjYgMCAzLTEuMzUgMy0yLjk3NSAwLTEuNjYtMS4zNS0zLjA0NC0zLTMuMDQ0cy0yLjk3NCAxLjM4NC0yLjk3NCAzLjA0NGEyLjk3NCAyLjk3NCAwIDAgMCAyLjk3NSAyLjk3NXptMTEuMjc1LTguNDA1YzAgNC41NjUgMy43NyA4LjQwNSA4LjMzNyA4LjQwNXM4LjMtMy44NCA4LjMtOC40MDVjMC00LjQ5Ny0zLjczNS04LjMwMi04LjMtOC4zMDJzLTguMzM3IDMuODA1LTguMzM3IDguMzAyem0tNDQuODk4IDguMDRoLTMuNzg0Yy0uMzgyIDAtLjY5NC0uMzQ3LS42OTQtLjc2M1YyOC4yN2gtMi40MWEuNzQ5Ljc0OSAwIDAgMS0uNzY0LS43NjN2LTMuMjNjMC0uNDUuMzEzLS43NjMuNzY0LS43NjNoMi40MDhWMjIuNmMwLTUuMTM4IDMuMjYzLTcuNzA3IDcuMzYtNy43MDcgMy4xIDAgNC41NDggMS4wMDcgNS43MjggMi4yMjJsLjQ4Ni0xLjFjLjI0My0uNTIyLjU1Ni0uNzY1IDEuMDQyLS43NjVoMS41OTdjLjM4MiAwIC43NjQuMzgyLjc2NC43NjRWMzguOGMwIC40MTYtLjM4Mi43NjQtLjc2NC43NjRoLTMuNzVjLS4zODIgMC0uNzYzLS4zNDgtLjc2My0uNzY0VjIyLjI2M2MtLjQ1Mi0uODY4LTEuNDU4LTIuMzYtMy40NzItMi4zNi0xLjQgMC0yLjk1LjUyLTIuOTUgMi43Nzd2LjgzM2gyLjYzOGMuNDE3IDAgLjc2NC4zMTMuNzY0Ljc2NHYzLjIzYS43Ny43NyAwIDAgMS0uNzY0Ljc2M2gtMi42MzhWMzguOGMwIC40MTYtLjM4Mi43NjQtLjguNzY0em00Mi43NjUtLjAxNWgtMy43MzZhLjc2OC43NjggMCAwIDEtLjc2LS43NjF2LTE0LjQ2YzAtLjQ1LjM0NS0uNzYuNzYtLjc2aDMuNzM2Yy40MTUgMCAuNzYuMy43Ni43NnYxNC40NmEuNzcuNzcgMCAwIDEtLjc2Ljc2em0tNzMuNjctMjkuNzJhNC43MDEgNC43MDEgMCAwIDAtMS4wNzYuMjMzIDQuODkgNC44OSAwIDAgMC0xLjA2NS41MTVjLTEgLjYzLTEuNzQ4IDEuNTcyLTIuMzA1IDIuNTk0YTkuMDggOS4wOCAwIDAgMC0uMjY0LjUyMSAxMS40MTYgMTEuNDE2IDAgMCAwLS41NzggMS40OTJjLS4xMTIuMzU0LS4yLjcxMi0uMjkzIDEuMDczYTE3LjUzIDE3LjUzIDAgMCAwLS4yNjIgMS4zNzUgMjEuMDg4IDIxLjA4OCAwIDAgMC0uMTg2IDEuNzcgMjMuNTcgMjMuNTcgMCAwIDAtLjA0NiAxLjEyOCAxNC40NiAxNC40NiAwIDAgMCAuMDI1IDEuM2MuMDcyIDEuMDEyLjI0NiAyLjAxNC40NzQgMy4wMDIuMjg4IDEuMjQ1LjY2MyAyLjQ3IDEuMDg2IDMuNjc2YTU2LjQ0NiA1Ni40NDYgMCAwIDAgMS44IDQuNDY0IDc5LjU5NiA3OS41OTYgMCAwIDAgMi42NTIgNS4zMjVsLjA3Mi4xM3YtMjguNmwtLjAzNC4wMDN6bTMuNzQ1LjA3MmExMy45MiAxMy45MiAwIDAgMSAxLjk0MS41NDhjLjkuMzMgMS43NjYuNzU4IDIuNTYyIDEuMjkzYTEwLjIxNyAxMC4yMTcgMCAwIDEgMi43NTQgMi43MjNjLjQzMi42MzUuOCAxLjMyIDEuMDY3IDIuMDM2YTEyLjIzIDEyLjIzIDAgMCAxIC43NDMgMy4zIDE0LjE3IDE0LjE3IDAgMCAxIC4wNDYuODg3Yy4wMDYuMjc2LjAwNS41NTItLjAxNy44MjdhOS4yIDkuMiAwIDAgMS0uMzUgMS44MThjLS4xNC40ODYtLjMuOTYzLS41MDMgMS40M2EyMC4zMzMgMjAuMzMzIDAgMCAxLS43OTkgMS43MSAzMi45NTcgMzIuOTU3IDAgMCAxLTIuMTkgMy41NyA1NS43NTkgNTUuNzU5IDAgMCAxLTMuMTU4IDQuMDgyIDc3LjkyIDc3LjkyIDAgMCAxLTMuNjI4IDMuOTk2bC0uMTYuMTY1YTc5LjQ2NCA3OS40NjQgMCAwIDAgMi40OTMtNS4wNTVjLjQyOC0uOTU1LjgzNC0xLjkyIDEuMjEyLTIuODk1LjQxNi0xLjA3Ljc5OC0yLjE1NSAxLjEzLTMuMjU0YTMxLjUgMzEuNSAwIDAgMCAuNjQ5LTIuNDk2Yy4xNTUtLjcyLjI3Ny0xLjQ1LjM1Mi0yLjE4NGExNC4xNzYgMTQuMTc2IDAgMCAwIC4wNzItMS44NCAyNi40MyAyNi40MyAwIDAgMC0uMDQzLTEuMTI1Yy0uMS0xLjUtLjMyLTMuMDEzLS43NjYtNC40NmExMy4xNzEgMTMuMTcxIDAgMCAwLS42MTMtMS42MDdjLS41NjctMS4yMjYtMS4zNi0yLjM3NC0yLjQzNS0zLjJhNi4wNDUgNi4wNDUgMCAwIDAtLjM2LS4yNnptNzcuMDQgMjEuNjIyYzAtMS44MzMgMS40ODctMy40IDMuMzU1LTMuNCAxLjgzMyAwIDMuMzIgMS41NTcgMy4zMiAzLjQgMCAxLjg2OC0xLjQ4NyAzLjQ2LTMuMzIgMy40Ni0xLjg2OCAwLTMuMzU2LTEuNTkyLTMuMzU2LTMuNDZ6TTkyLjUgMjEuMzQyYzEuNjYgMCAzLTEuMzUgMy0yLjk3NSAwLTEuNjYtMS4zNS0zLjA0NC0zLTMuMDQ0cy0yLjk3NSAxLjM4NC0yLjk3NSAzLjA0NGEyLjk3NCAyLjk3NCAwIDAgMCAyLjk3NSAyLjk3NXoiIGZpbGw9InVybCgjQSkiLz48ZGVmcz48bGluZWFyR3JhZGllbnQgaWQ9IkEiIHgyPSIxMTMuMTg0IiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjYuODE2IiB5MT0iNy41MiIgeTI9IjUyLjQ4Ij48c3RvcCBvZmZzZXQ9IjAiIHN0b3AtY29sb3I9IiMxMDljZjgiLz48c3RvcCBvZmZzZXQ9IjEiIHN0b3AtY29sb3I9IiM5MzVlZTkiLz48L2xpbmVhckdyYWRpZW50PjwvZGVmcz48L3N2Zz4=
[Fly-url]: https://fly.io/

[GitHub Badge]: https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white
[GitHub-url]: https://github.com/<Username>/

[Heroku]: https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white
[Heroku-url]: https://www.heroku.com/

[HTML5]: https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white
[HTML5-url]: https://en.wikipedia.org/wiki/HTML5

[JavaScript]: https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E
[JavaScript-url]: https://www.javascript.com/

[jQuery]: https://img.shields.io/badge/jquery-%230769AD.svg?style=for-the-badge&logo=jquery&logoColor=white
[jQuery-url]: https://github.com/rails/jquery-rails

[LinkedIn Badge]: https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white
[LinkedIn-url]: https://www.linkedin.com/in/<Username>/

[Miro]: https://img.shields.io/badge/Miro-050038?style=for-the-badge&logo=Miro&logoColor=white
[Miro-url]: https://miro.com/

[PostgreSQL]: https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white
[PostgreSQL-url]: https://www.postgresql.org/

[Postman]: https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white
[Postman-url]: https://web.postman.co/

[Rails]: https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white
[Rails-url]: https://rubyonrails.org/

[RSpec]: https://img.shields.io/badge/RSpec-fffcf7?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij48cGF0aCBkPSJNMzIyLjM4NDE4NTgsMTQ1LjU3NTY2ODNsNjguNTQ4NjQ1LDcwLjI4NDA1NzZsLTE3LjM1NDA5NTUsMzEuNjcxMjE4OUwyNTQuMjY5MzYzNCwzOTYuNzc2MDkyNUwxMzQuOTYwMDA2NywyNTEuMDAxNzU0OGwtMTcuMzU0MDgwMi0zNS4xNDIwMjg4bDY4LjU0ODY2MDMtNzAuMjg0MDU3NkgzMjIuMzg0MTg1OHogTTMwMC4yNzUzMjk2LDM2LjAwOTgyNjdsLTI1LjY3NTQxNSwzMy45NDQ4MzE4QzM5OC4wMTA4MzM3LDgyLjAzMDUzMjgsNDcyLjA5NzI5LDIwNy45MTIxMzk5LDQzMy4wNDE5MzEyLDMxOC4zMzk0NDdsMTkuODc0ODE2OSwzOS41Mjg2ODY1bDM5LjQ5NTAyNTYtMi45ODkxNjYzQzU1Ny4zNDYxMzA0LDIwMC42MTA2NDE1LDQ1NC4zMTExNTcyLDE3LjkzMzU3NjYsMjc5LjY4MDI2NzMsMS43NTU0NzY2TDMwMC4yNzUzMjk2LDM2LjAwOTgyNjd6IE0xNy41ODYxOTg4LDM0OC42OTE4OTQ1Qy00OC41MzY1OTQ0LDE4MC4zMTU1NjcsODAuMTU4NDMyLTUuNDMyNjY5MiwyNjMuOTI0MzQ2OSwwLjc1NTQ1NDZsMjAuNjk2MDE0NCwzNC40MjIxNTczbC0yNS42MjQyMDY1LDMzLjg3NjY2MzJDMTI0LjMyMjk5OCw2Ni42NDI2OTI2LDMxLjA5Nzk1OTUsMjA1LjE3MjI3MTcsODMuMzY0Mjk2LDMyOC43OTgwMzQ3bC00Mi43NzA3NTk2LTExLjIyMTUyNzFMMTcuNTg2MTk4OCwzNDguNjkxODk0NXogTTQ4Ni4yOTQxMjg0LDM2OC4zNjY2MzgybC00MS4wNzMxNTA2LDMuMTA4NjEyMWwtMTguNjY3NTQxNS0zNy4xMjcyMjc4Yy01NC4xMDkzNDQ1LDEyNC44ODMzMDA4LTI1MC41ODg0NzA1LDE2Mi4xODEwMzAzLTMzNS45MDgyNjQyLDkuNzg3MTcwNGwtNDQuODM4ODU1Ny0xMS43NjQyMjEybC0yMi4zMDExNjA4LDMwLjE2MDAwMzdDMTI4LjAxMDc0MjIsNTc2LjQ1Mjc1ODgsNDA1LjA3OTU4OTgsNTQzLjE1MTI0NTEsNDg2LjI5NDEyODQsMzY4LjM2NjYzODJ6Ii8+PC9zdmc+
[RSpec-url]: https://rspec.info/

[RuboCop]: https://img.shields.io/badge/Rubocop-red?style=for-the-badge&logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzMiAzMiI+PHRpdGxlPmZpbGVfdHlwZV9ydWJvY29wPC90aXRsZT48cGF0aCBkPSJNMjcuMDUsMTMuOVYxM2ExLjc5MywxLjc5MywwLDAsMC0xLjgtMS44SDYuNjVBMS43OTMsMS43OTMsMCwwLDAsNC44NSwxM3YuOWExLjUyNSwxLjUyNSwwLDAsMC0uNywxLjJ2Mi40YTEuMzg3LDEuMzg3LDAsMCwwLC43LDEuMnYuOWExLjc5MywxLjc5MywwLDAsMCwxLjgsMS44aDE4LjdhMS43OTMsMS43OTMsMCwwLDAsMS44LTEuOHYtLjlhMS41MjUsMS41MjUsMCwwLDAsLjctMS4yVjE1LjFBMS43NDIsMS43NDIsMCwwLDAsMjcuMDUsMTMuOVoiIHN0eWxlPSJmaWxsOiNjNWM1YzUiLz48cGF0aCBkPSJNMTUuOTUsMmE5LjkyNSw5LjkyNSwwLDAsMC05LjgsOC42aDE5LjZBOS45MjUsOS45MjUsMCwwLDAsMTUuOTUsMloiIHN0eWxlPSJmaWxsOiNjNWM1YzUiLz48cG9seWdvbiBwb2ludHM9IjEzLjA1IDI0IDE4Ljg1IDI0IDE5LjQ1IDI0LjcgMjAuMzUgMjQgMTkuNDUgMjIuOSAxMi40NSAyMi45IDExLjU1IDI0IDEyLjQ1IDI0LjcgMTMuMDUgMjQiIHN0eWxlPSJmaWxsOiNjNWM1YzUiLz48cGF0aCBkPSJNMjMuNTUsMTcuNkg4LjM1YTEuMywxLjMsMCwxLDEsMC0yLjZoMTUuM2ExLjMyNCwxLjMyNCwwLDAsMSwxLjMsMS4zQTEuNDkzLDEuNDkzLDAsMCwxLDIzLjU1LDE3LjZaIiBzdHlsZT0iZmlsbDojZWMxYzI0Ii8+PHBhdGggZD0iTTIzLjA1LDIydjMuOGExLjk2NywxLjk2NywwLDAsMS0xLjksMS45aC0xYS44NjQuODY0LDAsMCwxLS42LS4zbC0xLjItMS42YS42LjYsMCwwLDAtLjYtLjNoLTMuNmEuNzY0Ljc2NCwwLDAsMC0uNS4ybC0xLjMsMS42YS42LjYsMCwwLDEtLjYuM2gtMWExLjk2NywxLjk2NywwLDAsMS0xLjktMS45VjIySDYuNTV2My44YTQuMjI1LDQuMjI1LDAsMCwwLDQuMiw0LjJoMTAuNGE0LjIyNSw0LjIyNSwwLDAsMCw0LjItNC4yVjIyWiIgc3R5bGU9ImZpbGw6I2M1YzVjNSIvPjwvc3ZnPg==
[RuboCop-url]: https://docs.rubocop.org/rubocop-rails/index.html

[Ruby]: https://img.shields.io/badge/Ruby-000000?style=for-the-badge&logo=ruby&logoColor=CC342D
[Ruby-url]: https://www.ruby-lang.org/en/

[Visual Studio Code]: https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white
[Visual Studio Code-url]: https://code.visualstudio.com/

[bcrypt-docs]: https://github.com/bcrypt-ruby/bcrypt-ruby
[capybara-docs]: https://github.com/teamcapybara/capybara
[factory_bot_rails-docs]: https://github.com/thoughtbot/factory_bot_rails
[faker-docs]: https://github.com/faker-ruby/faker
[faraday-docs]: https://lostisland.github.io/faraday/
[figaro-docs]: https://github.com/laserlemon/figaro
[jsonapi-serializer-docs]: https://github.com/jsonapi-serializer/jsonapi-serializer
[launchy-docs]: https://www.rubydoc.info/gems/launchy/2.2.0
[omniauth-google-oauth2-docs]: https://github.com/zquestz/omniauth-google-oauth2
[orderly-docs]: https://github.com/jmondo/orderly
[pry-docs]: https://github.com/pry/pry
[rspec-rails-docs]: https://github.com/rspec/rspec-rails
[shoulda-matchers-docs]: https://github.com/thoughtbot/shoulda-matchers
[simplecov-docs]: https://github.com/simplecov-ruby/simplecov
[vcr-docs]: https://github.com/vcr/vcr
[webmock-docs]: https://github.com/bblimke/webmock
