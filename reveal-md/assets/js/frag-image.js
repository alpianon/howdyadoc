module.exports = (markdown, options) => {
  return new Promise((resolve, reject) => {
    return resolve(
      markdown
        .split('\n')
        .map((line, index) => {
          return line.replace(/<!--\ ?bkg\ ?(.*)\.(jpg|png|svg|webp)\ ?-->/g, '<!-- .slide:  data-background-image="assets/img/$1.$2" -->')
          .replace(/^\+(.*\.)(jpg|png|svg|webp)/g, '<!-- .slide:  data-background-image="assets/img/$1$2" -->')
          .replace(/<!--\ ?frag(\ ?.*?)\ ?index ([0-9])\ ?-->/g, '&shy;<!-- .element: class="fragment$1" data-fragment-index="$2"-->')
          .replace(/<!--\ ?frag(\ ?.*?)-->/g, '&shy;<!-- .element: class="fragment$1" -->')
          // .replace(/<!--\ ?id (.*?)\ ?-->/g, '<!-- .slide: id="$1" -->')
          .replace(/<!--\ ?id (.*)\ ?-->/g, '<!-- .slide: id="$1" -->')
          .replace(/@fa\[(.*?)\]/g, '<i class="fa fa-$1"></i>')
          .replace(/@far\[(.*?)\]/g, '<i class="far fa-$1"></i>');
        })
        .join('\n')
    );
  });
}
