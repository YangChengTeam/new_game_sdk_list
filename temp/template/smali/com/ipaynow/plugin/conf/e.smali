.class public final Lcom/ipaynow/plugin/conf/e;
.super Ljava/lang/Object;


# static fields
.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v4, ""

    const-string v3, ""

    const-string v2, ""

    const-string v1, ""

    const-string v0, ""

    :try_start_0
    const-string v5, "plugin_phone"

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v5, "IAU"

    invoke-static {v5}, Lcom/ipaynow/plugin/utils/NativeUtils;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "IAPU"

    invoke-static {v5}, Lcom/ipaynow/plugin/utils/NativeUtils;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "IATU"

    invoke-static {v5}, Lcom/ipaynow/plugin/utils/NativeUtils;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "IU"

    invoke-static {v5}, Lcom/ipaynow/plugin/utils/NativeUtils;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "ITU"

    invoke-static {v5}, Lcom/ipaynow/plugin/utils/NativeUtils;->getContent(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sput-object v4, Lcom/ipaynow/plugin/conf/e;->l:Ljava/lang/String;

    sput-object v2, Lcom/ipaynow/plugin/conf/e;->n:Ljava/lang/String;

    sput-object v3, Lcom/ipaynow/plugin/conf/e;->m:Ljava/lang/String;

    sput-object v1, Lcom/ipaynow/plugin/conf/e;->j:Ljava/lang/String;

    sput-object v0, Lcom/ipaynow/plugin/conf/e;->k:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v5

    const-string v5, "ipaynow error"

    const-string v6, "\u83b7\u53d6\u670d\u52a1\u5668\u5730\u5740\u5931\u8d25"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/ipaynow/plugin/conf/c;->g:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/ipaynow/plugin/conf/e;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ipaynow/plugin/conf/e;->l:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ipaynow/plugin/conf/e;->m:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ipaynow/plugin/conf/e;->n:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/ipaynow/plugin/conf/c;->g:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "https://pay.ipaynow.cn/sdk/syncException"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "https://pay.ipaynow.cn/sdk/syncException"

    goto :goto_0

    :pswitch_1
    const-string v0, "https://pay.ipaynow.cn/api_release/sdk/syncException"

    goto :goto_0

    :pswitch_2
    const-string v0, "https://p.ipaynow.cn/api/payment/sdk/syncException"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/ipaynow/plugin/conf/c;->g:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/ipaynow/plugin/conf/e;->j:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ipaynow/plugin/conf/e;->j:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ipaynow/plugin/conf/e;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
