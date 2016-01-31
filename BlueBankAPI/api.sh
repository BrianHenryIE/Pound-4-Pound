# Blue Bank API Testing
# https://bluebank.portal.azure-api.net

# xiaozhenbang@gmail.com
# Primary Key: 50e7d7a365ab44438978173d13fe9300
# Secondary Key: ccb918b754f146e78e1b82c068d9dd73

# brianhenryie@gmail.com
# Primary Key: a307fb61ed9549138a160f4af0642a46
# Secondary Key: 56a6dcdca7e9471c8d72b9999a07cd22

# Bearer Request Website: http://cloudlevel.io/token
# Custom Headers: Primary key & Bearer

# Those examples below are using API with xiaozhenbang@gmail.com

# STRUCTURE
# 
# Customer (ID)
# |
# |- Accounts (A customer could has multiple accounts)
# |  |
# |  |- ID: Unique number needed when request information of account
# |  |- Account Num: Unique number needed when request a transactions

# POST Body for Payment
# toAccountNumber - Target Account Num
# toSortCode


# Request bearer
curl -v -X GET "https://cloudlevel.io/token" -H "Ocp-Apim-Subscription-Key: 50e7d7a365ab44438978173d13fe9300"

# Bearer: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjdXN0b21lcklkIjoiNTZhY2Q1YTk2N2I1YTQ1YzA4ZTJkMzdjIiwicm9sZSI6InVzZXIiLCJwcmltYXJ5U3Vic2NyaWJlcktleSI6IjUwZTdkN2EzNjVhYjQ0NDM4OTc4MTczZDEzZmU5MzAwIiwiaWF0IjoxNDU0MTg0MjI1fQ.JH8p2mcM5FJnIxYaiFXi9aDGrhU3RaH9MDHMm7SYn18

# Request customer info from Blue Bank API
curl -v -X GET "https://bluebank.azure-api.net/api/v0.5.20/customers/" -H "Ocp-Apim-Subscription-Key: 50e7d7a365ab44438978173d13fe9300" -H "bearer: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjdXN0b21lcklkIjoiNTZhY2Q1YTk2N2I1YTQ1YzA4ZTJkMzdjIiwicm9sZSI6InVzZXIiLCJwcmltYXJ5U3Vic2NyaWJlcktleSI6IjUwZTdkN2EzNjVhYjQ0NDM4OTc4MTczZDEzZmU5MzAwIiwiaWF0IjoxNDU0MTY4NzE3fQ.17YBSnYYqKZrAd5rr90ac0hg1Vu34aSQBU9B3_dsliY" 

# Request explicit customer info
curl -v -X GET "https://bluebank.azure-api.net/api/v0.5.20/customers/56acd5a967b5a45c08e2d37c" -H "Ocp-Apim-Subscription-Key: 50e7d7a365ab44438978173d13fe9300" -H "bearer: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjdXN0b21lcklkIjoiNTZhY2Q1YTk2N2I1YTQ1YzA4ZTJkMzdjIiwicm9sZSI6InVzZXIiLCJwcmltYXJ5U3Vic2NyaWJlcktleSI6IjUwZTdkN2EzNjVhYjQ0NDM4OTc4MTczZDEzZmU5MzAwIiwiaWF0IjoxNDU0MTY4NzE3fQ.17YBSnYYqKZrAd5rr90ac0hg1Vu34aSQBU9B3_dsliY" 

# Request explicit accounts of customer
curl -v -X GET "https://bluebank.azure-api.net/api/v0.5.20/customers/56acd5a967b5a45c08e2d37c/accounts/" -H "Ocp-Apim-Subscription-Key: 50e7d7a365ab44438978173d13fe9300" -H "bearer: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjdXN0b21lcklkIjoiNTZhY2Q1YTk2N2I1YTQ1YzA4ZTJkMzdjIiwicm9sZSI6InVzZXIiLCJwcmltYXJ5U3Vic2NyaWJlcktleSI6IjUwZTdkN2EzNjVhYjQ0NDM4OTc4MTczZDEzZmU5MzAwIiwiaWF0IjoxNDU0MTY4NzE3fQ.17YBSnYYqKZrAd5rr90ac0hg1Vu34aSQBU9B3_dsliY" 

