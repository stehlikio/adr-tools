# adr-tools

A command-line tool for working with a log of Architecture Decision Records (ADRs).

## Usage

Create an ADR directory in the root of your project use `init`

``` docker run --rm -v %cd%:/data stehlik.io/adr-tools init ```

Create a new ADR use `new`

``` docker run --rm -v %cd%:/data stehlik.io/adr-tools new Implement as Unix shell scripts ```
