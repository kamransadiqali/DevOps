
- A container is a solution that runs code (the application) in an isolated environment.
- The container is based on a container image.
- The application can run on any platform: cloud as well as computer.
- The container image is static and portable, and doesn't contain any site-specific information.
- While running the container, site-specific information is dynamically added.
- Container images are archives containing all that is needed to run the app.
- Linux features provide isolation through namespaces.
- The container runs on top of a container runtime.
- The container runtime is an abstraction layer that runs on top of any operating system, as well as cloud.
- The result is a container image that runs anywhere and includes all dependencies it needs to run.
- The container runtime turns the container image into a running application and provides key features
  - image management
  - container execution (already in the definition)
  - accessibility
  - storage
  - security (namespaces)
  - logging and monitoring
- The runtime runs on any platform: Linux, Windows, MacOS, as well as cloud

- Containers started by running processes in chroot isolation
- Chroot evolved into namespaces, and cgroups were added for resource allocation, and this was the LXC native Linux container
- Docker further developed LXC containers
  - Standardized container image format
  - Registry for distribution of images
  - Docker daemon for managing containers
- The Docker project became a bit less open source
- Other OCI compatible container projects existed
- Red Hat picked up the Podman project
- Podman used OCI container images differently
  - No daemon needed anymore; any user can run a container as a child process of the current shell
  - No need to run containers with elevated privileges
  - And because of OCI, no conversion is needed

## Writing Your Application Code
#include <stdio.h>
int main() {
printf("Hello, Container World!\n"); return 0;
}
