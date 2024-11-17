#!/usr/bin/env nextflow

nextflow.enable.dsl=2 

process sayHello {
    output:
    stdout

    script:
    """
    echo -n "Hello"
    sleep 600  // Sleep for 10 minutes (600 seconds)
    echo " World"
    """
}

workflow {
    sayHello | view
}


