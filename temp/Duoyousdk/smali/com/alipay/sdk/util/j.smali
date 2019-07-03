.class public final Lcom/alipay/sdk/util/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/sdk/app/EnvUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://mobilegw.alipaydev.com/mgw.htm"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p0, :cond_2

    sget-object v0, Lcom/alipay/sdk/a/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/sdk/a/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/alipay/sdk/a/a;->a:Ljava/lang/String;

    goto :goto_0
.end method
