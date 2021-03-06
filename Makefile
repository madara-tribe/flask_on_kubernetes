build:
	docker build -t flasks .

run:
	docker run -p 5000:5000 -it flasks
        
        
#test:
	#curl -X POST -H "Content-Type: application/json" -d '{"key":"http://toretama.jp/img/mouseover-zoomup-image.jpg"}' http://localhost:5000/reply
	#curl -F "file=@$(YOUR_iMAGE_NAME)" http://localhost:5000/reply

delete_image:
	docker rmi ${IMAGE_ID} -f

delete_images:
	docker rmi ${IMAGE_ID} -f

delete_tag_images:  
	docker rmi -f $(REPOSITORY):$(TAG)
	
check_image:
	docker images
	
check_docker:
	docker ps
