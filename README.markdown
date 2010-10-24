# Lipsum-api

## Description

Lipsum-api is a command line client and library to interface Lipsum.com

## Installation

$ gem install lipsum-api

## Usage

Use it from the command line to retrieve Lipsum placeholder text

    $ lipsum
    Tasks:
      lipsum bytes AMOUNT       # Downloads an AMOUNT of bytes from Lipsum.com
      lipsum help [TASK]        # Describe available tasks or one specific task
      lipsum lists AMOUNT       # Downloads an AMOUNT of lists from Lipsum.com
      lipsum paragraphs AMOUNT  # Downloads an AMOUNT of paragraphs from Lipsum.com
      lipsum words AMOUNT       # Downloads an AMOUNT of words from Lipsum.com

Retrieve one paragraph of Lipsum:

    $ lipsum paragraphs 1
    Nullam venenatis luctus tortor ac commodo. Suspendisse potenti. Aenean congue, tortor sed porttitor imperdiet, tellus dui iaculis nulla, aliquam cursus nisl eros sed risus. Nunc non magna felis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris congue eleifend nisl vitae blandit. Sed bibendum tempor condimentum. Sed ultricies consequat tincidunt. Quisque lorem sem, ornare at mattis sit amet, congue nec felis. Morbi sit amet purus sapien. Sed non magna justo, sed volutpat quam. Integer nec ante quis neque pellentesque sollicitudin et vel augue. Aenean vitae leo vitae purus vestibulum sodales id vitae ligula. Ut eget lacus a dui volutpat aliquet. Nulla facilisi. Fusce varius odio nec ipsum pulvinar ac pretium dolor bibendum. Morbi eget sem in dui fringilla aliquam ut in ligula. Vivamus in libero mauris, eget condimentum dui.

    $ lipsum paragraphs 1 --start-with-lorem
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed tellus ac lectus congue sodales. Fusce egestas nunc id neque porta sagittis. Mauris consectetur dui quis nibh adipiscing quis tempor elit dictum. Duis lorem erat, rutrum quis sodales consectetur, viverra nec purus. Sed massa erat, convallis tempus aliquet sit amet, porta id nisl. Maecenas nunc ligula, sollicitudin sed posuere id, rhoncus a erat. Praesent commodo tincidunt tellus vitae cursus. Vivamus laoreet, turpis ornare pharetra eleifend, sapien magna posuere lectus, ut iaculis metus eros consectetur felis. Etiam ornare, odio in tincidunt pretium, enim ligula interdum est, vitae sollicitudin mi mi eu quam. Mauris ullamcorper congue molestie. Praesent non lacus aliquet risus vulputate ornare eu id magna. Nulla placerat tempor nibh ac eleifend. Vivamus dignissim suscipit fringilla. Etiam nec urna id nunc aliquet vehicula in et nulla. Cras cursus nisi eget elit pharetra facilisis. In in turpis est. Donec porta dolor vitae nulla interdum ut tempus tortor placerat. Integer convallis feugiat condimentum.

*TIP:*
Use these bash aliases in addition to the lipsum cli to copy&paste from the command line:

    # somewhere in you ~/.bash_aliases
    alias pbcopy='xclip -selection clipboard'
    alias pbpaste='xclip -selection clipboard -o'

    $ lipsum paragraphs 4 | pbcopy

You can also use it from your Ruby code. When requiring the gem, it will add the following methods to any Fixnum:

 * LipsumAPI#lipsum_paragraphs: which returns an <code>Array</code> of <code>String</code>s
 * LipsumAPI#lipsum_words: which returns just a <code>String</code>
 * LipsumAPI#lipsum_bytes: idem.
 * LipsumAPI#lipsum_lists: same as paragraphs.


Example:

    require 'rubygems'
    require 'lipsum'
    paragraphs = 3.lipsum_paragraphs # paragraphs.size == 3
    paragraphs = 3.lipsum_paragraphs :start_with_lorem => true

## License

Copyright (c) 2010 Vicente Reig Rincón de Arellano

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
