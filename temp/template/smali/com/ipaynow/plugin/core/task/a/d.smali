.class public final Lcom/ipaynow/plugin/core/task/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/plugin/core/task/a/a/a;


# instance fields
.field private C:Lcom/ipaynow/plugin/core/task/a;

.field private D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

.field private E:Lcom/ipaynow/plugin/manager/a/a;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/core/task/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->C:Lcom/ipaynow/plugin/core/task/a;

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->E:Lcom/ipaynow/plugin/manager/a/a;

    iput-object p1, p0, Lcom/ipaynow/plugin/core/task/a/d;->C:Lcom/ipaynow/plugin/core/task/a;

    new-instance v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    invoke-direct {v0}, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    invoke-static {}, Lcom/ipaynow/plugin/manager/a/a;->u()Lcom/ipaynow/plugin/manager/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->E:Lcom/ipaynow/plugin/manager/a/a;

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

.method private b(Ljava/util/HashMap;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;
    .locals 3

    const-string v0, "responseCode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    sget-object v2, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_SUCCESS:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iput-object v2, v1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->status:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object v0, v1, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object p1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->mask:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
    invoke-static {p0, p1}, Lcom/ipaynow/plugin/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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


# virtual methods
.method public final varargs a([Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->C:Lcom/ipaynow/plugin/core/task/a;

    const-string v1, "\u67e5\u8be2\u4ea4\u6613\u7ed3\u679c..."

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/core/task/a;->d(Ljava/lang/String;)V

    aget-object v1, p1, v5

    invoke-static {}, Lcom/ipaynow/plugin/conf/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/core/task/a/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->d:I

    if-lt v0, v4, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_NET_TIME_OUT:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->status:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    sget-object v1, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_NET_TIME_OUT:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->getCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    const-string v1, "PE002"

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->errorCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    const-string v1, "\u7f51\u7edc\u901a\u8baf\u8d85\u65f6"

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->d:I

    mul-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Lcom/ipaynow/plugin/core/task/a/d;->a(I)V

    new-array v0, v6, [Ljava/lang/String;

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/core/task/a/d;->a([Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ipaynow/plugin/core/task/a/d;->E:Lcom/ipaynow/plugin/manager/a/a;

    invoke-static {v0, v6}, Lcom/ipaynow/plugin/utils/StringUtils;->parseFormString(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v2

    const-string v0, "responseCode"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "A002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "responseCode"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "A002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "responseMsg"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "responseMsg"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    sget-object v4, Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;->HANDLE_ERROR:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iput-object v4, v3, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->status:Lcom/ipaynow/plugin/conf/flags/BASIC_STATUS_CODE;

    iget-object v3, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object v0, v3, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    aget-object v3, v1, v5

    iput-object v3, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->errorCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    aget-object v1, v1, v6

    iput-object v1, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->respMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    iput-object v2, v0, Lcom/ipaynow/plugin/core/task/dto/TaskMessage;->mask:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->D:Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    goto :goto_0

    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    const-string v3, "A002"

    aput-object v3, v1, v5

    const-string v3, "\u672a\u77e5\u9519\u8bef"

    aput-object v3, v1, v6

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v0, "transStatus"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "A003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "A004"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->d:I

    if-lt v0, v4, :cond_5

    invoke-direct {p0, v3}, Lcom/ipaynow/plugin/core/task/a/d;->b(Ljava/util/HashMap;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0xc8

    invoke-static {v0}, Lcom/ipaynow/plugin/core/task/a/d;->a(I)V

    iget v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ipaynow/plugin/core/task/a/d;->d:I

    new-array v0, v6, [Ljava/lang/String;

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/core/task/a/d;->a([Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    :cond_6
    invoke-direct {p0, v3}, Lcom/ipaynow/plugin/core/task/a/d;->b(Ljava/util/HashMap;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    goto/16 :goto_0
.end method
