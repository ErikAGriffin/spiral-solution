def spiral(num)
  mat = build_spiral(num)
  mat.each do |row|
    row.each do |col|
      print "#{col} "
    end
    print"\n"
  end
end

def build_spiral(size)
  mat = Array.new(size) {Array.new(size," ")}
  start = (size/2)-1
  r,c = start, start
  mat[r][c] = "*"
  num = 1
  direction = :down
  until r == mat.length-1 && c == mat.length-1
    case direction
    when :down
      num.times do
        r += 1
        mat[r][c] = "*"
      end
      direction = :right
    when :right
      num.times do
        c += 1
        mat[r][c] = "*"
      end
      direction = :up
    when :up
      num.times do
        r -= 1
        mat[r][c] = "*"
      end
      direction = :left
    when :left
      num.times do
        c -= 1
        mat[r][c] = "*"
      end
      direction = :down
    end
    num += 1
    num = mat.length-1 if num >= mat.length
  end
  return mat
end




spiral(22)
