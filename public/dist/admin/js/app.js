(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["/js/app"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/module/core/components/FlashMessage.vue?vue&type=script&lang=js&":
/*!********************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/module/core/components/FlashMessage.vue?vue&type=script&lang=js& ***!
  \********************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
//
//
//
//
//
//
//
//
//
//
//
/* harmony default export */ __webpack_exports__["default"] = ({
  props: {
    type: String,
    message: String
  },
  data: function data() {
    return {
      classList: {
        'success': 'alert-success ',
        'error': 'alert-danger '
      }
    };
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/module/service/components/ManagePriceByLocation.vue?vue&type=script&lang=js&":
/*!********************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/module/service/components/ManagePriceByLocation.vue?vue&type=script&lang=js& ***!
  \********************************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var axios__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! axios */ "./node_modules/axios/index.js");
/* harmony import */ var axios__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(axios__WEBPACK_IMPORTED_MODULE_0__);
function _toConsumableArray(arr) { return _arrayWithoutHoles(arr) || _iterableToArray(arr) || _nonIterableSpread(); }

function _nonIterableSpread() { throw new TypeError("Invalid attempt to spread non-iterable instance"); }

function _iterableToArray(iter) { if (Symbol.iterator in Object(iter) || Object.prototype.toString.call(iter) === "[object Arguments]") return Array.from(iter); }

function _arrayWithoutHoles(arr) { if (Array.isArray(arr)) { for (var i = 0, arr2 = new Array(arr.length); i < arr.length; i++) { arr2[i] = arr[i]; } return arr2; } }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

/* harmony default export */ __webpack_exports__["default"] = ({
  props: {
    packages: Array,
    locations: Array,
    endpoint: String,
    editing: Object | Array,
    method: String,
    existinGroupings: Array
  },
  data: function data() {
    return {
      form: {
        price: this.packages[0].price,
        "package": this.packages[0].id,
        location: null
      }
    };
  },
  computed: {
    isEditing: function isEditing() {
      return !!(this.editing && !Array.isArray(this.editing));
    },
    groupings: function groupings() {
      return this.existinGroupings.reduce(function (group, row) {
        group = group || {};
        group[row.package_id] = [].concat(_toConsumableArray(group[row.package_id] || []), [row.location_id]);
        return group;
      }, {});
    },
    availabelLocations: function availabelLocations() {
      var _this = this;

      return this.locations.filter(function (location) {
        return location.id == _this.editing.location || !(_this.groupings[_this.form["package"]] || []).includes(location.id);
      });
    }
  },
  watch: {
    editing: {
      handler: function handler(newValue) {
        if (!this.isEditing) {
          return;
        }

        this.$set(this.$data, 'form', newValue);
      },
      immediate: true
    },
    availabelLocations: {
      handler: function handler(newValue) {
        this.$set(this.form, 'location', newValue[0].id);
      },
      immediate: true
    },
    'form.package': {
      handler: function handler(newValue) {
        this.form.price = this.packages.find(function (pkg) {
          return pkg.id === newValue;
        }).price;
      }
    }
  },
  methods: {
    onSubmit: function onSubmit() {
      axios__WEBPACK_IMPORTED_MODULE_0___default.a[this.method](this.endpoint, this.form)["finally"](function (response) {
        return location.reload();
      });
    }
  }
});

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/module/core/components/FlashMessage.vue?vue&type=template&id=57c080bb&":
/*!************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/module/core/components/FlashMessage.vue?vue&type=template&id=57c080bb& ***!
  \************************************************************************************************************************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "render", function() { return render; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return staticRenderFns; });
var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _vm.message
    ? _c(
        "div",
        { staticClass: "alert alert-block", class: _vm.classList[_vm.type] },
        [
          _c(
            "button",
            {
              staticClass: "close",
              attrs: { type: "button", "data-dismiss": "alert" }
            },
            [_vm._v("×")]
          ),
          _vm._v(" "),
          _c("strong", [_vm._v(_vm._s(_vm.message))])
        ]
      )
    : _vm._e()
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/module/service/components/ManagePriceByLocation.vue?vue&type=template&id=3f4ef2ac&":
/*!************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/module/service/components/ManagePriceByLocation.vue?vue&type=template&id=3f4ef2ac& ***!
  \************************************************************************************************************************************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "render", function() { return render; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return staticRenderFns; });
var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c("div", { staticClass: "panel" }, [
    _c("div", { staticClass: "panel-title" }, [
      _vm._v(" Add New Package-Price ")
    ]),
    _vm._v(" "),
    _c("div", { staticClass: "panel-body" }, [
      _c(
        "form",
        {
          on: {
            submit: function($event) {
              $event.preventDefault()
              return _vm.onSubmit($event)
            }
          }
        },
        [
          _c("div", { staticClass: "form-group" }, [
            _c("label", [_vm._v("Package")]),
            _vm._v(" "),
            _c(
              "select",
              {
                directives: [
                  {
                    name: "model",
                    rawName: "v-model",
                    value: _vm.form.package,
                    expression: "form.package"
                  }
                ],
                staticClass: "form-control",
                on: {
                  change: function($event) {
                    var $$selectedVal = Array.prototype.filter
                      .call($event.target.options, function(o) {
                        return o.selected
                      })
                      .map(function(o) {
                        var val = "_value" in o ? o._value : o.value
                        return val
                      })
                    _vm.$set(
                      _vm.form,
                      "package",
                      $event.target.multiple ? $$selectedVal : $$selectedVal[0]
                    )
                  }
                }
              },
              _vm._l(_vm.packages, function(pkg) {
                return _c("option", {
                  domProps: { value: pkg.id, textContent: _vm._s(pkg.title) }
                })
              }),
              0
            )
          ]),
          _vm._v(" "),
          _c("div", { staticClass: "form-group" }, [
            _c("label", [_vm._v("Location")]),
            _vm._v(" "),
            _c(
              "select",
              {
                directives: [
                  {
                    name: "model",
                    rawName: "v-model",
                    value: _vm.form.location,
                    expression: "form.location"
                  }
                ],
                staticClass: "form-control",
                on: {
                  change: function($event) {
                    var $$selectedVal = Array.prototype.filter
                      .call($event.target.options, function(o) {
                        return o.selected
                      })
                      .map(function(o) {
                        var val = "_value" in o ? o._value : o.value
                        return val
                      })
                    _vm.$set(
                      _vm.form,
                      "location",
                      $event.target.multiple ? $$selectedVal : $$selectedVal[0]
                    )
                  }
                }
              },
              _vm._l(_vm.availabelLocations, function(location) {
                return _c("option", {
                  domProps: {
                    value: location.id,
                    textContent: _vm._s(location.name)
                  }
                })
              }),
              0
            )
          ]),
          _vm._v(" "),
          _c("div", { staticClass: "form-group" }, [
            _c("label", [_vm._v("Price")]),
            _vm._v(" "),
            _c("input", {
              directives: [
                {
                  name: "model",
                  rawName: "v-model",
                  value: _vm.form.price,
                  expression: "form.price"
                }
              ],
              staticClass: "form-control",
              attrs: { type: "text" },
              domProps: { value: _vm.form.price },
              on: {
                input: function($event) {
                  if ($event.target.composing) {
                    return
                  }
                  _vm.$set(_vm.form, "price", $event.target.value)
                }
              }
            })
          ]),
          _vm._v(" "),
          _vm._m(0)
        ]
      )
    ])
  ])
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", [
      _c(
        "button",
        { staticClass: "btn btn-primary", attrs: { type: "submit" } },
        [_vm._v("Add New")]
      )
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/admin/js/_base.js":
/*!*************************************!*\
  !*** ./resources/admin/js/_base.js ***!
  \*************************************/
/*! no static exports found */
/***/ (function(module, exports) {

(function ($) {
  $('.main-menu .has-children .btn-toggle').click(function () {
    var p = $(this).closest('.has-children');

    if (p.hasClass('active')) {
      p.removeClass('active');
    } else {
      p.siblings().removeClass('active');
      p.addClass('active');
    }
  });
  $('.btn-toggle-admin-menu,.backdrop-sidebar-mobile').click(function () {
    $('body').toggleClass('sidebar-toggled');
  });
})(jQuery);

/***/ }),

/***/ "./resources/admin/js/_condition.js":
/*!******************************************!*\
  !*** ./resources/admin/js/_condition.js ***!
  \******************************************/
/*! no static exports found */
/***/ (function(module, exports) {

jQuery(function ($) {
  $(document).ready(function () {
    var condition_object = 'select, input[type="radio"]:checked, input[type="text"], input[type="hidden"], input.ot-numeric-slider-hidden-input,input[type="checkbox"]'; // condition function to show and hide sections

    $('.main-content').on('change.conditionals', condition_object, function (e) {
      run_condition_engine();
    });
    run_condition_engine();

    function run_condition_engine() {
      $('[data-condition]').each(function () {
        var passed;
        var conditions = get_match_condition($(this).data('condition'));
        var operator = ($(this).data('operator') || 'and').toLowerCase();
        $.each(conditions, function (index, condition) {
          var target = $('[name=' + condition.check + ']');
          var targetEl = !!target.length && target.first();

          if (!target.length || !targetEl.length && condition.value.toString() != '') {
            return;
          }

          var v1 = targetEl.length ? targetEl.val().toString() : '';
          var v2 = condition.value.toString();
          var result;

          if (targetEl.length && targetEl.attr('type') == 'radio') {
            v1 = $('[name=' + condition.check + ']:checked').val();
          }

          if (targetEl.length && targetEl.attr('type') == 'checkbox') {
            v1 = targetEl.is(':checked') ? v1 : '';
          }

          switch (condition.rule) {
            case 'less_than':
              result = parseInt(v1) < parseInt(v2);
              break;

            case 'less_than_or_equal_to':
              result = parseInt(v1) <= parseInt(v2);
              break;

            case 'greater_than':
              result = parseInt(v1) > parseInt(v2);
              break;

            case 'greater_than_or_equal_to':
              result = parseInt(v1) >= parseInt(v2);
              break;

            case 'contains':
              result = v1.indexOf(v2) !== -1 ? true : false;
              break;

            case 'is':
              result = v1 == v2;
              break;

            case 'not':
              result = v1 != v2;
              break;
          }

          if ('undefined' == typeof passed) {
            passed = result;
          }

          switch (operator) {
            case 'or':
              passed = passed || result;
              break;

            case 'and':
            default:
              passed = passed && result;
              break;
          }
        });

        if (passed) {
          $(this).show();
        } else {
          $(this).hide();
        }

        passed = undefined;
      });
    }

    function get_match_condition(condition) {
      var match;
      var regex = /(.+?):(is|not|contains|less_than|less_than_or_equal_to|greater_than|greater_than_or_equal_to)\((.*?)\),?/g;
      var conditions = [];

      while (match = regex.exec(condition)) {
        conditions.push({
          'check': match[1],
          'rule': match[2],
          'value': match[3] || ''
        });
      }

      return conditions;
    } // Please do not edit condition section if you don't understand what it is

  });
});

/***/ }),

/***/ "./resources/admin/js/_form.js":
/*!*************************************!*\
  !*** ./resources/admin/js/_form.js ***!
  \*************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _ckeditor_uploadAdapter__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./ckeditor/uploadAdapter */ "./resources/admin/js/ckeditor/uploadAdapter.js");


(function ($) {
  function makeid(length) {
    var result = '';
    var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    var charactersLength = characters.length;

    for (var i = 0; i < length; i++) {
      result += characters.charAt(Math.floor(Math.random() * charactersLength));
    }

    return result;
  } // Form Configs


  $('.has-ckeditor').each(function () {
    var els = $(this); // ClassicEditor
    //     .create( els[0],{
    //         extraPlugins: [ CarTradeValueAdaterPlugin ],
    //     })
    //     .catch( error => {
    //         console.error( error );
    //     } );

    var id = $(this).attr('id');

    if (!id) {
      id = makeid(10);
      $(this).attr('id', id);
    }

    var h = els.data('height');
    if (!h && typeof h == 'undefined') h = 300;
    var remove_script_host = true;

    if ($(this).attr("data-fullurl") === "true") {
      remove_script_host = false;
    } // CKEDITOR.replace( id );


    tinymce.init({
      selector: '#' + id,
      plugins: 'preview searchreplace autolink code fullscreen image link media codesample table charmap hr toc advlist lists wordcount imagetools textpattern help pagebreak hr',
      toolbar: 'formatselect | bold italic strikethrough forecolor backcolor permanentpen formatpainter | link image media | alignleft aligncenter alignright alignjustify  | numlist bullist outdent indent  | pagebreak codesample code | removeformat',
      image_advtab: true,
      image_caption: true,
      toolbar_drawer: 'sliding',
      relative_urls: false,
      remove_script_host: remove_script_host,
      height: h,
      file_picker_callback: function file_picker_callback(callback, value, meta) {
        /* Provide file and text for the link dialog */
        if (meta.filetype === 'file') {
          uploaderModal.show({
            multiple: false,
            file_type: 'video',
            onSelect: function onSelect(files) {
              if (files.length) callback(bookingCore.url + '/media/preview/' + files[0].id);
            }
          });
        }
        /* Provide image and alt text for the image dialog */


        if (meta.filetype === 'image') {
          uploaderModal.show({
            multiple: false,
            file_type: 'image',
            onSelect: function onSelect(files) {
              console.log(files);
              if (files.length) callback(files[0].full_size);
            }
          });
        }
        /* Provide alternative source and posted for the media dialog */


        if (meta.filetype === 'media') {
          uploaderModal.show({
            multiple: false,
            file_type: 'video',
            onSelect: function onSelect(files) {
              if (files.length) callback(bookingCore.url + '/media/preview/' + files[0].id);
            }
          });
        }
      }
    });
  });
  $(document).on('click', '.dungdt-upload-box-normal .btn-field-upload,.dungdt-upload-box-normal .attach-demo', function () {
    var p = $(this).closest('.dungdt-upload-box');
    uploaderModal.show({
      multiple: false,
      file_type: 'image',
      onSelect: function onSelect(files) {
        p.addClass('active');
        p.find('.attach-demo').html('<img src="' + files[0].thumb_size + '"/>');
        p.find('input').val(files[0].id);
      }
    });
  });
  $(document).on('click', '.dungdt-upload-box-normal .delete', function (e) {
    e.preventDefault();
    var p = $(this).closest('.dungdt-upload-box');
    p.find("input").attr('value', '');
    p.removeClass("active");
  });
  $('.dungdt-upload-multiple').find('.btn-field-upload').click(function () {
    var p = $(this).closest('.dungdt-upload-multiple');
    uploaderModal.show({
      multiple: true,
      file_type: 'image',
      onSelect: function onSelect(files) {
        console.log(files);

        if (typeof files != 'undefined' && files.length) {
          var ids = [];
          var html = '';
          p.addClass('active');

          for (var i = 0; i < files.length; i++) {
            ids.push(files[i].id);
            html += '<div class="image-item"><div class="inner"><span class="delete btn btn-sm btn-danger"><i class="fa fa-trash"></i></span><img src="' + files[i].thumb_size + '"/></div></div>';
          }

          p.find('.attach-demo').append(html);
          var old = p.find('input').val().split(',');
          p.find('input').val(ids.concat(old).join(','));
        }
      }
    });
  });
  $('.dungdt-upload-multiple').on('click', '.image-item .delete', function () {
    var i = $(this).closest('.image-item').index();
    var p = $(this).closest('.dungdt-upload-multiple');
    var ids = p.find('input').val().split(',');
    ids.splice(i, 1);
    p.find('input').val(ids.join(','));
    $(this).closest('.image-item').remove();
  });
  $('.open-edit-input').click(function () {
    $(this).replaceWith('<input type="text" name="' + $(this).data('name') + '" value="' + $(this).html() + '">');
  });
  $(document).ready(function () {
    $('.dungdt-select2-field').each(function () {
      var configs = $(this).data('options');
      $(this).select2(configs);
    });
  });
  $(".form-group-item").each(function () {
    var container = $(this);
    $(this).on('click', '.btn-remove-item', function () {
      $(this).closest(".item").remove();
    });
    $(this).on('press', 'input,select', function () {
      var value = $(this).val();
      $(this).attr("value", value);
    });
  });
  $(".form-group-item .btn-add-item").click(function () {
    var p = $(this).closest(".form-group-item").find(".g-items");
    var number = $(this).closest(".form-group-item").find(".g-items .item:last-child").data("number");
    if (number === undefined) number = 0;else number++;
    var extra_html = $(this).closest(".form-group-item").find(".g-more").html();
    extra_html = extra_html.replace(/__name__=/gi, "name=");
    extra_html = extra_html.replace(/__number__/gi, number);
    p.append(extra_html);

    if (extra_html.indexOf('dungdt-select2-field-lazy') > 0) {
      p.find('.dungdt-select2-field-lazy').each(function () {
        var configs = $(this).data('options');
        $(this).select2(configs);
      });
    }
  });
  $('table .check-all').change(function () {
    if ($(this).is(':checked')) {
      $(this).closest('table').find('tbody .check-item').prop('checked', true);
    } else {
      $(this).closest('table').find('tbody .check-item').prop('checked', false);
    }
  });
  $('.dungdt-apply-form-btn').click(function (e) {
    var $this = $(this);
    var action = $this.closest('form').find('[name=action]').val();

    var apply_action = function apply_action() {
      var ids = '';
      $(".bravo-form-item .check-item").each(function () {
        if ($(this).is(":checked")) {
          ids += '<input type="hidden" name="ids[]" value="' + $(this).val() + '">';
        }
      });
      $this.closest('form').append(ids).submit();
    };

    if (action === 'delete') {
      bookingCoreApp.showConfirm({
        message: i18n.confirm_delete,
        callback: function callback(result) {
          if (result) {
            apply_action();
          }
        }
      });
    } else {
      apply_action();
    }
  });
  $('.dungdt-input-flag-icon').change(function () {
    $(this).closest('.input-group').find('.flag-icon').attr('class', '').addClass('flag-icon flag-icon-' + $(this).val());
  });
  $('.dungdt_input_locale').change(function () {});
  $('.tag-input').keypress(function (e) {
    // console.log(e);
    if (e.keyCode == 13) {
      var val = $(this).val();

      if (val) {
        var html = '<span class="tag_item">' + val + '       <span data-role="remove"></span>\n' + '                                                    <input type="hidden" name="tag_name[]" value="' + val + '">\n' + '                                                </span>';
        $(this).parent().find('.show_tags').append(html);
        $(this).val('');
      }

      e.preventDefault();
      return false;
    }
  });
  $(document).on('click', '[data-role=remove]', function () {
    $(this).closest('.tag_item').remove();
  }); // Form validation

  var forms = document.getElementsByClassName('needs-validation'); // Loop over them and prevent submission

  var validation = Array.prototype.filter.call(forms, function (form) {
    form.addEventListener('submit', function (event) {
      if (form.checkValidity() === false) {
        event.preventDefault();
        event.stopPropagation();
      }

      form.classList.add('was-validated');
    }, false);
  });
})(jQuery);

/***/ }),

/***/ "./resources/admin/js/_menu.js":
/*!*************************************!*\
  !*** ./resources/admin/js/_menu.js ***!
  \*************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var vue_draggable_nested_tree__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! vue-draggable-nested-tree */ "./node_modules/vue-draggable-nested-tree/dist/vue-draggable-nested-tree.es.js");
