#!/usr/bin/env python

import click
from querydb import querydb
from querydb import sortbyyearDESC


@click.group()
def cli():
    """click group cli subcommand test"""

@cli.command()
@click.option('--query', help = "Query the first two lines of file in databricks")
def queryfunc(query):
    """Query function!"""

    result = querydb()
    click.echo(result)

@cli.command()
@click.option('--sort', help = "Sort data in the databricks by year descending")
def sortbyyear(sort):
    """Sort data!"""

    result = sortbyyearDESC()
    # click.echo(result)

if __name__ == "__main__":
    cli()