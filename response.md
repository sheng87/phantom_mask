# Response
## Introduction about my work 
#### version
* ruby 2.7.2
* Rails 6.1.4
* PostgreSQL 13.3

#### (I've made a few attempts to import raw data into database but I couldn't make it, so I inser parts of data with rails console manually.)  

#### Task completed
* List all pharmacies that have more or less than x mask products within a price range
* Edit pharmacy name, mask name, and mask price
* Remove a mask product from a pharmacy given by mask name

## API Document (required)
### route resources
  
* get '/drugstores', to: 'drugstore#index'
* get '/drugstores/:id', to: 'drugstore#edit'
* get '/masks/:id', to: 'masks#edit'
* post '/searches/:id', to: 'searches#create'
* put '/drugstores/:id', to: 'drugstore#update'
* put '/masks/:id', to: 'masks#update'
* delete 'masks/:mask_name', to: 'masks#destroy'

### Http Verb 
####  'Get' has optinal parameters in query params
*  http://localhost:3000/api/v1/drugstores/5
*  id: 5

#### 'Post' to create new data pass paramter with hash
* http://localhost:3000/api/v1/searches/5
* parameters {min_price: 20, max_price:40}

#### 'Put' to update existing data
* http://localhost:3000/api/v1/masks/3
* paramters {mask_name: "", price: }


#### 'Delete' destroy data
* http://localhost:3000/api/v1/mask_name
* parameters {mask_name: ""}

## Import Data Commands (required)


## Test Coverage Report(optional)

  
## Demo Site Url (optional)
  https://shrouded-tundra-22165.herokuapp.com/(postgresql permission denied, deploy not successful)
  demo ready on [heroku](#demo-site-url-optional)
