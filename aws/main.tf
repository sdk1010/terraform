resource "local_file" "first_file" {
        filename= "file1.txt"
        content= "This is first file"
}

resource "docker_image" "django_image" {
        name= "sdk1010/django-todo-app:latest"
        keep_locally= false
}

resource "docker_container" "django_container" {
        image= docker_image.django_image.name
        name= "sdk_django_container"

        ports {
                internal= 8000
                external= 8000
        }
}

resource "docker_image" "httpd_image" {
        name= "sdk1010/httpd:latest"
        keep_locally= false
}

resource "docker_container" "httpd_container" {
        image= docker_image.httpd_image.name
        name= "sdk_httpd_container"

        ports {
                internal= 80
                external= 80
        }
}

resource "docker_image" "nginx_image" {
        name= "nginx:latest"
        keep_locally= false
}

resource "docker_container" "ngonx_container" {
        image= docker_image.nginx_image.name
        name= "sdk_nginx_container"

        ports {
                internal= 80
                external= 90
        }
}
