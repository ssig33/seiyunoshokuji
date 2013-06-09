jQuery.fn.outerHTML = function(s) {
  if (s) {
    this.before(s);
    this.remove();
    return this;
  } else {
    var dummy = jQuery("<p>");
    var elem = this.eq(0);
    dummy.append(elem.clone());
    return dummy.html();
  }
}
