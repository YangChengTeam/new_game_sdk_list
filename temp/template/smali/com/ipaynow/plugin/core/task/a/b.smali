.class public abstract Lcom/ipaynow/plugin/core/task/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/plugin/core/task/a/a/a;


# instance fields
.field protected C:Lcom/ipaynow/plugin/core/task/a;

.field private D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

.field protected E:Lcom/ipaynow/plugin/manager/a/a;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/core/task/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->C:Lcom/ipaynow/plugin/core/task/a;

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->E:Lcom/ipaynow/plugin/manager/a/a;

    iput-object p1, p0, Lcom/ipaynow/plugin/core/task/a/b;->C:Lcom/ipaynow/plugin/core/task/a;

    new-instance v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    invoke-direct {v0}, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    invoke-static {}, Lcom/ipaynow/plugin/manager/a/a;->u()Lcom/ipaynow/plugin/manager/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->E:Lcom/ipaynow/plugin/manager/a/a;

    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v2, 0x2

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v2, :cond_1

    :goto_0
    return-object v0

    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE011:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_ERROR:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->status:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_ERROR:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object p1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->errorCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object p2, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    return-object v0
.end method

.method protected final a(Ljava/util/HashMap;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "responseCode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "A002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "responseMsg"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "responseMsg"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/core/task/a/b;->c(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    sget-object v3, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_ERROR:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iput-object v3, v2, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->status:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iget-object v2, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object v0, v2, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    aget-object v2, v1, v4

    iput-object v2, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->errorCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    aget-object v1, v1, v5

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object p1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->mask:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    return-object v0

    :cond_0
    const-string v1, "responseMsg"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "responseMsg"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/core/task/a/b;->c(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->PE011:Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/conf/flags/IPAYNOW_ERROR_CODE;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "\u672a\u77e5\u9519\u8bef"

    aput-object v2, v1, v5

    goto :goto_0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->C:Lcom/ipaynow/plugin/core/task/a;

    const-string v1, "\u8ba2\u5355\u5904\u7406\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/core/task/a;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ipaynow/plugin/core/task/a/b;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ipaynow/plugin/core/task/a/b;->o()Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/a/b;->E:Lcom/ipaynow/plugin/manager/a/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/utils/StringUtils;->parseFormString(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/core/task/a/b;->c(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/core/task/a/b;->a(Ljava/util/HashMap;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/core/task/a/b;->b(Ljava/util/HashMap;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    goto :goto_0
.end method

.method protected final b(Ljava/util/HashMap;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;
    .locals 3

    const-string v0, "responseCode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_SUCCESS:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iput-object v2, v1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->status:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object v0, v1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object p1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->mask:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    return-object v0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-lez v2, :cond_1

    const-string v2, "\u4e2d\u5c0f\u5f00\u53d1\u8005HTTPS\u670d\u52a1\u901a\u8baf\u5931\u8d25"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "url = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "     data = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->i(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/ipaynow/plugin/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "\u4e2d\u5c0f\u5f00\u53d1\u8005HTTPS\u670d\u52a1\u901a\u8baf\u5931\u8d25"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v3, "\u91cd\u53d1\u6d88\u606f\u6b21\u6570:1"

    invoke-static {v3}, Lcom/ipaynow/plugin/log/LogUtils;->i(Ljava/lang/Object;)V

    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
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
    move-exception v3

    goto :goto_2
.end method

.method protected varargs abstract b([Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected c(Ljava/util/HashMap;)Z
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

.method protected final o()Lcom/ipaynow/plugin/core/task/dto/TaskMessage;
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_NET_TIME_OUT:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->status:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_NET_TIME_OUT:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    const-string v1, "PE002"

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->errorCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    const-string v1, "\u7f51\u7edc\u901a\u8baf\u8d85\u65f6"

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/b;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    return-object v0
.end method