// import {VueNestableHandle, VueNestable} from 'vue-nestable'
 // import draggable from 'vuedraggable'
// import NestedDraggable from './components/nested-draggable.vue'

(function ($) {
  var id = $('#menu-app');

  if (!id.length) {
    return;
  }

  var menu_id = id.data('id');
  new Vue({
    el: '#menu-app',
    components: {
      // VueNestable,
      // VueNestableHandle,
      DraggableTree: vue_draggable_nested_tree__WEBPACK_IMPORTED_MODULE_0__["DraggableTree"] // draggable,
      // NestedDraggable

    },
    data: {
      items: current_menu_items,
      item_types: [],
      custom_url: '',
      custom_name: "",
      name: current_menu_name,
      message: {
        type: false,
        content: ''
      },
      custom_show: false,
      locations: current_menu_locations,
      currentIndex: current_items_index + 1
    },
    mounted: function mounted() {
      this.reloadTypes(); // if(menu_id){
      //     this.reloadItems();
      // }
    },
    methods: {
      toogleItem: function toogleItem(item) {
        if (item._open) {
          item._open = false;
        } else {
          item._open = true;
        }
      },
      searchItems: function searchItems(type) {
        // if(!type.q) return;
        $.ajax({
          url: bookingCore.url + '/admin/module/core/menu/searchTypeItems',
          data: {
            "class": type["class"],
            q: type.q
          },
          dataType: 'json',
          type: 'post',
          success: function success(res) {
            if (res.status) {
              type.items = res.data;
            }
          },
          error: function error(e) {
            console.log(e);
          }
        });
      },
      reloadItems: function reloadItems() {
        var me = this;
        $.ajax({
          url: bookingCore.url + '/admin/module/core/menu/getItems',
          dataType: 'json',
          type: 'post',
          data: {
            id: menu_id
          },
          success: function success(res) {
            if (res.data && res.status) {
              me.items = res.data;
            }
          },
          error: function error(e) {
            console.log(e);
          }
        });
      },
      reloadTypes: function reloadTypes() {
        var me = this;
        $.ajax({
          url: bookingCore.url + '/admin/module/core/menu/getTypes',
          dataType: 'json',
          type: 'post',
          data: {},
          success: function success(res) {
            if (res.data && res.status) {
              me.item_types = res.data;
            }
          },
          error: function error(e) {
            console.log(e);
          }
        });
      },
      addToMenu: function addToMenu(type) {
        if (!type.selected.length) {
          return false;
        }

        for (var i = 0; i < type.items.length; i++) {
          if (type.selected.indexOf(type.items[i].id) > -1) {
            var item = Object.assign({}, type.items[i]); // item._id = this.currentIndex + 1;

            item._open = true;
            this.items.push(item);
            this.currentIndex += 1;
            console.log(this.currentIndex);
          }
        }

        type.selected = [];
      },
      addCustomUrl: function addCustomUrl() {
        if (!this.custom_name) return;
        this.items.push({
          name: this.custom_name,
          url: this.custom_url,
          item_model: 'custom',
          _open: false // _id: this.items.length + 1

        });
        this.custom_name = '';
        this.custom_url = '';
      },
      parseMenuItems: function parseMenuItems(origins) {
        var items = [];

        for (var i = 0; i < origins.length; i++) {
          var item = origins[i];
          var tmp = Object.assign({}, item);
          delete tmp._vm;
          delete tmp.parent;
          delete tmp.style;
          delete tmp.children;
          delete tmp.style;
          delete tmp.innerStyle;
          delete tmp.innerBackClass;
          delete tmp.innerBackStyle;

          if (item.children) {
            tmp.children = this.parseMenuItems(item.children);
          }

          items.push(tmp);
        }

        return items;
      },
      saveMenu: function saveMenu() {
        var me = this;
        var items = this.parseMenuItems(this.items);
        $.ajax({
          url: bookingCore.url + '/admin/module/core/menu/store',
          dataType: 'json',
          type: 'post',
          data: {
            id: menu_id,
            items: JSON.stringify(items),
            name: this.name,
            locations: this.locations,
            lang: current_menu_lang
          },
          success: function success(res) {
            if (res.message) {
              me.message.content = res.message;
              me.message.type = res.status;
            }

            if (res.url) {
              window.location.href = res.url;
            }
          },
          error: function error(e) {
            if (e.responseJSON.message) {
              me.message.content = e.responseJSON.message;
              me.message.type = false;
            } else {
              me.message.content = 'Can not save menu';
              me.message.type = false;
            }
          }
        });
      },
      deleteMenuItem: function deleteMenuItem(e, item, tree) {
        e.preventDefault();
        tree.deleteNode(item);
      }
    }
  });
})(jQuery);

