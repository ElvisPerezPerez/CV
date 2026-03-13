@echo off
powershell -Command ^
Add-Type -AssemblyName Microsoft.VisualBasic; ^
$input=''; ^
while ($input -eq '') { ^
  $input = [Microsoft.VisualBasic.Interaction]::InputBox('Escribe algo:', 'Título del cartel', ''); ^
  if ($input -eq '' -and $input -ne $null) { ^
    [System.Windows.Forms.MessageBox]::Show('Debes escribir algo para continuar.', 'Advertencia') ^
  } ^
}; ^

git add .; ^
git commit -m "$input"; ^
git push origin main
