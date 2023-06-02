<div id="top"></div>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

<h1 align="center">Take Home Challenge</h1>

  <p align="center">
    <br />
    <a href="https://github.com/MoxieMax/2211-take-home/issues">Report Bug</a>
    ·
    <a href="https://github.com/MoxieMax/2211-take-home/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project
This is a REST API for a tea subscription service to:

* View a customer's active and cancelled subscriptions
* Create a tea subscription for a customer
* Cancel a subscription

<br />
After cloning the repo:

  1. `bundle install`
  3. Run `rails db:{create,migrate,seed}`
  5. Run `rails s`
  7. API endpoints are:

```
GET   /api/v1/customers/:customer_id/subscriptions
POST  /api/v1/customers/:customer_id/subscriptions
PATCH /api/v1/customers/:customer_id/subscriptions/:id                 
```

<br />
<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* Ruby
* Rails
* PostgreSQL
* RSpec
* Postman

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

Max MacGillivray - MaxMacGillivray@protonmail.com

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* Thank you Turing instructors!

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/MoxieMax/take-home.svg?style=for-the-badge
[contributors-url]: https://github.com/MoxieMax/2211-take-home/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/MoxieMax/take-home.svg?style=for-the-badge
[forks-url]: https://github.com/MoxieMax/2211-take-home/network/members
[stars-shield]: https://img.shields.io/github/stars/MoxieMax/take-home.svg?style=for-the-badge
[stars-url]: https://github.com/MoxieMax/2211-take-home/stargazers
[issues-shield]: https://img.shields.io/github/issues/MoxieMax/take-home.svg?style=for-the-badge
[issues-url]: https://github.com/MoxieMax/2211-take-home/issues
[license-shield]: https://img.shields.io/github/license/MoxieMax/take-home.svg?style=for-the-badge
[license-url]: https://github.com/MoxieMax/2211-take-home/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/max-macgillivray
