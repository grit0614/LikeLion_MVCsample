class TestController < ApplicationController

    def sample
        
        @output = "이렇게 변수선언"
        
        # array선언
        @food_list = ["taco", "burrito"]
        
        # array에서 sample 1개 추출
        @pickmeup = @food_list.sample
        @foodpic = @pickmeup + ".png"
        
        # 코드라이언에 있던 답.....인데
        # 있는데 써먹지를 못하겠어요.. 뭐하는건진 대충 알것같은데
        # view로 던지는 법을 모르니 깔끔하게 포기! (찡긋)
#        def draw(num)
#            draw_arrays = Array.new
#            while draw_arrays.size < num
#                draw_arrays << (1..45).to_a.sample(6).sort
#            end
#            
#            draw_arrays.uniq!
#        
#            draw_arrays.each do |array|
#                puts array.inspect
#            end
#        end
        
        # 그냥 정말 노가다로 6개 찍어내자
        draw_arrays = Array.new                                                 # array 생성
        draw_arrays << (1..45).to_a.sample(6).sort                              # 1~45까지 랜덤 6개 추출, 순차적으로 정렬
        draw_arrays.uniq!                                                       # 중복원소 제거
        @lotto1 = draw_arrays[0][0].inspect
        @lotto2 = draw_arrays[0][1].inspect
        @lotto3 = draw_arrays[0][2].inspect
        @lotto4 = draw_arrays[0][3].inspect
        @lotto5 = draw_arrays[0][4].inspect
        @lotto6 = draw_arrays[0][5].inspect
        
        @pic1 = @lotto1.to_s + ".jpg"
        @pic2 = @lotto2.to_s + ".jpg"
        @pic3 = @lotto3.to_s + ".jpg"
        @pic4 = @lotto4.to_s + ".jpg"
        @pic5 = @lotto5.to_s + ".jpg"
        @pic6 = @lotto6.to_s + ".jpg"
        
    end
    
end


