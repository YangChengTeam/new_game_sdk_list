.class public final Lcom/ipaynow/plugin/core/task/a/e;
.super Lcom/ipaynow/plugin/core/task/a/b;


# instance fields
.field private F:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/core/task/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/core/task/a/b;-><init>(Lcom/ipaynow/plugin/core/task/a;)V

    return-void
.end method

.method private static a(I)V
    .locals 2

    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "\u5ef6\u8fdf\u65f6\u95f4\u65b9\u6cd5\u5f02\u5e38"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;
    .locals 6

    const/4 v5, 0x2

    :try_start_0
    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/e;->C:Lcom/ipaynow/plugin/core/task/a;

    const-string v1, "\u67e5\u8be2\u4ea4\u6613\u7ed3\u679c..."

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/core/task/a;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-boolean v1, p0, Lcom/ipaynow/plugin/core/task/a/e;->F:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ipaynow/plugin/conf/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/core/a/c;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ipaynow/plugin/core/task/a/e;->F:Z

    :cond_0
    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u6c42\u7684\u539f\u59cb\u62a5\u6587 = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->i(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ipaynow/plugin/conf/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/ipaynow/plugin/core/task/a/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/ipaynow/plugin/core/task/a/e;->d:I

    if-lt v0, v5, :cond_1

    invoke-virtual {p0}, Lcom/ipaynow/plugin/core/task/a/e;->o()Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/ipaynow/plugin/core/task/a/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ipaynow/plugin/core/task/a/e;->d:I

    mul-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Lcom/ipaynow/plugin/core/task/a/e;->a(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/core/task/a/e;->a([Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/ipaynow/plugin/manager/a/a;->f(Ljava/lang/String;)Ljava/util/HashMap;

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

    if-nez v0, :cond_3

    sget-object v0, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE011:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE011:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ipaynow/plugin/core/task/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "responseCode"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "A001"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/ipaynow/plugin/core/task/a/e;->a(Ljava/util/HashMap;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "tradeStatus"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "A003"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "A004"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget v0, p0, Lcom/ipaynow/plugin/core/task/a/e;->d:I

    if-lt v0, v5, :cond_6

    invoke-virtual {p0, v2}, Lcom/ipaynow/plugin/core/task/a/e;->b(Ljava/util/HashMap;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0xc8

    invoke-static {v0}, Lcom/ipaynow/plugin/core/task/a/e;->a(I)V

    iget v0, p0, Lcom/ipaynow/plugin/core/task/a/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ipaynow/plugin/core/task/a/e;->d:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/core/task/a/e;->a([Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v2}, Lcom/ipaynow/plugin/core/task/a/e;->b(Ljava/util/HashMap;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {v0}, Lcom/ipaynow/plugin/conf/a;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/core/task/a/e;->o()Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    if-lez v1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/ipaynow/plugin/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "\u4e2d\u5c0f\u5f00\u53d1\u8005HTTPS\u670d\u52a1\u901a\u8baf\u5931\u8d25"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "\u91cd\u53d1\u6d88\u606f\u6b21\u6570:1"

    invoke-static {v2}, Lcom/ipaynow/plugin/log/LogUtils;->i(Ljava/lang/Object;)V

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u63a5\u6536\u5230\u539f\u62a5\u6587: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/plugin/log/LogUtils;->i(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method protected final varargs b([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final c(Ljava/util/HashMap;)Z
    .locals 2

    const-string v0, "responseCode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;->SUCCESS:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
