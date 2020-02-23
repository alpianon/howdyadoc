module.exports = (markdown, options) => {
  return new Promise((resolve, reject) => {
    return resolve(
      markdown
        .split('\n')
        .map((line, index) => {
          return line.replace(/<!--frag-->/g, '&shy;<!-- .element: class="fragment" -->');          
        })
        .join('\n')
    );
  });
};