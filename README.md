# apiwrapper-example

Example concrete implementation of an [apiwrapper](https://github.com/mLewisLogic/apiwrapper) based client.

## about

Implements the _Kitten_ and _Puppy_ endpoints. They enable the following paths.
* GET  kitten/get_all
* POST kitten/scratch_head
* GET  puppy/get_all
* POST puppy/scratch_belly


## usage

    client = ApiwrapperExample.new

    kittens = client.kitten.get_all
    client.kitten.scratch_head('Whiskers')

    all_the_puppies = client.puppy.get_all
    client.puppy.scratch_belly('Nutmeg')
