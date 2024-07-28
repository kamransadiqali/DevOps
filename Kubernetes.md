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

# Understand KubeConfig File
Kubeconfig file is a YAML file that contains all the cluster information and credentials to connect to the cluster.
As a Devops Engineer, You should learn to connect to kubernetes clusters in different ways using the Kubeconfig file. Because you will be responsible for setting up cluster authentication for CI/CD systems, providing cluster access to developers, etc.

# Understand Kubernetes Objects And Resources

You will quite often come across the names “Kubernetes Object” and “Kubernetes Resource“

First, you need to Understand the difference between an object and a resource in kubernetes.

To put it simply, anything a user creates and persists in Kubernetes is an object. For example, a namespace, pod, Deployment configmap, Secret, etc.

Before creating an object, you represent it in a YAML or JSON format. It is called an Object Specification (Spec). You declare the desired state of the object on the Object Spec. Once the object is created, you can retrieve its details from the Kubernetes API using Kubectl or client libraries.

As we discussed earlier in the prerequisite section, everything in Kubernetes is an API. To create different object types, there are API endpoints provided by the Kubernetes API server. Those object-specific api-endpoints are called resources. For example, an endpoint to create a pod is called a pod resource.

So when you try to create a Kubernetes Object using Kubectl, it converts the YAML spec to JSON format and sends it to the Pod resource (Pod API endpoint).

# Learn About Pod & Associated Resources
Once you have an understanding of Kubernetes Objects and resources, you can start with a native Kubernetes object called Pod. A pod is a basic building block of Kubernetes.

You should learn all the Pod concepts and their associated objects like Service, Ingress, Persistent Volume, Configmap, and Secret. Once you know everything about a pod, it is very easy to learn other pod-dependent objects like deployments, Daemonset, etc.

First, learn about the Pod Resource Definition (YAML). A typical Pod YAML contains the following high-level constructs.

- Kind
- Metadata
- Annotations
- Labels
- Selectors
- Once you have a basic understanding of the above, move on to hands-on learning. These concepts will make more sense when you do hands-on.

Following are the hands-on tasks to learn about Pod and its associated objects.

1. Deploy a pod
2. Deploy pod on the specific worker node
4. Add service to pod
5. Expose the pod Service using Nodeport
6. Expose the Pod Service using Ingress
7. Setup Pod resources & limits
8. Setup Pod with startup, liveness, and readiness probes.
9. Add Persistent Volume to the pod.
10. Attach configmap to pod
11. Add Secret to pod
12. multi-container pods (sidecar container pattern)
13. Init containers
14. Ephemeral containers
15. Static Pods
16. Learn to troubleshoot Pods

Few advanced pod scheduling concepts.

1. Pod Preemption & Priority
2. Pod Disruption Budget
3. Pod Placement Using a Node Selector
4. Pod Affinity and Anti-affinity
5. Container Life Cycle Hooks









