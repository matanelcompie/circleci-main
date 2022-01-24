# circleci-main

## Introduction
This project run circleci every time we will push to this repository, and will checkout git repositories & branches on private EC2 instance based on pushed **config.json** file
- Example
```json
{
  "values": [
    {
        "repository": "git@github.com:matanelcompie/circleci-test.git",
        "branch": "a",
        "dst": "/home/ubuntu/repos/a"
    },
    {
        "repository": "git@github.com:matanelcompie/circleci-test.git",
        "branch": "b",
        "dst": "/home/ubuntu/repos/b"
      }
    ]
}
```
 In this example we wanna checkout branches **a** and **b** from **circleci-test** repository and place them in **/home/ubuntu/repos/a** and **/home/ubuntu/repos/b** respectively.

## prerequisites

### 1. infrastructure

### 2. circleci

### 3. ansible