/***/ }),

/***/ "./resources/admin/js/app.js":
/*!***********************************!*\
  !*** ./resources/admin/js/app.js ***!
  \***********************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

function _typeof(obj) { if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") { _typeof = function _typeof(obj) { return typeof obj; }; } else { _typeof = function _typeof(obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }; } return _typeof(obj); }

/**
 * We'll load jQuery and the Bootstrap jQuery plugin which provides support
 * for JavaScript based Bootstrap features such as modals and tabs. This
 * code may be modified to fit the specific needs of your application.
 */
try {
  window.Popper = __webpack_require__(/*! popper.js */ "./node_modules/popper.js/dist/esm/popper.js")["default"];
  window.$ = window.jQuery = __webpack_require__(/*! jquery */ "./node_modules/jquery/dist/jquery.js");
  window.Vue = __webpack_require__(/*! vue */ "./node_modules/vue/dist/vue.common.js");

  __webpack_require__(/*! bootstrap */ "./node_modules/bootstrap/dist/js/bootstrap.js");

  window.bootbox = __webpack_require__(/*! bootbox */ "./node_modules/bootbox/bootbox.all.js");
  $.ajaxSetup({
    headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
  });
} catch (e) {
  console.log(e);
} //window.ClassicEditor = require('../../ckeditor');
// window.ClassicEditor = require('@ckeditor/ckeditor5-build-classic');
// console.log(ClassicEditor);
// console.log(ClassicEditor);


