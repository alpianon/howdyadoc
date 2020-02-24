module.exports = (markdown, options) => {
  return new Promise((resolve, reject) => {
    return resolve(
      markdown
        .split('\n')
        .map((line, index) => {
          return line.replace(/<!--\ ?bkg\ ?-->\ ?(.*)$/g, '<!-- .slide:  data-background-image="assets/img/$1" -->')
          .replace(/<!--\ ?frag\ ?-->/g, '&shy;<!-- .element: class="fragment" -->');
        })
        .join('\n')
    );
  });
}
