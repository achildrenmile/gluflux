#only as example... must be adapted according to the needs -> it is only to show the api calls

#create user and token

curl -s -S -i -X POST -H "Content-Type: application/senml+json" http://manager-mainflux.192.168.64.4.nip.io/users -d '{"email":"john.doe@email.com", "password":"123"}'
curl -s -S -i -X POST -H "Content-Type: application/senml+json" http://manager-mainflux.192.168.64.4.nip.io/tokens -d '{"email":"john.doe@email.com", "password":"123"}'

{"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIzNjA2MjUsImlhdCI6MTUyMjMyNDYyNSwiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.OCDWuocMtIQSlx2cfc7e-tOth6CvSFo7p5oPPOmOTV0"}

#registration

curl -s -S -i -X POST -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIzNjA2MjUsImlhdCI6MTUyMjMyNDYyNSwiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.OCDWuocMtIQSlx2cfc7e-tOth6CvSFo7p5oPPOmOTV0" http://manager-mainflux.192.168.64.4.nip.io/clients -d '{"type":"device", "name":"test1"}'
curl -s -S -i -X POST -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIzNjA2MjUsImlhdCI6MTUyMjMyNDYyNSwiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.OCDWuocMtIQSlx2cfc7e-tOth6CvSFo7p5oPPOmOTV0" http://manager-mainflux.192.168.64.4.nip.io/clients -d '{"type":"device", "name":"test2"}'
curl -s -S -i -X POST -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIzNjA2MjUsImlhdCI6MTUyMjMyNDYyNSwiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.OCDWuocMtIQSlx2cfc7e-tOth6CvSFo7p5oPPOmOTV0" http://manager-mainflux.192.168.64.4.nip.io/clients -d '{"type":"app", "name":"app1"}'
curl -s -S -i -X POST -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIzNjA2MjUsImlhdCI6MTUyMjMyNDYyNSwiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.OCDWuocMtIQSlx2cfc7e-tOth6CvSFo7p5oPPOmOTV0" http://manager-mainflux.192.168.64.4.nip.io/channels -d '{"name":"testchan"}'
curl -s -S -i --noproxy localhost -X GET -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIzNjA2MjUsImlhdCI6MTUyMjMyNDYyNSwiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.OCDWuocMtIQSlx2cfc7e-tOth6CvSFo7p5oPPOmOTV0" http://manager-mainflux.192.168.64.4.nip.io/clients

curl -s -S -i -X PUT -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIzNjA2MjUsImlhdCI6MTUyMjMyNDYyNSwiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.OCDWuocMtIQSlx2cfc7e-tOth6CvSFo7p5oPPOmOTV0" http://manager-mainflux.192.168.64.4.nip.io/channels/40042e5a-85fe-4a66-a563-048b22db887b/clients/46b1af22-b54d-4f4c-bc33-8962dadfe074
curl -s -S -i -X PUT -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIzNjA2MjUsImlhdCI6MTUyMjMyNDYyNSwiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.OCDWuocMtIQSlx2cfc7e-tOth6CvSFo7p5oPPOmOTV0" http://manager-mainflux.192.168.64.4.nip.io/channels/40042e5a-85fe-4a66-a563-048b22db887b/clients/7918f795-6029-4627-8267-ae08bfe5dc08
curl -s -S -i -X PUT -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIzNjA2MjUsImlhdCI6MTUyMjMyNDYyNSwiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.OCDWuocMtIQSlx2cfc7e-tOth6CvSFo7p5oPPOmOTV0" http://manager-mainflux.192.168.64.4.nip.io/channels/40042e5a-85fe-4a66-a563-048b22db887b/clients/7044a7d7-fd15-404d-9b5f-5d0b6b32c78a

#http sender
curl -s -S -i -X GET -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIzNjA2MjUsImlhdCI6MTUyMjMyNDYyNSwiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.OCDWuocMtIQSlx2cfc7e-tOth6CvSFo7p5oPPOmOTV0" http://manager-mainflux.192.168.64.4.nip.io/clients/7bad7122-f24a-4dce-80d4-c01c1a12f800
curl -s -S -i -X GET -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIzNjA2MjUsImlhdCI6MTUyMjMyNDYyNSwiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.OCDWuocMtIQSlx2cfc7e-tOth6CvSFo7p5oPPOmOTV0" http://manager-mainflux.192.168.64.4.nip.io/clients/4e8744bf-28ec-4018-b33c-36c6dcfc91d1
curl -s -S -i -X GET -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MjIzNjA2MjUsImlhdCI6MTUyMjMyNDYyNSwiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJqb2huLmRvZUBlbWFpbC5jb20ifQ.OCDWuocMtIQSlx2cfc7e-tOth6CvSFo7p5oPPOmOTV0" http://manager-mainflux.192.168.64.4.nip.io/clients/f5028ae8-1842-41e4-85e8-9cf8dd954027
#eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1MjIxNTM4NzUsImlzcyI6Im1haW5mbHV4Iiwic3ViIjoiNGU4NzQ0YmYtMjhlYy00MDE4LWIzM2MtMzZjNmRjZmM5MWQxIn0.Z0f2EZHf31_tW_7hvyS1ZwCJgX4oJwVDixAV-PwnH90
#eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1MjIxNTM4ODEsImlzcyI6Im1haW5mbHV4Iiwic3ViIjoiYzhiZjk4MWYtMGJiMi00OWRhLWFhOGItNTJiMjFmMjVkNDY3In0.0JDyJAjypgbLPfgiBCF9p4_8l3p1LNR82UC-PBlwSJI
#eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1MjIxNTc3NTQsImlzcyI6Im1haW5mbHV4Iiwic3ViIjoiZjUwMjhhZTgtMTg0Mi00MWU0LTg1ZTgtOWNmOGRkOTU0MDI3In0.frR-yQdlZfIi7bz6Ui8fSdoIG4JoLNTURS7P2qkxYIo
curl -s -S -i -X POST -H "Content-Type: application/senml+json" -H "Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1MjIzMjQ2OTksImlzcyI6Im1haW5mbHV4Iiwic3ViIjoiNDZiMWFmMjItYjU0ZC00ZjRjLWJjMzMtODk2MmRhZGZlMDc0In0.7ycehh4gkQvGm9d5wK38BL1gtk-bMTQ0uRPvitvb52E" http://http-adapter-mainflux.192.168.64.4.nip.io/channels/40042e5a-85fe-4a66-a563-048b22db887b/messages -d '[{"bn":"some-base-name:","bt":1.276020076001e+09, "bu":"A","bver":5, "n":"voltage","u":"V","v":120.1}, {"n":"current","t":-5,"v":1.2}, {"n":"current","t":-4,"v":1.3}]'

#Todo: Check how to create NATS subscriber in order to retrieve the messages / persist the messages

#MQTT
mosquitto_sub -h localhost -p 1883 -u "7044a7d7-fd15-404d-9b5f-5d0b6b32c78a" -P "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1MjIzMjQ2OTksImlzcyI6Im1haW5mbHV4Iiwic3ViIjoiNzA0NGE3ZDctZmQxNS00MDRkLTliNWYtNWQwYjZiMzJjNzhhIn0.Bim67zik_z8frUUNPBt-XM609SZlairKWxJGScreE9A" -t mainflux/channels/40042e5a-85fe-4a66-a563-048b22db887b/messages/senml-json
mosquitto_sub -u <client_id> -P <client_token> -t mainflux/channels/7209d9b8-90af-11e7-9cf0-080027b77be6/messages/senml-json