__webpack_require__(/*! ../../module/media/admin/js/browser */ "./resources/module/media/admin/js/browser.js");

__webpack_require__(/*! ./_condition */ "./resources/admin/js/_condition.js");

__webpack_require__(/*! ./_base */ "./resources/admin/js/_base.js");

__webpack_require__(/*! ./_form */ "./resources/admin/js/_form.js");

__webpack_require__(/*! ./_menu */ "./resources/admin/js/_menu.js");

__webpack_require__(/*! ../../module/service/app.js */ "./resources/module/service/app.js"); // Template


if (document.getElementById('booking-core-template-detail')) {
  TemplateDetail();
}

$(document).on('hidden.bs.modal', '.modal', function () {
  $('.modal:visible').length && $(document.body).addClass('modal-open');
});
window.bookingCoreApp = {
  showSuccess: function showSuccess(configs) {
    var args = {};

    if (_typeof(configs) == 'object') {
      args = configs;
    } else {
      args.message = configs;
    }

    if (!args.title) {
      args.title = i18n.success;
    }

    args.centerVertical = true;
    bootbox.alert(args);
  },
  showError: function showError(configs) {
    var args = {};

    if (_typeof(configs) == 'object') {
      args = configs;
    } else {
      args.message = configs;
    }

    if (!args.title) {
      args.title = i18n.warning;
    }

    args.centerVertical = true;
    bootbox.alert(args);
  },
  showAjaxError: function showAjaxError(e) {
    if (typeof e.responseJSON != 'undefined' && e.responseJSON.message) {
      return this.showError(e.responseJSON.message);
    }

    if (e.responseText) {
      return this.showError(e.responseText);
    }
  },
  showAjaxMessage: function showAjaxMessage(json) {
    if (json.message) {
      if (json.status) {
        this.showSuccess(json);
      } else {
        this.showError(json);
      }
    }
  },
  showConfirm: function showConfirm(configs) {
    var args = {};

    if (_typeof(configs) == 'object') {
      args = configs;
    }

    args.buttons = {
      confirm: {
        label: '<i class="fa fa-check"></i> ' + i18n.confirm
      },
      cancel: {
        label: '<i class="fa fa-times"></i> ' + i18n.cancel
      }
    };
    args.centerVertical = true;
    bootbox.confirm(args);
  }
};

