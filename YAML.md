![YAML](https://github.com/user-attachments/assets/600d4f67-9e1f-4af6-abd9-773ef1f6b357)
> [!NOTE]
> **YAML** *is a human-readable data serialization language. It is commonly used for configuration files and in applications where data are being stored or transmitted.*
 
# Definition of a YAML file
"YAML is a human-friendly, data serialization standard for all programming languages."

YAML was created specifically for common use cases such as:

- Configuration files
- Log files
- Inter-process messaging
- Cross-language data sharing
- Object persistence
- Complex data structures

# Data types
- Scalars
  image: httpd:latest
  items: 39
  price: 25.5

- List
  list:
  - first
  - second
  - third
list: [ first, second, third ]

- Mappings (key-value pairs)
  character:
  name: aragorn
  race: man
character: { name: aragorn, race: man }


- Boolean can be represented in multiple ways: yes/no, true/false, y/n, on/off.
  overwrite: no


# Relationship to JSON and XML
![image](https://github.com/user-attachments/assets/e28ff9ad-3f2b-4f31-81bb-631ad65ea2d5)

# The structure of a YAML file

![image](https://github.com/user-attachments/assets/a2118814-0e41-403b-b752-df5d89482c13)

# Important aspects of YAML basics

![image](https://github.com/user-attachments/assets/e0bbbf09-a7e3-4048-b05d-6d662469ff43)

# YAML Basics

## Step-01: Comments & Key Value Pairs
- Space after colon is mandatory to differentiate key and value
```yml
# Defining simple key value pairs
name: ABC
age: 23
city: XYZ
```

## Step-02: Dictionary / Map
- Set of properties grouped together after an item
- Equal amount of blank space required for all the items under a dictionary
```yml
person:
  name: ABC
  age: 23
  city: XYZ
```

## Step-03: Array / Lists
- Dash indicates an element of an array
```yml
person: # Dictionary
  name: ABC
  age: 23
  city: XYZ
  hobbies: # List  
    - walking
    - reading
  hobbies: [walking, reading]   # List with a differnt notation  
```  

## Step-04: Multiple Lists
- Dash indicates an element of an array
```yml
person: # Dictionary
  name: ABC
  age: 23
  city: XYZ
  hobbies: # List  
    - walking
    - reading
  hobbies: [walking, reading]   # List with a differnt notation  
  friends: # 
    - name: friendA
      age: 22
    - name: friendB
      age: 23            
```  


## Step-05: Sample Pod Tempalte for Reference
```yml
apiVersion: v1 # String
kind: Pod  # String
metadata: # Dictionary
  name: myapp-pod
  labels: # Dictionary 
    app: myapp         
spec:
  containers: # List
    - name: myapp
      image: stacksimplify/kubenginx:1.0.0
      ports:
        - containerPort: 80
          protocol: "TCP"
        - containerPort: 81
          protocol: "TCP"
```
