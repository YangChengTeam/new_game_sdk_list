.class public final Lcom/alipay/sdk/e/a/b;
.super Lcom/alipay/sdk/e/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/sdk/e/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lorg/json/JSONObject;
    .locals 2

    const-string v0, "sdkConfig"

    const-string v1, "obtain"

    invoke-static {v0, v1}, Lcom/alipay/sdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "5.0.0"

    return-object v0
.end method