/***/ }),

/***/ "./resources/admin/js/ckeditor/uploadAdapter.js":
/*!******************************************************!*\
  !*** ./resources/admin/js/ckeditor/uploadAdapter.js ***!
  \******************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

var CarTradeValueAdapterUpload =
/*#__PURE__*/
function () {
  function CarTradeValueAdapterUpload(loader) {
    _classCallCheck(this, CarTradeValueAdapterUpload);

    // The file loader instance to use during the upload.
    this.loader = loader;
  } // Starts the upload process.


  _createClass(CarTradeValueAdapterUpload, [{
    key: "upload",
    value: function upload() {
      var _this = this;

      return this.loader.file.then(function (file) {
        return new Promise(function (resolve, reject) {
          _this._initRequest();

          _this._initListeners(resolve, reject, file);

          _this._sendRequest(file);
        });
      });
    } // Aborts the upload process.

  }, {
    key: "abort",
    value: function abort() {
      if (this.xhr) {
        this.xhr.abort();
      }
    } // Initializes the XMLHttpRequest object using the URL passed to the constructor.

  }, {
    key: "_initRequest",
    value: function _initRequest() {
      var xhr = this.xhr = new XMLHttpRequest(); // Note that your request may look different. It is up to you and your editor
      // integration to choose the right communication channel. This example uses
      // a POST request with JSON as a data structure but your configuration
      // could be different.

      xhr.open('POST', bookingCore.url + '/admin/module/media/store', true);
      xhr.responseType = 'json';
    } // Initializes XMLHttpRequest listeners.

  }, {
    key: "_initListeners",
    value: function _initListeners(resolve, reject, file) {
      var xhr = this.xhr;
      var loader = this.loader;
      var genericErrorText = "Couldn't upload file: ".concat(file.name, ".");
      xhr.addEventListener('error', function () {
        return reject(genericErrorText);
      });
      xhr.addEventListener('abort', function () {
        return reject();
      });
      xhr.addEventListener('load', function () {
        var response = xhr.response; // This example assumes the XHR server's "response" object will come with
        // an "error" which has its own "message" that can be passed to reject()
        // in the upload promise.
        //
        // Your integration may handle upload errors in a different way so make sure
        // it is done properly. The reject() function must be called when the upload fails.

        if (!response || !response.status) {
          if (response.message) {
            return reject(response.message);
          }

          return reject(response && response.error ? response.error.message : genericErrorText);
        } // If the upload is successful, resolve the upload promise with an object containing
        // at least the "default" URL, pointing to the image on the server.
        // This URL will be used to display the image in the content. Learn more in the
        // UploadAdapter#upload documentation.


        resolve(response.data.sizes);
      }); // Upload progress when it is supported. The file loader has the #uploadTotal and #uploaded
      // properties which are used e.g. to display the upload progress bar in the editor
      // user interface.

      if (xhr.upload) {
        xhr.upload.addEventListener('progress', function (evt) {
          if (evt.lengthComputable) {
            loader.uploadTotal = evt.total;
            loader.uploaded = evt.loaded;
          }
        });
      }
    } // Prepares the data and sends the request.

  }, {
    key: "_sendRequest",
    value: function _sendRequest(file) {
      // Prepare the form data.
      var data = new FormData();
      data.append('file', file);
      this.xhr.setRequestHeader('X-CSRF-TOKEN', $('meta[name="csrf-token"]').attr('content')); // Important note: This is the right place to implement security mechanisms
      // like authentication and CSRF protection. For instance, you can use
      // XMLHttpRequest.setRequestHeader() to set the request headers containing
      // the CSRF token generated earlier by your application.
      // Send the request.

      this.xhr.send(data);
    }
  }]);

  return CarTradeValueAdapterUpload;
}(); // ...


