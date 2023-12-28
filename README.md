# Broker Action Start V1

This action starts an action, so progress with an intention can be tracked.

If you encounter an error, ensure that the Broker URL is correct and that the intention was not automatically closed at the end of the time to live (ttl) period.

# Broker Documentation

Please refer to the [NR Broker Repository](https://github.com/bcgov-nr/nr-broker) for full usage details.

# Usage

<!-- start usage -->
```yaml
- uses: bcgov-nr/action-broker-action-start@v1
  with:
    # The token of the action to start
    action_token: ''

    # The broker url.
    # Default: 'https://nr-broker.apps.silver.devops.gov.bc.ca'
    broker_url: ''
```
<!-- end usage -->

# License

The scripts and documentation in this project are released under the [Apache License](LICENSE)

