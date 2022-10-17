
# Octo Events

Octo Events is a Project building with Ruby on Rails and Postgres. This project has an objective to collect and save the Webhooks responses coming from Github.

## First Steps
1. You need install ruby 3.1.2
2. Clone the repo
3. Run bundle install to download all gem dependencies
4. Execute `rails db:create` to create database
5. Execute `rails db:migrate` for creating migrations
6. Execute `rails db:seeds` for creating the main user for applying the requests
7. Runs `rspec` to execute all spec scenarios
8. Runs `rails server` to start puma and login into the application

Is very important you have installed ngrok to create the tunnel for GH connections, so after apoint the ngrok to the application (`ngrok http 3000`) get the URL and use it on GitHub for receive the payloads :) 

## Main Requests
### Login with a user
```
curl --location --request POST 'http://localhost:3000/auth/sign_in' \
--header 'Content-Type: application/json' \
--header 'Cookie: _interslice_session=Ysn4iq151ZV6NEfqFnGR43C846L3iy5NCxeiFb6DHml9QwbskL732WY0qWgR8MGQ9ux6uSTroz1YNEdxgWIqXEyG%2BNxOZMojQt4dlqlV3A0onqeewqzBxjFNGQJq29bTA0W8bOM%2BMNb4cZVBlRWrecW2kKjfYHrx7giGrh5jGwYDJUTYAzqbxsN8YzWuf4Tr8zI4b7jtFMqG7YJy0s8BESsnYSRPC%2Fk6A7TxmswjZUCKtiIGzQlhTffa3Wdc%2BpuLAxJdgSJ9DYFkfp7j6h4xeRFPGiXSLxNXiY1U--iaBlsBguWNckgtGx--%2FIax%2FKRb85ifmRIHnNFWYA%3D%3D' \
--data-raw '{
"email": "test@mail.com",
"password": 123456
}'
```
PS: This user is already created into database, but you are free to create a new user

### Payload Request
This request is specific for github to send requests to our application this is a **POST** request `http://<url>/api/v1/webhooks/payload`

### Listen Events
```
curl --location --request GET 'http://localhost:3000/api/v1/issues/1/events.json' \
--header 'Authorization: Bearer <received_token_after_login>' \
--header 'Cookie: _interslice_session=XZbjlegNu3AQ4sC4%2Bs59gLZ9BVNq9DHWeTBjTFmF7vrA5Oi%2FkdR542qO1V%2FTmsG2dLIQsU1jLiRtCp1lQnbso4nHUT1uiOwSh7%2F%2BmRaffQmGySgOrvNfJ6G%2BsY4T3IEQouBFHLJ7Ki%2BuhX746jk4aWlUjGCRpPUZLec2HzBS911TcYvdCY8JXiGqpthVQCUrKIQnM8%2Bl588oD38EQr7tu761Xs3JSFgDCAvbPUjYecnf%2FA%2FcWWp8PAAUD2pmhL67fOSDxEBOyrzGzbYpibYvFRHfiEzdW%2FPnL4Fq--KJ63Bu%2FKDvJR%2FsYv--JzjhUfpBCoZyussgNuzD7g%3D%3D'
```
