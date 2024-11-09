# WebGIS User Management

## Dependency
- PostgreSQL
- Redis

## Creating a User
Request:
```
curl --location 'http://auth.jeypon.com:3002/users' \
--header 'Content-Type: application/json' \
--data '{
  "user": {
    "login_name": "new_user1",
    "password": "password123",
    "password_confirmation": "password123",
    "role_id": 1,
    "geoserver_level_id": 2
  }
}'
```

Response:
```
{
    "id": 5,
    "login_name": "new_user1",
    "password_digest": "$2a$12$xr5iFarCZ5JNz3fzZGEIKut1/sW0m7H5Ru31Pzs8bSfHr4x8zEITm",
    "role_id": 1,
    "created_at": "2024-11-09T19:55:39.300Z",
    "updated_at": "2024-11-09T19:55:39.300Z",
    "geoserver_level_id": 2
}
```
## List All Users
Request:
```
curl --location 'http://auth.jeypon.com:3002/users'
```

Response:
```
[
    {
        "id": 1,
        "login_name": "admin",
        "password_digest": "$2a$12$mIR5IThYmhth4THJLHSJ5O5.0NdV/1CNcXyI9/he.ShEdqhtNVAlq",
        "role_id": 1,
        "created_at": "2024-10-04T18:15:53.109Z",
        "updated_at": "2024-10-04T18:15:53.109Z",
        "geoserver_level_id": 1
    },
    {
        "id": 2,
        "login_name": "user",
        "password_digest": "$2a$12$M7dsvZzpRN4UOO95WZdpzORZTPjLqUfQy2.kkzCbrXj1a4mzzUS5y",
        "role_id": 2,
        "created_at": "2024-10-04T18:15:53.478Z",
        "updated_at": "2024-10-04T18:15:53.478Z",
        "geoserver_level_id": 2
    },
    {
        "id": 3,
        "login_name": "user2",
        "password_digest": "$2a$12$vkpOiU0/Xclxzi2HZjKWhOBi/D02u/30BytaB81RycxNEfm9EYxy2",
        "role_id": 2,
        "created_at": "2024-10-04T18:15:53.834Z",
        "updated_at": "2024-10-04T18:15:53.834Z",
        "geoserver_level_id": 3
    },
    {
        "id": 4,
        "login_name": "new_user",
        "password_digest": "$2a$12$WVBIiNAbjN7jQu9jUa68f.ILAG9oE41J84.HxBZVVMlzjhqiOS9su",
        "role_id": 1,
        "created_at": "2024-10-04T20:18:23.407Z",
        "updated_at": "2024-10-04T20:18:23.407Z",
        "geoserver_level_id": 2
    },
    {
        "id": 5,
        "login_name": "new_user1",
        "password_digest": "$2a$12$xr5iFarCZ5JNz3fzZGEIKut1/sW0m7H5Ru31Pzs8bSfHr4x8zEITm",
        "role_id": 1,
        "created_at": "2024-11-09T19:55:39.300Z",
        "updated_at": "2024-11-09T19:55:39.300Z",
        "geoserver_level_id": 2
    }
]
```