function CarTradeValueAdapterPlugin(editor) {
  editor.plugins.get('FileRepository').createUploadAdapter = function (loader) {
    // Configure the URL to the upload script in your back-end here!
    return new CarTradeValueAdapterUpload(loader);
  };
}

/* harmony default export */ __webpack_exports__["default"] = (CarTradeValueAdapterPlugin);

/***/ }),

/***/ "./resources/admin/scss/app.scss":
/*!***************************************!*\
  !*** ./resources/admin/scss/app.scss ***!
  \***************************************/
/*! no static exports found */
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ }),

/***/ "./resources/admin/scss/vendors.scss":
/*!*******************************************!*\
  !*** ./resources/admin/scss/vendors.scss ***!
  \*******************************************/
/*! no static exports found */
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ }),

/***/ "./resources/module/core/components/FlashMessage.vue":
/*!***********************************************************!*\
  !*** ./resources/module/core/components/FlashMessage.vue ***!
  \***********************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _FlashMessage_vue_vue_type_template_id_57c080bb___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./FlashMessage.vue?vue&type=template&id=57c080bb& */ "./resources/module/core/components/FlashMessage.vue?vue&type=template&id=57c080bb&");
/* harmony import */ var _FlashMessage_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./FlashMessage.vue?vue&type=script&lang=js& */ "./resources/module/core/components/FlashMessage.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _FlashMessage_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _FlashMessage_vue_vue_type_template_id_57c080bb___WEBPACK_IMPORTED_MODULE_0__["render"],
  _FlashMessage_vue_vue_type_template_id_57c080bb___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/module/core/components/FlashMessage.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/module/core/components/FlashMessage.vue?vue&type=script&lang=js&":
