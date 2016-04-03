class TestController < ApplicationController

    def sample
        
        @output = "이렇게 변수선언"
        
        # array선언
        @food_list = ["taco", "burrito"]
        
        # array에서 sample 1개 추출
        @pickmeup = @food_list.sample
        @foodpic = @pickmeup + ".png"
        
        # 중복값 제거한 로또 생성 (아직 안배워서 뭔소리인지 잘 모르겠다. 제끼자.)
        def draw(num)
            draw_arrays = Array.new
            while draw_arrays.size < num
                draw_arrays << (1..45).to_a.sample(6).sort
            end
            
            draw_arrays.uniq!
        
            draw_arrays.each do |array|
                puts array.inspect
            end
        end
        
        @lotto1 = (1..45).to_a.sample
        @pic1 = @lotto1.to_s + ".jpg"
        @lotto2 = (1..45).to_a.sample
        @pic2 = @lotto2.to_s + ".jpg"
        @lotto3 = (1..45).to_a.sample
        @pic3 = @lotto3.to_s + ".jpg"
        @lotto4 = (1..45).to_a.sample
        @pic4 = @lotto4.to_s + ".jpg"
        @lotto5 = (1..45).to_a.sample
        @pic5 = @lotto5.to_s + ".jpg"
        @lotto6 = (1..45).to_a.sample
        @pic6 = @lotto6.to_s + ".jpg"
        
    end
    
end