# Request explicit account info
curl -v -X GET "https://bluebank.azure-api.net/api/v0.5.20/accounts/56acd5a967b5a45c08e2d37e" -H "Ocp-Apim-Subscription-Key: 50e7d7a365ab44438978173d13fe9300" -H "bearer: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjdXN0b21lcklkIjoiNTZhY2Q1YTk2N2I1YTQ1YzA4ZTJkMzdjIiwicm9sZSI6InVzZXIiLCJwcmltYXJ5U3Vic2NyaWJlcktleSI6IjUwZTdkN2EzNjVhYjQ0NDM4OTc4MTczZDEzZmU5MzAwIiwiaWF0IjoxNDU0MTY4NzE3fQ.17YBSnYYqKZrAd5rr90ac0hg1Vu34aSQBU9B3_dsliY" 

curl -v -X GET "https://bluebank.azure-api.net/api/v0.5.20/accounts/56acd5a967b5a45c08e2d37d" -H "Ocp-Apim-Subscription-Key: 50e7d7a365ab44438978173d13fe9300" -H "bearer: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjdXN0b21lcklkIjoiNTZhY2Q1YTk2N2I1YTQ1YzA4ZTJkMzdjIiwicm9sZSI6InVzZXIiLCJwcmltYXJ5U3Vic2NyaWJlcktleSI6IjUwZTdkN2EzNjVhYjQ0NDM4OTc4MTczZDEzZmU5MzAwIiwiaWF0IjoxNDU0MTY4NzE3fQ.17YBSnYYqKZrAd5rr90ac0hg1Vu34aSQBU9B3_dsliY"

# Request payment
curl -v -X POST "https://bluebank.azure-api.net/api/v0.5.20/accounts/56acd5a967b5a45c08e2d37d/payments" -H "Ocp-Apim-Subscription-Key: 50e7d7a365ab44438978173d13fe9300" -H "bearer: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjdXN0b21lcklkIjoiNTZhY2Q1YTk2N2I1YTQ1YzA4ZTJkMzdjIiwicm9sZSI6InVzZXIiLCJwcmltYXJ5U3Vic2NyaWJlcktleSI6IjUwZTdkN2EzNjVhYjQ0NDM4OTc4MTczZDEzZmU5MzAwIiwiaWF0IjoxNDU0MTY4NzE3fQ.17YBSnYYqKZrAd5rr90ac0hg1Vu34aSQBU9B3_dsliY" -H "Content-Type: application/json" --data-ascii '{"toAccountNumber":"50000034", "toSortCode":"839999","paymentReference":"Bullshit","paymentAmount":"250","callbackUri":"http://starkshaw.me"}'

# Request transactions
curl -v -X GET "https://bluebank.azure-api.net/api/v0.5.20/accounts/56acd5a967b5a45c08e2d37e/transactions" -H "Ocp-Apim-Subscription-Key: 50e7d7a365ab44438978173d13fe9300" -H "bearer: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjdXN0b21lcklkIjoiNTZhY2Q1YTk2N2I1YTQ1YzA4ZTJkMzdjIiwicm9sZSI6InVzZXIiLCJwcmltYXJ5U3Vic2NyaWJlcktleSI6IjUwZTdkN2EzNjVhYjQ0NDM4OTc4MTczZDEzZmU5MzAwIiwiaWF0IjoxNDU0MTY4NzE3fQ.17YBSnYYqKZrAd5rr90ac0hg1Vu34aSQBU9B3_dsliY"


# Those examples below are using API with brianhenryie@gmail.com
curl -v -X GET "https://cloudlevel.io/token" -H "Ocp-Apim-Subscription-Key: a307fb61ed9549138a160f4af0642a46"

# Bearer: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjdXN0b21lcklkIjoiNTZhY2ZjMTI5N2E2MDEwNjA5YjQyZmFjIiwicm9sZSI6InVzZXIiLCJwcmltYXJ5U3Vic2NyaWJlcktleSI6ImEzMDdmYjYxZWQ5NTQ5MTM4YTE2MGY0YWYwNjQyYTQ2IiwiaWF0IjoxNDU0MTg0MTgwfQ.g5Mfb981yu7KjudLyi-iCc4xqBDcbKiBLeBnSKt3G_s


