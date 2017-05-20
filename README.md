# Scripting

Run built-in servers 
* PHP  
php -S localhost:8000  
* Python 2   
python -m SimpleHTTPServer [8000]  
* Python 3   
python -m http.server [8000]  
* Ruby  
ruby -run -e httpd . -p 8000  
* Ruby Rack  
rackup  

config.ru  
  run Rack::Directory.new '.'  
  
* Perl HTTP::Server::Simple

 use warnings;  
 use strict;  
   
 use HTTP::Server::Simple;  
   
 my $server = HTTP::Server::Simple->new();  
 $server->run();  



# Memo for git
git config --global core.editor vim  
git config --global user.name "John Doe"  
git config --global user.email johndoe@example.com  
git config --global commit.template $HOME/.gitmessage.txt  
git config --global core.pager ''  
git config --global color.ui true  


# Sparse checkout  
mkdir <workdir>  
cd <workdir>  
git init  
git remote add -f origin <url>  
  
git config core.sparseCheckout true  
echo "some/dir/" >> .git/info/sparse-checkout  
echo "another/sub/tree" >> .git/info/sparse-checkout  
  
git pull origin master  


# Tools for add placeholder for subdirectories
for d in */; do touch "$d/MEMO.md"; done

# Vim to add 2 whitespace to every line  
. On a character in the first line, press Ctrl-V (or Ctrl-Q if Ctrl-V is paste). 
. Press jj to extend the visual block over three lines. 
. Press $ to extend the visual block to the end of each line. 
. Press A then space then Ctrl-R then + then Esc. 
