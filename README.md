# api

## GET

### /jobs/current

#### body
```
{
    "job": {
        "id": 5, 
        "is_finished": false, 
        "job_id": 1, 
        "user_id": 3
        "message_id": 4, 
        "created_at": "2015-05-16T08:21:37+00:00", 
        "updated_at": "2015-05-16T08:21:37+00:00", 
        
    }
}
```

## POST

### /jobs/new

#### body
```
{
    "job_id": 1, 
    "user_id": 3,
    "message_id": 4 # option
}
```

#### usage
```
curl -k -H "Content-type: application/json" -X POST https://thedoroemons.herokuapp.com/jobs/new -d '{"job_id":1,"user_id":3,"message_id":4}'
```
