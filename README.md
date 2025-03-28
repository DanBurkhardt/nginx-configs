# nginx-configs
![project repository banner](./mutual-tls/images/nginx-configs-banner1.png)

NGINX configuration examples for various situations.

## How to Use

- clone this repository
- cd to the folder you want to test
- open the `README` for the example
- follow the example instructions for testing

<br>

## Configurations

### mutual-tls (strict) authentication

An [implementation example using Mutual TLS auth](./mutual-tls/) to protect an nginx route, allowing only requests from valid clients to access the endpoint.

![browser response to successful auth with client cert](./mutual-tls/images/mutual-secure-connection-confirmed.png)


### More Soon

(see TODOs below for future contribution ideas, or feel free to contribute!)

<br>

## Notes / Disclaimers:

- Don't use any example auth / certificates here in the real world for anything! 
    - They're public on Github, they are just for demo / proof of concept

- Examples are not meant to be all-encompassing
    - These are only **one possible implementation** of a specific scenario 
    
- Review NGINX documentation carefully and understand everything before ever depending on any configuration to protect a real-world resource
    - Do not deploy anything here verbatim, instead use as a starter, reference, or working example

Need Help? Please [reach out to us](mailto:hey@gigabitelabs.com) if you need custom implementation, support, deployment advice, etc.

<br>

## TODO

Some future examples to add and other project ideas.

Meta-nginx config:

- Implement single nginx config at the root level that includes as many of the example projects as 
possible
- Include a route map with links to the sub-projects for each route

Future Examples:

- Architecture supporting multiple routes in a maintainable / sane way
- Headers
- Caching
- Clustered service node distribution config