# Metric convertions

Some distance convertions.

A Quick project to learn ruby and unit tests.

## Instalation

First clone this repository

```
 $ git clone https://github.com/StheffanyHadlich/turbo-waffle.git

 $ cd turbo-waffle

```

Then install the dependencies

```
$ bundle install
```

and now you can run the application with

```
$ rackup
```

it should be running on ```localhost:9292```

### Tests

Unit and functional tests can be executed with

```
$ rake
```
____________________________

## Convertions

Once the aplication is running localy you can make two kinds of convertions: linear and temperature

### Linear

```
localhost:9292/metrics/linear/:orig_type/:value/:dest_type'
```

 ```:value``` should receive number while ```:orig_type``` and ```:dest_type``` accept convertions from and to:

 * cm (centimeters)
 * m (meters)
 * km (kilometers)
 * inch
 * foot
 * yard
 * mile

 ### Temperature

```
localhost:9292/metrics/temperature/:orig_type/:value/:dest_type'
```

```:value``` should receive number while ```:orig_type``` and ```:dest_type``` accept convertions from and to:

 * c (Celsius)
 * f (Fahrenheit)
 * k (Kelvin)


 Those calls return a json containing the right convertion.



