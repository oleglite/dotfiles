describe 'themes'
  after
    highlight clear Foo
    highlight clear Normal
  end

  it 'should extract correct colors'
    highlight Foo ctermfg=1 ctermbg=2
    let colors = airline#themes#get_highlight('Foo')
    Expect colors[2] == '1'
    Expect colors[3] == '2'
  end

  it 'should extract from normal if colors unavailable'
    highlight Normal ctermfg=100 ctermbg=200
    highlight Foo ctermbg=2
    let colors = airline#themes#get_highlight('Foo')
    Expect colors[2] == '100'
    Expect colors[3] == '2'
  end

  it 'should flip target group if it is reversed'
    highlight Foo ctermbg=222 ctermfg=103 term=reverse
    let colors = airline#themes#get_highlight('Foo')
    Expect colors[2] == '222'
    Expect colors[3] == '103'
  end
end

