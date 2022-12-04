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

[Fly]: https://img.shields.io/badge/Fly-9C27B0?style=for-the-badge&logo=data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4NCjwhLS0gR2VuZXJhdG9yOiBBZG9iZSBJbGx1c3RyYXRvciAyNC4xLjEsIFNWRyBFeHBvcnQgUGx1Zy1JbiAuIFNWRyBWZXJzaW9uOiA2LjAwIEJ1aWxkIDApICAtLT4NCjxzdmcgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgeD0iMHB4IiB5PSIwcHgiDQoJIHZpZXdCb3g9IjAgMCA1MTIgNTEyIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MTIgNTEyOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+DQo8c3R5bGUgdHlwZT0idGV4dC9jc3MiPg0KCS5zdDB7ZmlsbDp1cmwoI1NWR0lEXzFfKTt9DQo8L3N0eWxlPg0KPGc+DQoJDQoJCTxsaW5lYXJHcmFkaWVudCBpZD0iU1ZHSURfMV8iIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIiB4MT0iMC44NDg2IiB5MT0iNTExLjU3MDgiIHgyPSIyLjEzMTEiIHkyPSI1MTEuNTcwOCIgZ3JhZGllbnRUcmFuc2Zvcm09Im1hdHJpeCgxNzAuODEyOCAxOTEuMTk1NCAtMTkxLjE5NTQgNDE1LjM2IDk3NzkxLjY2NDEgLTIxMjU3MS42NDA2KSI+DQoJCTxzdG9wICBvZmZzZXQ9IjAiIHN0eWxlPSJzdG9wLWNvbG9yOiMzMjg1RUYiLz4NCgkJPHN0b3AgIG9mZnNldD0iMSIgc3R5bGU9InN0b3AtY29sb3I6I0E2M0VFMSIvPg0KCTwvbGluZWFyR3JhZGllbnQ+DQoJPHBhdGggY2xhc3M9InN0MCIgZD0iTTI1Ni45LDQyNWMwLjYsMC4yLDEuMiwwLjMsMS44LDAuNWMwLjYsMC4zLDEuMSwwLjcsMS42LDFsMC4xLDAuMWwwLjUsMC41bDAuOSwwLjhjMS4zLDEuMiwyLjYsMi40LDMuOCwzLjYNCgkJYzIuMywyLjIsNC42LDQuNiw2LjksNi45YzIuNCwyLjYsNC44LDUuMiw3LjEsNy45YzEuNSwxLjgsMi45LDMuNiw0LjMsNS40YzEuMywxLjgsMi42LDMuNiwzLjgsNS40YzEuMSwxLjcsMi4xLDMuMywzLDUuMQ0KCQljMC44LDEuNSwxLjUsMy4xLDIuMiw0LjdjMS4xLDIuOCwxLjksNS43LDIuMiw4LjZjMC4xLDAuNSwwLjEsMS4xLDAuMSwxLjdjMCwwLjUsMCwxLDAsMS41YzAsMC44LTAuMSwxLjYtMC4xLDIuNQ0KCQljLTAuMywzLjMtMS4xLDYuNS0yLjMsOS42Yy0wLjgsMi4xLTEuOSw0LjEtMy4yLDZjLTEsMS41LTIuMiwyLjktMy41LDQuM2MtMSwxLTIuMSwyLTMuMywyLjljLTAuOSwwLjctMS45LDEuNC0yLjksMg0KCQljLTAuOCwwLjUtMS42LDEtMi41LDEuNGMtNSwyLjYtMTAuNSw0LjEtMTYsNC42Yy0wLjksMC4xLTEuNywwLjEtMi42LDAuMmMtMC45LDAtMS45LDAuMS0yLjgsMC4xYy0yLDAtMy45LTAuMS01LjktMC40DQoJCWMtMy4yLTAuNC02LjUtMS4xLTkuNi0yLjFjLTIuNy0wLjktNS4yLTIuMS03LjYtMy42Yy0yLjYtMS42LTQuOS0zLjQtNy01LjZjLTEuNC0xLjUtMi42LTMtMy43LTQuN2MtMS0xLjYtMS45LTMuMy0yLjYtNQ0KCQljLTEuMi0yLjktMS45LTYtMi4yLTkuMWMtMC4xLTEtMC4yLTItMC4yLTIuOWMwLTAuOCwwLTEuNiwwLTIuNGMwLjEtMS40LDAuMy0yLjksMC42LTQuM2MwLjQtMS41LDAuOC0zLjEsMS40LTQuNQ0KCQljMC42LTEuNSwxLjItMywyLTQuNGMwLjktMS43LDEuOS0zLjQsMi45LTUuMWMxLjEtMS44LDIuMy0zLjUsMy41LTUuMmMxLjktMi42LDMuOS01LjEsNi03LjZjMi4yLTIuNiw0LjUtNS4xLDYuOC03LjUNCgkJYzIuMS0yLjIsNC4yLTQuMyw2LjQtNi40YzAuOS0wLjksMS44LTEuNywyLjgtMi42YzAuNy0wLjcsMS40LTEuMywyLjItMS45bDAuMS0wLjFjMS42LTEsMS42LTEsMy40LTEuNUgyNTYuOXogTTI1OS45LDAuMWw0LjQsMC4xDQoJCWwyLDAuMWwxMS45LDFsMTYuNSwyLjNsMS4yLDAuM2wxNiwzLjlsNC41LDEuM2w1LjEsMS43bDYuMiwyLjNsNC44LDJsNy41LDMuNWw0LjIsMi4xbDguNSw1bDIuNiwxLjZsMTEuNiw4LjRsMi44LDIuNWw4LDcuMg0KCQlsNi45LDcuM2wxLjksMi4xbDguMSwxMC42bDEuMiwxLjlsNi4yLDEwLjRsMS43LDMuM2wzLjUsNy43bDMuNiw5bDEuMiwzLjVsMy45LDE0bDMsMTlsMC41LDUuOWwwLjUsOC41bDAsMS4ybC0wLjIsOS41bC0wLjEsMS44DQoJCWwtMC41LDMuN2wtMi43LDE1LjFsLTAuNCwxLjhsLTYuMSwxOWwtNS43LDEzLjdsLTcuMywxNC40bC0xMywyMi41bC02LjcsMTAuMWwtOC4xLDEybC01LjgsNy45bC0xMS40LDE1LjFsLTcuOCw5LjdsLTExLjYsMTQNCgkJbC04LjEsOS40bC0xMi42LDE0bC03LjksOC42bC0yMy40LDI0LjJsLTAuNSwwLjVMMjY3LjcsMzg5bC02LjksNi41bC0wLjQsMC40bC0wLjUsMC41bC0wLjcsMC41bC0wLjUsMC4ybC0xLjQsMC41bC0zLjMtMC4xDQoJCWwtMC4zLTAuMWwtMS44LTEuMWwtMC4yLTAuMmwtMC4yLTAuMmwtMC45LTAuOWMtMC45LTAuOC0xLjctMS42LTIuNi0yLjRsLTAuMi0wLjJsLTIyLjktMjIuNmwtNy4xLTcuM2wtMTguMi0xOS4zbC00LjMtNC43DQoJCWwtMjEuOS0yNS4zbC02LjEtNy41TDE0OCwyODAuOGwtMS45LTIuNWwtMTQuNi0yMS40bC00LTYuM0wxMTcsMjMyLjdsLTMuMS01LjVsLTkuMi0xOS4ybC0xLjUtMy44TDk4LDE4OS40bC0xLjgtNi4zbC0xLjUtNi4xDQoJCWwtMS4zLTYuNmwtMS03LjRsLTAuNC00LjVsLTAuMi04LjRsMC0xLjRsMC4yLTQuNmwxLjgtMTguNGwwLjQtMi40bDQuMi0xOC40bDAuMS0wLjNsMC43LTIuMWwyLjktOC41bDAuOS0yLjFsNC44LTEwLjRsMy4yLTYuMQ0KCQlsNC42LTcuNWw0LjYtNi43bDMuMi00LjJsMy43LTQuNGw0LjEtNC41bDMuMy0zLjNsOC44LTcuN2w2LjYtNS4zbDcuOC01LjJsNS41LTMuNWwxMS43LTYuMWwxNi42LTYuOGwwLjgtMC4zTDIwNyw1LjlsNS44LTEuMw0KCQlsOC0xLjZsNS40LTAuOGw4LjMtMWw1LjYtMC41bDExLjItMC42aDBsMCwwbDQuMiwwbDAuNCwwbDAsMGwwLjMsMEwyNTkuOSwwLjF6IE0yNTAuNCwyNi4yYy0xLjcsMC4yLTMuMywwLjQtNSwwLjcNCgkJYy0yLjUsMC41LTQuOSwxLjEtNy4zLDEuOWMtMi42LDAuOS01LjEsMS45LTcuNSwzLjJjLTEuNiwwLjgtMy4yLDEuNy00LjcsMi43Yy0xMS4zLDcuMi0xOS45LDE3LjktMjYuMiwyOS41DQoJCWMtMS4xLDEuOS0yLjEsMy45LTMsNS45Yy0xLjEsMi40LTIuMiw0LjgtMy4xLDcuM2MtMS4zLDMuMi0yLjQsNi41LTMuNSw5LjdjLTEuMyw0LTIuNCw4LjEtMy4zLDEyLjJjLTEuMiw1LjItMi4yLDEwLjQtMywxNS43DQoJCWMtMSw2LjctMS43LDEzLjQtMi4xLDIwLjFjLTAuMyw0LjMtMC40LDguNi0wLjUsMTIuOWMtMC4xLDQuOS0wLjEsOS45LDAuMywxNC44YzAuOCwxMS41LDIuOCwyMi45LDUuNCwzNC4yDQoJCWMzLjMsMTQuMiw3LjUsMjguMSwxMi40LDQxLjljNi4xLDE3LjIsMTMsMzQuMiwyMC41LDUwLjhjOS4zLDIwLjYsMTkuNCw0MC44LDMwLjIsNjAuNmwwLjgsMS41VjI2LjFMMjUwLjQsMjYuMnogTTI5My4xLDI3DQoJCWMxLjQsMC45LDIuOCwxLjksNC4xLDNjMTIuMiw5LjUsMjEuMywyMi42LDI3LjcsMzYuNmMxLjIsMi42LDIuMyw1LjIsMy4zLDcuOGMxLjMsMy41LDIuNiw3LDMuNywxMC41YzUuMSwxNi41LDcuNywzMy42LDguNyw1MC44DQoJCWMwLjMsNC4zLDAuNCw4LjUsMC41LDEyLjhjMC4xLDMuMywwLjEsNi43LTAuMSwxMGMtMC4xLDMuNy0wLjQsNy4zLTAuOCwxMC45Yy0wLjksOC40LTIuMiwxNi43LTQsMjQuOWMtMi4xLDkuNi00LjYsMTktNy40LDI4LjQNCgkJYy0zLjgsMTIuNS04LjEsMjQuOS0xMi45LDM3LjFjLTQuMywxMS4xLTguOSwyMi4xLTEzLjgsMzNjLTguNywxOS41LTE4LjMsMzguNy0yOC40LDU3LjZsMS44LTEuOWMxNC4zLTE0LjcsMjguMS0yOS45LDQxLjMtNDUuNQ0KCQljMTIuNi0xNSwyNC44LTMwLjQsMzYtNDYuNWM5LjEtMTMuMSwxNy42LTI2LjUsMjQuOS00MC42YzMuMy02LjQsNi40LTEyLjgsOS4xLTE5LjVjMi4yLTUuMyw0LjEtMTAuOCw1LjctMTYuMw0KCQljMi02LjgsMy40LTEzLjcsNC0yMC43YzAuMi0zLjEsMC4zLTYuMywwLjItOS40Yy0wLjEtMy40LTAuMi02LjctMC41LTEwLjFjLTEuMS0xMi44LTMuOC0yNS42LTguNS0zNy42Yy0zLjItOC4yLTcuMi0xNi0xMi4xLTIzLjINCgkJYy04LjMtMTIuMy0xOS4xLTIyLjctMzEuNC0zMWMtOS4xLTYuMS0xOC45LTExLTI5LjItMTQuN0MzMDgsMzAuNiwzMDAuNiwyOC41LDI5My4xLDI3eiIvPg0KPC9nPg0KPC9zdmc+DQo=
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
