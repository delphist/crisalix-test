// https://gist.github.com/beaucharman/1f93fdd7c72860736643d1ab274fee1a

export default function debounce(callback, wait, immediate = false) {
  let timeout = null;

  return function () {
    const callNow = immediate && !timeout;
    const next = () => callback.apply(this, arguments);

    clearTimeout(timeout);
    timeout = setTimeout(next, wait);

    if (callNow) {
      next();
    }
  };
}
