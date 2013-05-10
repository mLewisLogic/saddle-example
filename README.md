# saddle-example

Example concrete implementation of an [saddle](https://github.com/mLewisLogic/saddle) based client.

## about

Implements the _Kitten_, _Puppy_ and _Fish_ endpoints. They provide for the following paths.
* **GET**  /kitten/get_all
* **GET**  /kitten/:id/info
* **GET**  /puppy/get_all
* **POST** /puppy/scratch_belly
* **GET**  /fish/guppy/get_all


## usage

    client = SaddleExample::Client.create

    kittens = client.kitten.get_all
    client.kitten.by_id('Whiskers').info

    all_the_puppies = client.puppy.get_all(:limit => 10)
    client.puppy.scratch_belly('Nutmeg')

    all_the_guppies = client.fish.guppy.get_all
