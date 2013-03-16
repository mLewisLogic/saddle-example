# saddle-example

Example concrete implementation of an [saddle](https://github.com/mLewisLogic/saddle) based client.

## about

Implements the _Kitten_ and _Puppy_ endpoints. They provide for the following paths.
* **GET**  /kitten/get_all
* **POST** /kitten/scratch_head
* **GET**  /puppy/get_all
* **POST** /puppy/scratch_belly


## usage

    client = SaddleExample.new

    kittens = client.kitten.get_all
    client.kitten.scratch_head('Whiskers')

    all_the_puppies = client.puppy.get_all
    client.puppy.scratch_belly('Nutmeg')