/*!************************************************************************************!*\
  !*** ./resources/module/core/components/FlashMessage.vue?vue&type=script&lang=js& ***!
  \************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_FlashMessage_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./FlashMessage.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/module/core/components/FlashMessage.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_FlashMessage_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/module/core/components/FlashMessage.vue?vue&type=template&id=57c080bb&":
/*!******************************************************************************************!*\
  !*** ./resources/module/core/components/FlashMessage.vue?vue&type=template&id=57c080bb& ***!
  \******************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_FlashMessage_vue_vue_type_template_id_57c080bb___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./FlashMessage.vue?vue&type=template&id=57c080bb& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/module/core/components/FlashMessage.vue?vue&type=template&id=57c080bb&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_FlashMessage_vue_vue_type_template_id_57c080bb___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_FlashMessage_vue_vue_type_template_id_57c080bb___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ }),

/***/ "./resources/module/media/admin/js/browser.js":
/*!****************************************************!*\
  !*** ./resources/module/media/admin/js/browser.js ***!
  \****************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

(function ($) {
  window.uploaderModal = new Vue({
    el: '#cdn-browser',
    data: {
      files: [],
      viewType: 'grid',
      total: 0,
      totalPage: 0,
      fileTypes: [],
      selected: [],
      selectedLists: [],
      showUploader: false,
      apiFinished: false,
      modalEl: false,
      multiple: false,
      isLoading: false,
      filter: {
        page: 1
      },
      onSelect: function onSelect() {},
      uploadConfigs: {}
    },
    mounted: function mounted() {
      var me = this;
      this.modalEl = $('#cdn-browser-modal').modal({
        show: false
      }).on('show.bs.modal', function () {
        me.reloadLists();
      });
      this.$nextTick(function () {
        $(this.$refs.files).change(function () {
          me.upload(this.files);
        });
      });
    },
    watch: {
      uploadConfigs: function uploadConfigs(val) {
        this.multiple = val.multiple;
        this.onSelect = val.onSelect;
      }
    },
    methods: {
      show: function show(configs) {
        this.files = [];
        this.resetSelected();
        this.uploadConfigs = configs;
        this.modalEl.modal('show');
      },
      hide: function hide() {
        this.modalEl.modal('hide');
      },
      changePage: function changePage(p, e) {
        e.preventDefault();
        this.filter.page = p;
        this.reloadLists();
      },
      selectFile: function selectFile(file) {
        var index = this.selected.indexOf(file.id);

        if (index > -1) {
          this.selected.splice(index, 1);
          this.selectedLists.splice(index, 1);
        } else {
          if (!this.multiple) {
            this.selected = [];
            this.selectedLists = [];
          }

          this.selected.push(file.id);
          this.selectedLists.push(file);
        }
      },
      removeFiles: function removeFiles() {
        var me = this;
        bookingCoreApp.showConfirm({
          message: i18n.confirm_delete,
          callback: function callback(result) {
            if (result) {
              me.isLoading = true;
              $.ajax({
                url: bookingCore.url + '/admin/module/media/removeFiles',
                type: 'POST',
                data: {
                  file_ids: me.selected
                },
                dataType: 'json',
                success: function success(data) {
                  if (data.status === 1) {//bookingCoreApp.showSuccess(data);
                  }

                  if (data.status === 0) {
                    bookingCoreApp.showError(data);
                  }

                  me.isLoading = false;
                  me.reloadLists();
                },
                error: function error(e) {
                  me.isLoading = false;
                  bookingCoreApp.showAjaxError(e);
                  me.resetSelected();
                }
              });
            }
          }
        });
      },
      sendFiles: function sendFiles() {
        if (typeof this.onSelect == 'function') {
          var f = this.onSelect;
          f(this.selectedLists);
        }

        this.hide();
      },
      init: function init() {
        var me = this;
        this.reloadLists();
      },
      reloadLists: function reloadLists() {
        var me = this;
        $("#cdn-browser .icon-loading").addClass("active");
        me.isLoading = true;
        $.ajax({
          url: bookingCore.url + '/admin/module/media/getLists',
          type: 'POST',
          data: {
            file_type: this.uploadConfigs.file_type,
            page: this.filter.page,
            s: this.filter.s
          },
          dataType: 'json',
          success: function success(json) {
            me.resetSelected();
            me.files = json.data;
            me.total = json.total;
            me.totalPage = json.totalPage;
            me.isLoading = false;
            me.apiFinished = true;
          }
        });
      },
      upload: function upload(files) {
        var me = this;
        if (!files.length) return;
        console.log(files);

        for (var i = 0; i < files.length; i++) {
          var d = new FormData();
          d.append('file', files[i]);
          d.append('type', this.uploadConfigs.file_type);
          me.isLoading = true;
          $.ajax({
            url: bookingCore.url + '/admin/module/media/store',
            data: d,
            dataType: 'json',
            type: 'post',
            contentType: false,
            processData: false,
            success: function success(res) {
              me.isLoading = false;

              if (res.status) {
                me.reloadLists();
              }

              if (res.status === 0) {
                bookingCoreApp.showError(res);
              }

              $(me.$refs.files).val('');
            },
            error: function error(e) {
              bookingCoreApp.showAjaxError(e);
              $(me.$refs.files).val('');
              me.isLoading = false;
            }
          });
        }
      },
      initUploader: function initUploader() {},
      resetSelected: function resetSelected() {
        this.selectedLists = [];
        this.selected = [];
        this.total = 0;
        this.totalPage = 0;
        this.apiFinished = false;
      }
    }
  });
  Vue.component('file-item', {
    template: '#file-item-template',
    data: function data() {
      return {
        count: 0
      };
    },
    props: ['file', "selected", "viewType"],
    methods: {
      selectFile: function selectFile(file) {
        this.$emit('select-file', file);
      },
      fileClass: function fileClass(file) {
        var s = [];
        s.push(file.file_type);

        if (file.file_type.substr(0, 5) == 'image') {
          s.push('is-image');
        } else {
          s.push('not-image');
        }

        return s;
      },
      getFileThumb: function getFileThumb(file) {
        if (file.file_type.substr(0, 5) == 'image') {
          return '<img src="' + file.thumb_size + '">';
        }

        if (file.file_type.substr(0, 5) == 'video') {
          return '<img src="/assets/browser/icon/007-video-file.png">';
        }

        if (file.file_type.indexOf('x-zip-compressed') !== -1 || file.file_type.indexOf('/zip') !== -1) {
          return '<img src="/assets/browser/icon/005-zip-2.png">';
        }

        if (file.file_type.indexOf('/pdf') !== -1) {
          return '<img src="/assets/browser/icon/002-pdf-file-format-symbol.png">';
        }

        if (file.file_type.indexOf('/msword') !== -1 || file.file_type.indexOf('wordprocessingml') !== -1) {
          return '<img src="/assets/browser/icon/010-word.png">';
        }

        if (file.file_type.indexOf('spreadsheetml') !== -1 || file.file_type.indexOf('excel') !== -1) {
          return '<img src="/assets/browser/icon/011-excel-file.png">';
        }

        if (file.file_type.indexOf('presentation') !== -1) {
          return '<img src="/assets/browser/icon/powerpoint.png">';
        }

        if (file.file_type.indexOf('audio/') !== -1) {
          return '<img src="/assets/browser/icon/006-audio-file.png">';
        }

        return '<img src="/assets/browser/icon/008-file.png">';
      }
    }
  });
})(jQuery);

/***/ }),

