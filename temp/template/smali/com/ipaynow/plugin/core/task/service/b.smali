.class public final Lcom/ipaynow/plugin/core/task/service/b;
.super Lcom/ipaynow/plugin/core/task/service/a;


# static fields
.field private static synthetic G:[I


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/core/task/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/core/task/service/a;-><init>(Lcom/ipaynow/plugin/core/task/a;)V

    return-void
.end method

.method private static synthetic p()[I
    .locals 3

    sget-object v0, Lcom/ipaynow/plugin/core/task/service/b;->G:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->values()[Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ALIPAYISV_SK:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->EXCEPTION_SK:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ORDER_INIT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->PREPAY_TRANS:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->QUERY_SK001_RESULT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->QUERY_TRADE_RESULT:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->UNKNOWN_FUNCODE:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->VOUCHER_GET:Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/ipaynow/plugin/core/task/service/b;->G:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final varargs doWork(Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;[Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;
    .locals 2

    invoke-static {}, Lcom/ipaynow/plugin/core/task/service/b;->p()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/ipaynow/plugin/conf/code/FUNCODE_CODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "\u672a\u77e5FUNCTION"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/ipaynow/plugin/core/task/a/a;

    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/service/b;->C:Lcom/ipaynow/plugin/core/task/a;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/core/task/a/a;-><init>(Lcom/ipaynow/plugin/core/task/a;)V

    :goto_1
    invoke-interface {v0, p2}, Lcom/ipaynow/plugin/core/task/a/a/a;->a([Ljava/lang/String;)Lcom/ipaynow/plugin/core/task/dto/TaskMessage;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/ipaynow/plugin/core/task/a/c;

    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/service/b;->C:Lcom/ipaynow/plugin/core/task/a;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/core/task/a/c;-><init>(Lcom/ipaynow/plugin/core/task/a;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/ipaynow/plugin/core/task/a/f;

    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/service/b;->C:Lcom/ipaynow/plugin/core/task/a;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/core/task/a/f;-><init>(Lcom/ipaynow/plugin/core/task/a;)V

    goto :goto_1

    :pswitch_4
    new-instance v0, Lcom/ipaynow/plugin/core/task/a/e;

    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/service/b;->C:Lcom/ipaynow/plugin/core/task/a;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/core/task/a/e;-><init>(Lcom/ipaynow/plugin/core/task/a;)V

    goto :goto_1

    :pswitch_5
    new-instance v0, Lcom/ipaynow/plugin/core/task/a/d;

    iget-object v1, p0, Lcom/ipaynow/plugin/core/task/service/b;->C:Lcom/ipaynow/plugin/core/task/a;

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/core/task/a/d;-><init>(Lcom/ipaynow/plugin/core/task/a;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
