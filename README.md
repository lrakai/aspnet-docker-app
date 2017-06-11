# aspnet-docker-app
Sample ASP.NET application used to show how to create Docker Windows containers

# Usage
In Visual Studio, publish the site using the `ContainerImage` Publish Profile. This will create a `PublishOutput\` directory in the project directory.

Assuming you have Docker engine installed on your Windows system, issue the following command from a command prompt or PowerShell terminal in the project directory:
```
docker build -t aspnet-sample .
```
This creates the image using the `PublishOutput\` contents and Microsoft's `aspnet` base image.

Run a container using the image you created with:
```
docker run -d --name aspnet-sample aspnet-sample
```

Verify it is working by entering the IP address output by the following command into your browser:
```
docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" aspnet-sample
```
