Write-Host "Witaj Dorota!!" -ForegroundColor Red
""
Write-Host "Proszę odpowiadaj, tak lub nie, dziekuję." -ForegroundColor Red
""
Write-Host "Pobaw się odpowiedziami tak lub nie aby zobaczyć wszystkie 4 obrazki!" -BackgroundColor DarkGray -ForegroundColor Blue
""
Write-Host "Miłej ZABAWY!!!" -BackgroundColor DarkGray -ForegroundColor Blue
""
$question_1 = Read-Host "Zadawałaś Sobie pytanie czy Przemkowi czasami nie jest ciężko??"
""
$question_2 = Read-Host "Czy wiesz że cągle szuka pracy??"
""
$question_3 = Read-Host "Czy wiesz ze zrozumiał swój błąd??"
""
$question_4 = Read-Host "Czy wiesz że bardzo Cię kocha??"
""
$xmass = Get-Content C:\Users\Elmo\Desktop\program_dla_doroty_2\mikolaj.txt


if($question_1 -eq 'tak' -and $question_2 -eq 'tak' -and $question_3 -eq 'tak' -and $question_4 -eq 'tak')
  {
  Get-Content C:\Users\Elmo\Desktop\program_dla_doroty_2\milosc.txt
  }

elseif($question_1 -eq 'tak' -and $question_2 -eq 'tak' -and $question_3 -eq 'nie' -and $question_4 -eq 'tak')
  {
  Get-Content C:\Users\Elmo\Desktop\program_dla_doroty_2\nie_wie.txt
  }
  
elseif($question_1 -eq 'tak' -and $question_2 -eq 'nie' -and $question_3 -eq 'nie' -and $question_4 -eq 'tak')
  {
  Get-Content C:\Users\Elmo\Desktop\program_dla_doroty_2\wszysztko_nie.txt
  }

else
  {
  Get-Content C:\Users\Elmo\Desktop\program_dla_doroty_2\koniec.txt
  }

""
""
""
""
""
  $xmass
""
  Read-Host "Wcisnij ENTER aby kontynuować..."