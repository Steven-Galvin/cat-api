# _Felinus Catus API_

#### Felinus Catus API provides easy access to cat breeds and related information pertaining to the breeds. Each breed has the breeds attributes: origin, common name, characteristics, an image, fun facts, variations and a brief history of the breed.

#### (the API is a RESTful API, the return format for all endpoints is [JSON](http://json.org/ "JSON"))

#### By _**Kat Gifford & Steven Galvin**_

# _Endpoints_

* _`Get` /v1/breeds_
* _`Get` /v1/breeds/:id_
* _`Get` /v1/breeds/?attr_name=search_params_
<!-- * _`Get` /v1/breeds/?attr_name=_ -->


## Setup/Installation Requirements

* _Clone the repo_
* _Run the following commands in the root of the project to set up the application_
```
$ bundle install
$ rails db:setup
$ rails s
```

## Technologies Used

* _HTML5/SCSS_
* _Rails_
* _Ruby_
* _Rspec_
* _Faker_


### License

*This API is licensed under the MIT License.*

Copyright (c) 2017 **_Kat Gifford & Steven Galvin_**
