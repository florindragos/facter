# frozen_string_literal: true

module Facter
  module Macosx
    class SystemProfilerMemory
      FACT_NAME = 'system_profiler.memory'

      def call_the_resolver
        fact_value = Facter::Resolvers::SystemProfiler.resolve(:memory)
        ResolvedFact.new(FACT_NAME, fact_value)
      end
    end
  end
end