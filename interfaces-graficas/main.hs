-- Para usar pacotes de interfaces graficas no haskell, vamos usar o Gtk, que é uma lib em C que tem componentes prontos.
-- Para isso, temos que instalar o gtk
-- 1 - apt install libghc-gtk-dev =  Instalar a lib nativa no sistema operacioanl
-- 2 - cabal update = Atualizar os pacotes haskell
-- 3 - cabal install gtk2hs-buildtools = Instalar o pacote de compilação do gtk haskell
-- 4 - cabal install gtk = Instalar o pacote Gtk para utilizarmos nos import Graphics.UI.Gtk

import Graphics.UI.Gtk

main :: IO ()
main = do
  -- função chamada por todas as aplicações Gtk2Hs
  initGUI

  -- Criar uma janela (widget)
  window <- windowNew
  widgetShowAll window

  -- cria um event loop esperando um evento (click por exemplo)
  mainGUI