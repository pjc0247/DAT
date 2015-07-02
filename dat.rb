require 'ripper'
require 'pp'

src = File.read ARGV[0]
dst = ""

const_map = {}
ident_map = {}

tokens = Ripper.lex src

tokens.each do |t|
  if t[1] == :on_ident
    t[2] = "dat"
  elsif t[1] == :on_const
    t[2] = "Dat"
  end

  dst += t[2]
end

File.write ARGV[1], dst


