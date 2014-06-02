/*
** error.h - Exception class
**
** See Copyright Notice in mruby.h
*/

#ifndef MRUBY_ERROR_H
#define MRUBY_ERROR_H

#if defined(__cplusplus)
extern "C" {
#endif

void mrb_sys_fail(mrb_state *mrb, const char *mesg);
int sysexit_status(mrb_state *mrb, mrb_value err);
mrb_value mrb_exc_new_str(mrb_state *mrb, struct RClass* c, mrb_value str);
mrb_value make_exception(mrb_state *mrb, int argc, mrb_value *argv, int isstr);
mrb_value mrb_make_exception(mrb_state *mrb, int argc, mrb_value *argv);
mrb_value mrb_format(mrb_state *mrb, const char *format, ...);
void mrb_exc_print(mrb_state *mrb, struct RObject *exc);
void mrb_no_method_error(mrb_state *mrb, mrb_sym id, mrb_int argc, const mrb_value *argv, const char *fmt, ...);
void mrb_longjmp(mrb_state *mrb);

#if defined(__cplusplus)
}  /* extern "C" { */
#endif

#endif  /* MRUBY_ERROR_H */
