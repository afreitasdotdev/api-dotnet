# API DOTNET

## Usage

For use this API you need docker-ce installed and git.

## Download

Download the source-code? Run:

```
git clone git@github.com:afreitasdotdev/api-dotnet.git
```

```
cd api-dotnet/
```


Download the container for use? Run: 

```
docker run -it -p 5000:5000 arfreitas/codemoney:1.0
```

## API ROUTES


|Route   |Desc   |Method   |
|---|---|---|
|/api/values  |Show all values   |GET|
|/api/values?id=1   |   |GET|
|/api/values/throw?force=true|Type: Boolean - true force exception and false execute normally   |GET|
|/api/values/error?divided=0|Type: Integer - 0 or nothing cause exception. 1 The result are divided for 1   |GET|
