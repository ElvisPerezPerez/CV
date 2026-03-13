@echo off
powershell -Command ^
Add-Type -AssemblyName Microsoft.VisualBasic; ^
$input=''; ^
while ($input -eq '') { ^
  $input = [Microsoft.VisualBasic.Interaction]::InputBox('Escribe el commit', 'Commit', ''); ^
  if ($input -eq '' -and $input -ne $null) { ^
    [System.Windows.Forms.MessageBox]::Show('No puedes escribir un commit vacío', 'ERROR') ^
  } ^
}; ^

git add .; ^
git commit -m "$input"; ^
git push origin main
