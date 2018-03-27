#only as example... must be adapted according to the needs -> it is only to show the api calls

#create user and token

curl -s -S -i -X POST -H "Content-Type: application/senml+json" http://manager-mainflux.192.168.64.4.nip.io/users -d '{"email":"john.doe@email.com", "password":"123"}'
curl -s -S -i -X POST -H "Content-Type: application/senml+json" http://manager-mainflux.192.168.64.4.nip.io/tokens -d '{"email":"john.doe@email.com", "password":"123"}'

{"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIxODk3MzMsImlhdCI6MTUyMjE1MzczMywiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.tz5RDWsRGQOjr_xlxUvqPdzi_G7jlxNfDPGc1C7NP8g"}

#registration

curl -s -S -i -X POST -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIxODk3MzMsImlhdCI6MTUyMjE1MzczMywiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.tz5RDWsRGQOjr_xlxUvqPdzi_G7jlxNfDPGc1C7NP8g" http://manager-mainflux.192.168.64.4.nip.io/clients -d '{"type":"device", "name":"test1"}'
curl -s -S -i -X POST -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIxODk3MzMsImlhdCI6MTUyMjE1MzczMywiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.tz5RDWsRGQOjr_xlxUvqPdzi_G7jlxNfDPGc1C7NP8g" http://manager-mainflux.192.168.64.4.nip.io/clients -d '{"type":"device", "name":"test2"}'
curl -s -S -i -X POST -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIxODk3MzMsImlhdCI6MTUyMjE1MzczMywiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.tz5RDWsRGQOjr_xlxUvqPdzi_G7jlxNfDPGc1C7NP8g" http://manager-mainflux.192.168.64.4.nip.io/clients -d '{"type":"app", "name":"app1"}'
curl -s -S -i -X POST -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIxODk3MzMsImlhdCI6MTUyMjE1MzczMywiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.tz5RDWsRGQOjr_xlxUvqPdzi_G7jlxNfDPGc1C7NP8g" http://manager-mainflux.192.168.64.4.nip.io/channels -d '{"name":"testchan"}'
curl -s -S -i --noproxy localhost -X GET -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIxODk3MzMsImlhdCI6MTUyMjE1MzczMywiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.tz5RDWsRGQOjr_xlxUvqPdzi_G7jlxNfDPGc1C7NP8g" http://manager-mainflux.192.168.64.4.nip.io/clients
curl -s -S -i -X PUT -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIxODk3MzMsImlhdCI6MTUyMjE1MzczMywiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.tz5RDWsRGQOjr_xlxUvqPdzi_G7jlxNfDPGc1C7NP8g" http://manager-mainflux.192.168.64.4.nip.io/channels/85dc2d03-5f9d-4404-8edc-87574c31d977/clients/c8bf981f-0bb2-49da-aa8b-52b21f25d467
curl -s -S -i -X PUT -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIxODk3MzMsImlhdCI6MTUyMjE1MzczMywiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.tz5RDWsRGQOjr_xlxUvqPdzi_G7jlxNfDPGc1C7NP8g" http://manager-mainflux.192.168.64.4.nip.io/channels/85dc2d03-5f9d-4404-8edc-87574c31d977/clients/4e8744bf-28ec-4018-b33c-36c6dcfc91d1
curl -s -S -i -X PUT -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIxODk3MzMsImlhdCI6MTUyMjE1MzczMywiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.tz5RDWsRGQOjr_xlxUvqPdzi_G7jlxNfDPGc1C7NP8g" http://manager-mainflux.192.168.64.4.nip.io/channels/85dc2d03-5f9d-4404-8edc-87574c31d977/clients/f5028ae8-1842-41e4-85e8-9cf8dd954027

#http sender
curl -s -S -i -X GET -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIxODk3MzMsImlhdCI6MTUyMjE1MzczMywiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.tz5RDWsRGQOjr_xlxUvqPdzi_G7jlxNfDPGc1C7NP8g" http://manager-mainflux.192.168.64.4.nip.io/clients/c8bf981f-0bb2-49da-aa8b-52b21f25d467
curl -s -S -i -X GET -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIxODk3MzMsImlhdCI6MTUyMjE1MzczMywiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.tz5RDWsRGQOjr_xlxUvqPdzi_G7jlxNfDPGc1C7NP8g" http://manager-mainflux.192.168.64.4.nip.io/clients/4e8744bf-28ec-4018-b33c-36c6dcfc91d1
curl -s -S -i -X GET -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIxODk3MzMsImlhdCI6MTUyMjE1MzczMywiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.tz5RDWsRGQOjr_xlxUvqPdzi_G7jlxNfDPGc1C7NP8g" http://manager-mainflux.192.168.64.4.nip.io/clients/f5028ae8-1842-41e4-85e8-9cf8dd954027
#eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1MjIxNTM4NzUsImlzcyI6Im1haW5mbHV4Iiwic3ViIjoiNGU4NzQ0YmYtMjhlYy00MDE4LWIzM2MtMzZjNmRjZmM5MWQxIn0.Z0f2EZHf31_tW_7hvyS1ZwCJgX4oJwVDixAV-PwnH90
#eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1MjIxNTM4ODEsImlzcyI6Im1haW5mbHV4Iiwic3ViIjoiYzhiZjk4MWYtMGJiMi00OWRhLWFhOGItNTJiMjFmMjVkNDY3In0.0JDyJAjypgbLPfgiBCF9p4_8l3p1LNR82UC-PBlwSJI
#eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1MjIxNTc3NTQsImlzcyI6Im1haW5mbHV4Iiwic3ViIjoiZjUwMjhhZTgtMTg0Mi00MWU0LTg1ZTgtOWNmOGRkOTU0MDI3In0.frR-yQdlZfIi7bz6Ui8fSdoIG4JoLNTURS7P2qkxYIo
curl -s -S -i -X POST -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1MjIxNTM4NzUsImlzcyI6Im1haW5mbHV4Iiwic3ViIjoiNGU4NzQ0YmYtMjhlYy00MDE4LWIzM2MtMzZjNmRjZmM5MWQxIn0.Z0f2EZHf31_tW_7hvyS1ZwCJgX4oJwVDixAV-PwnH90" http://http-adapter-mainflux.192.168.64.4.nip.io/channels/85dc2d03-5f9d-4404-8edc-87574c31d977/messages -d '[{"bn":"some-base-name:","bt":1.276020076001e+09, "bu":"A","bver":5, "n":"voltage","u":"V","v":120.1}, {"n":"current","t":-5,"v":1.2}, {"n":"current","t":-4,"v":1.3}]'

#Todo: Check how to create NATS subscriber in order to retrieve the messages / persist the messages

