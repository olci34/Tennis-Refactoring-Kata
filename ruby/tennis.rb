
class TennisGame1

  def initialize(player1Name, player2Name)
    @player1Name = player1Name
    @player2Name = player2Name
    @p1points = 0
    @p2points = 0
    
  end
        
  def won_point(playerName)
    playerName == @player1Name ? @p1points += 1 : @p2points += 1
  end

  def winOrAdvantage
    pointGap = (@p1points - @p2points).abs()
    if pointGap >= 2
      winner = @p1points > @p2points ? "player1" : "player2"
      return "Win for #{winner}"
    elsif (pointGap == 1)
      leader = @p1points > @p2points ? "player1" : "player2"
      return "Advantage #{leader}"
    end
  end
  
  def score
    points = {
      0 => "Love",
      1 => "Fifteen",
      2 => "Thirty",
      3 => "Forty"
    }
    result = ""
    if (@p1points == @p2points)
      result = @p1points < 3 ? "#{points[@p1points]}-All" : "Deuce"
    elsif (@p1points >= 4 || @p2points >= 4)
      result = winOrAdvantage()
    else
      result = "#{points[@p1points]}-#{points[@p2points]}"
    end
    result
  end
end

class TennisGame2
  def initialize(player1Name, player2Name)
    @player1Name = player1Name
    @player2Name = player2Name
    @p1points = 0
    @p2points = 0
  end
      
  def won_point(playerName)
    playerName == @player1Name ? @p1points += 1 : @p2points += 1
  end

  def winOrAdvantage
    pointGap = (@p1points - @p2points).abs()
    if pointGap >= 2
      winner = @p1points > @p2points ? "player1" : "player2"
      return "Win for #{winner}"
    elsif (pointGap == 1)
      leader = @p1points > @p2points ? "player1" : "player2"
      return "Advantage #{leader}"
    end
  end

  def score
    result = ""
    points = {
      0 => "Love",
      1 => "Fifteen",
      2 => "Thirty",
      3 => "Forty"
    }
    p1res = points[@p1points]
    p2res = points[@p2points]
    if (@p1points == @p2points)
      result = @p1points < 3 ? "#{p1res}-All" : "Deuce"
    elsif (@p1points >= 4 || @p2points >= 4)
      result = winOrAdvantage()
    else
      result = p1res + "-" + p2res
    end
    result
  end

end

class TennisGame3
  def initialize(player1Name, player2Name)
    @p1Name = player1Name
    @p2Name = player2Name
    @p1Points = 0
    @p2Points = 0
  end
      
  def won_point(n)
    if n == @p1Name
        @p1Points += 1
    else
        @p2Points += 1
    end
  end
  
  def score
    if (@p1Points < 4 && @p2Points < 4) && (@p1Points + @p2Points < 6)
      points = ["Love", "Fifteen", "Thirty", "Forty"]
      playerScore = points[@p1Points]
      @p1Points == @p2Points ? playerScore + "-All" : playerScore + "-" + points[@p2Points]
    else
      if (@p1Points == @p2Points)
        "Deuce"
      else
        leader = @p1Points > @p2Points ? @p1Name : @p2Name
        (@p1Points-@p2Points)*(@p1Points-@p2Points) == 1 ? "Advantage " + leader : "Win for " + leader
      end
    end
  end
end
