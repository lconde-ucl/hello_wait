#!/usr/bin/env nextflow

nextflow.enable.dsl=2 

process sayHello {
    output:
    stdout

    script:
    """
    echo -n "Hello"
    sleep 600
    echo " World"
    """
}

workflow {
    sayHello | view
}


