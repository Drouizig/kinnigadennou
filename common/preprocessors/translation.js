module.exports = (markdown, options) => {
    return new Promise((resolve, reject) => {
      return resolve(
        markdown
          .split('\n')
          .map((line, index) => {
            if (!/__\(.*/.test(line) || index === 0) return line;
            line = line.replace(/__\(/, '');
            return (line + '<!-- .element class="translation" -->');
          })
          .join('\n')
      );
    });
  };