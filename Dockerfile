#select base image
FROM nginx 

#label it - add optional details
LABEL MAINTAINER=OSCAR

# copy the data from localhost to container

COPY index.html /usr/share/nginx/html/

# expose the required port
EXPOSE 80

# launch the app
CMD ["nginx", "-g", "daemon off;"]

# CMD will run the command in this case to 
# launch the image when we create a container