/***/ "./resources/module/service/app.js":
/*!*****************************************!*\
  !*** ./resources/module/service/app.js ***!
  \*****************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! vue */ "./node_modules/vue/dist/vue.common.js");
/* harmony import */ var vue__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(vue__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _core_components_FlashMessage_vue__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../core/components/FlashMessage.vue */ "./resources/module/core/components/FlashMessage.vue");
/* harmony import */ var _components_ManagePriceByLocation_vue__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./components/ManagePriceByLocation.vue */ "./resources/module/service/components/ManagePriceByLocation.vue");



var id = $('#service-location');

if (id.length) {
  new vue__WEBPACK_IMPORTED_MODULE_0___default.a({
    el: '#service-location',
    components: {
      FlashMessage: _core_components_FlashMessage_vue__WEBPACK_IMPORTED_MODULE_1__["default"],
      ManagePriceByLocation: _components_ManagePriceByLocation_vue__WEBPACK_IMPORTED_MODULE_2__["default"]
    }
  });
}

/***/ }),

/***/ "./resources/module/service/components/ManagePriceByLocation.vue":
/*!***********************************************************************!*\
  !*** ./resources/module/service/components/ManagePriceByLocation.vue ***!
  \***********************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _ManagePriceByLocation_vue_vue_type_template_id_3f4ef2ac___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./ManagePriceByLocation.vue?vue&type=template&id=3f4ef2ac& */ "./resources/module/service/components/ManagePriceByLocation.vue?vue&type=template&id=3f4ef2ac&");
/* harmony import */ var _ManagePriceByLocation_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./ManagePriceByLocation.vue?vue&type=script&lang=js& */ "./resources/module/service/components/ManagePriceByLocation.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__["default"])(
  _ManagePriceByLocation_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _ManagePriceByLocation_vue_vue_type_template_id_3f4ef2ac___WEBPACK_IMPORTED_MODULE_0__["render"],
  _ManagePriceByLocation_vue_vue_type_template_id_3f4ef2ac___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/module/service/components/ManagePriceByLocation.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/module/service/components/ManagePriceByLocation.vue?vue&type=script&lang=js&":
/*!************************************************************************************************!*\
  !*** ./resources/module/service/components/ManagePriceByLocation.vue?vue&type=script&lang=js& ***!
  \************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_ManagePriceByLocation_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./ManagePriceByLocation.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/module/service/components/ManagePriceByLocation.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_ManagePriceByLocation_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/module/service/components/ManagePriceByLocation.vue?vue&type=template&id=3f4ef2ac&":
/*!******************************************************************************************************!*\
  !*** ./resources/module/service/components/ManagePriceByLocation.vue?vue&type=template&id=3f4ef2ac& ***!
  \******************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ManagePriceByLocation_vue_vue_type_template_id_3f4ef2ac___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./ManagePriceByLocation.vue?vue&type=template&id=3f4ef2ac& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/module/service/components/ManagePriceByLocation.vue?vue&type=template&id=3f4ef2ac&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ManagePriceByLocation_vue_vue_type_template_id_3f4ef2ac___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_ManagePriceByLocation_vue_vue_type_template_id_3f4ef2ac___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ }),

/***/ 0:
/*!*************************************************************************************************************!*\
  !*** multi ./resources/admin/js/app.js ./resources/admin/scss/vendors.scss ./resources/admin/scss/app.scss ***!
  \*************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(/*! G:\Work\india-mechanic\resources\admin\js\app.js */"./resources/admin/js/app.js");
__webpack_require__(/*! G:\Work\india-mechanic\resources\admin\scss\vendors.scss */"./resources/admin/scss/vendors.scss");
module.exports = __webpack_require__(/*! G:\Work\india-mechanic\resources\admin\scss\app.scss */"./resources/admin/scss/app.scss");


/***/ })

},[[0,"/js/manifest","/js/vendor"]]]);