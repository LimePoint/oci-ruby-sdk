# Copyright (c) 2016, 2020, Oracle and/or its affiliates. All rights reserved.

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # This class provides a wrapper around {OCI::Marketplace::MarketplaceClient} and offers convenience methods
  # for operations that would otherwise need to be chained together. For example, instead of performing an action
  # on a resource (e.g. launching an instance, creating a load balancer) and then using a waiter to wait for the resource
  # to enter a given state, you can call a single method in this class to accomplish the same functionality
  class Marketplace::MarketplaceClientCompositeOperations
    # The {OCI::Marketplace::MarketplaceClient} used to communicate with the service_client
    #
    # @return [OCI::Marketplace::MarketplaceClient]
    attr_reader :service_client

    # Initializes a new MarketplaceClientCompositeOperations
    #
    # @param [OCI::Marketplace::MarketplaceClient] service_client The client used to communicate with the service.
    #   Defaults to a new service client created via {OCI::Marketplace::MarketplaceClient#initialize} with no arguments
    def initialize(service_client = OCI::Marketplace::MarketplaceClient.new)
      @service_client = service_client
    end
  end
end
# rubocop:enable Lint/UnneededCopDisableDirective, Metrics/LineLength
