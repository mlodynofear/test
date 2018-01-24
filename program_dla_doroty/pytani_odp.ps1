Write-Host -BackgroundColor DarkYellow "Przemek, nie ma teraz pracy, i jest to spowodowane jego chorobą."
Write-Host -BackgroundColor DarkYellow "Jest takze glupi iz to zrobił, ale jak mowie jest to choroba!" 
           
Write-Host -BackgroundColor DarkRed "Odpowiedz tak lub nie"

$pytanie1 = Read-Host -Prompt  'Czy nadal kochasz Przemka?'
$pytanie2 = Read-Host -Prompt 'Czy chcesz być z nim?'
$pytanie3 = Read-Host -Prompt 'Czy widzisz ze pracuje nad sobą?'


$serce = Get-Content C:\Users\Elmo\Desktop\program_dla_doroty\serce.txt
$swieta = Get-Content C:\Users\Elmo\Desktop\program_dla_doroty\swieta.txt 

IF ($pytanie1 -eq 'tak' -AND $pytanie2 -eq'tak' -AND $pytanie3 -eq'tak')
   {

   $serce

   }

ELSE

   {

   $swieta 
   
   }


Read-Host -Prompt "Przycisnij ENTER aby wyjść"