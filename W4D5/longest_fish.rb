
fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 
                'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(arr)
    longest_fish = ""

    arr.each do |first_ele|
        arr.each do |second_ele|
            long_fish = nil
            case first_ele.length <=> second_ele.length
            when -1
                long_fish = second_ele
            when 0
                long_fish = first_ele
            when 1
                long_fish = first_ele
            end
            longest_fish = long_fish if long_fish.length > longest_fish.length
        end
    end
    longest_fish
end

# def merge(left, right)
#     merged = []

#     until left.empty? || right.empty?
#         case left.first.length <=> right.first.length
#         when -1
#             merged << left.first
#         when 0
#             merged << left.first
#         when 1
#             merged << right.first
#         end
#     end

#     merged.concat(left)
#     merged.concat(right)
# end

# def merge_sort(arr)
#     return arr if arr.length < 2

#     midpoint = arr.length / 2
#     left = arr.take(midpoint)
#     right = arr.drop(midpoint)
#     sorted_left = merge_sort(left)
#     sorted_right = merge_sort(right)

#     merge(sorted_left, sorted_right)
# end

def dominant_octopus(arr)
    sorted = merge_sort(arr)
    arr[-1] 
end

def clever_octopus(arr)
    longest = ""
    arr.each do |fish|
        longest = fish if fish.length > longest.length
    end
    longest
end






