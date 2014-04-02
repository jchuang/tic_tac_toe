def winner?(board)

  board.each do |row|
    if three_of_a_kind?(row)
      return true
    end
  end

  board.transpose.each do |column|
    if three_of_a_kind?(column)
      return true
    end
  end

  diagonals = [[board[0][0], board[1][1], board[2][2]],
               [board[0][2], board[1][1], board[2][0]]]

  diagonals.each do |diagonal|
    if three_of_a_kind?(diagonal)
      return true
    end
  end

  return false

end

private

def three_of_a_kind?(spaces)
  spaces.all? { |space| space == 'x' } || spaces.all? { |space| space == 'o' }
end
