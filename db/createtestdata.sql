INSERT INTO public.users (email,password) VALUES 
('john.doe@email.com','$2a$10$pIxBp..bR1XLdBk8YGUT4uJquOY4BQYW3qXcNIGkYBiJbTxOGeo5u')
;
INSERT INTO public.clients (id,owner,"type",name,"key",payload) VALUES 
('46b1af22-b54d-4f4c-bc33-8962dadfe074','john.doe@email.com','device','test1','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1MjIzMjQ2OTksImlzcyI6Im1haW5mbHV4Iiwic3ViIjoiNDZiMWFmMjItYjU0ZC00ZjRjLWJjMzMtODk2MmRhZGZlMDc0In0.7ycehh4gkQvGm9d5wK38BL1gtk-bMTQ0uRPvitvb52E','')
,('7918f795-6029-4627-8267-ae08bfe5dc08','john.doe@email.com','device','test2','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1MjIzMjQ2OTksImlzcyI6Im1haW5mbHV4Iiwic3ViIjoiNzkxOGY3OTUtNjAyOS00NjI3LTgyNjctYWUwOGJmZTVkYzA4In0.MeqEZC-YayGUc2zpzs8g8vjCtlso-fUTD8kW5kj5LLI','')
,('7044a7d7-fd15-404d-9b5f-5d0b6b32c78a','john.doe@email.com','app','app1','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1MjIzMjQ2OTksImlzcyI6Im1haW5mbHV4Iiwic3ViIjoiNzA0NGE3ZDctZmQxNS00MDRkLTliNWYtNWQwYjZiMzJjNzhhIn0.Bim67zik_z8frUUNPBt-XM609SZlairKWxJGScreE9A','')
;
INSERT INTO public.channels (id,owner,name) VALUES 
('40042e5a-85fe-4a66-a563-048b22db887b','john.doe@email.com','testchan')
;
INSERT INTO public.channel_clients (channel_id,client_id) VALUES 
('40042e5a-85fe-4a66-a563-048b22db887b','46b1af22-b54d-4f4c-bc33-8962dadfe074')
,('40042e5a-85fe-4a66-a563-048b22db887b','7918f795-6029-4627-8267-ae08bfe5dc08')
,('40042e5a-85fe-4a66-a563-048b22db887b','7044a7d7-fd15-404d-9b5f-5d0b6b32c78a')
;