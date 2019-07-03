.class public final Lcom/ipaynow/plugin/core/task/a/a;
.super Lcom/ipaynow/plugin/core/task/a/b;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/core/task/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/core/task/a/b;-><init>(Lcom/ipaynow/plugin/core/task/a;)V

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    const-string v1, "\u8c03\u7528\u4e86SK001\u63a5\u53e3"

    invoke-static {v1}, Lcom/ipaynow/plugin/log/LogUtils;->i(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/ipaynow/plugin/manager/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ipaynow/plugin/conf/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/core/a/c;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u6c42\u7684\u539f\u59cb\u62a5\u6587 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/plugin/log/LogUtils;->i(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ipaynow/plugin/conf/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/ipaynow/plugin/core/task/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/plugin/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ipaynow/plugin/core/task/a/a;->o()Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/ipaynow/plugin/manager/a/a;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lcom/ipaynow/plugin/manager/a/a;->d(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u9a8c\u7b7e\u7684\u62a5\u6587 = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->i(Ljava/lang/Object;)V

    const-string v0, "signature"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/ipaynow/plugin/conf/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/ipaynow/plugin/core/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE011:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE011:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ipaynow/plugin/core/task/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u6536\u5230\u7684\u62a5\u6587 = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->i(Ljava/lang/Object;)V

    const-string v0, "responseCode"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;->SUCCESS:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/utils/StringUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/ipaynow/plugin/core/task/a/a;->a(Ljava/util/HashMap;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/ipaynow/plugin/core/task/a/a;->b(Ljava/util/HashMap;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {v0}, Lcom/ipaynow/plugin/conf/a;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/core/task/a/a;->o()Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    goto :goto_0
.end method

.method protected final varargs b([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
