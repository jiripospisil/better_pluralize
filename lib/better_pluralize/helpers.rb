module BetterPluralize
  module ::ActionView
    module Helpers
      module TextHelper
        #  Behaves exactly as the official `pluralize` helper except it allows you
        #  to pass an optional block that receives the current count and the
        #  pluralized word.
        #
        #   pluralize(2, 'person') do |count, word|
        #     "Yay #{count} #{word}"
        #   end
        #
        def pluralize(count, singular, plural = nil, &block)
          word = if (count == 1 || count =~ /^1(\.0+)?$/)
                   singular
                 else
                   plural || singular.pluralize
                 end

          safe_count = count || 0

          if block_given?
            capture safe_count, word, &block
          else
            "#{safe_count} #{word}"
          end
        end
      end
    end
  end
end
