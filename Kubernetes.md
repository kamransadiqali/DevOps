![Kubernetes](https://github.com/user-attachments/assets/c0790cac-cdbe-4da7-80b5-6d7e915ceb12)
> [!NOTE]
> **Kubernetes** *is an open-source container orchestration system for automating software deployment, scaling, and management. Originally designed by Google, the project is now maintained by a worldwide community of contributors, and the trademark is held by the Cloud Native Computing Foundation.*

# Kubernetes Learning Prerequisites
Before jumping into learning kubernetes, you need to have a fair amount of knowledge of some of the underlying technologies and concepts.

1. Distributed system: Learn about distributed system basics & their use cases in modern IT infrastructure. CAP theorem is good to have knowledge.

2. Authentication & Authorization: A very basic concept in IT. However, engineers starting their careers tend to get confused. So please get a good understanding of learning from analogies. You will quite often see these terms in Kubernetes.

3. Key Value Store: It is a type of NoSQL Database. Understand just enough basics and their use cases.

4. API: Kubernetes is an API-driven system. So you need to have an understanding of RESTFUL APIs. Also, try to understand gRPC API. It’s good to have knowledge.

5. YAML: YAML stands for YAML Ain’t Markup Language. It is a data serialization language that can be used for data storage and configuration files. It’s very easy to learn and from a Kubernetes standpoint, we will use it for configuration files. So understanding YAML syntax is very important.

6. Container: Container is the basic building block of kubernetes.The primary work of Kubernetes is to orchestrate containers. You need to learn all the container basics and have hands-on experience working on container tools like Docker or Podman. I would also suggest reading about Open container initiative and Container Runtime Interface (CRI)

7. Service Discovery: It is one of the key areas of Kubernetes. You need to have basic knowledge of client-side and server-side service discovery. To put it simply, in client-side service discovery, the request goes to a service registry to get the endpoints available for backend services. In server-side service discovery, the request goes to a load balancer and the load balancer uses the service registry to get the ending of backend services.

8. Networking Basis
- CIDR Notation & Type of IP Addresses
- L3, L4 & L7 Layers (OSI Layers)
- SSL/TLS: One way & Mutual TLS
- Proxy
- DNS
- IPTables
- IPVS
- Software Defined Networking (SDN)
- Virtual Interfaces
- Overlay networking
