.class Lcom/game91/framework/impl/DelegateSdk$13$1;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Lcom/game91/framework/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/game91/framework/callback/Callback",
        "<",
        "Lcom/game91/framework/callback/OrderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game91/framework/impl/DelegateSdk$13;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/game91/framework/impl/DelegateSdk$13;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$13$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/game91/framework/callback/OrderInfo;)V
    .locals 6
    .param p1, "orderInfo"    # Lcom/game91/framework/callback/OrderInfo;

    .prologue
    .line 575
    invoke-static {}, Lcom/game91/framework/HttpManager;->api()Lcom/game91/framework/core/IHttp;

    move-result-object v0

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$13$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$13;

    iget-object v1, v1, Lcom/game91/framework/impl/DelegateSdk$13;->val$payInfo:Lcom/game91/framework/callback/PayInfo;

    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$13$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$13;

    iget-object v2, v2, Lcom/game91/framework/impl/DelegateSdk$13;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    invoke-virtual {v2}, Lcom/game91/framework/impl/DelegateSdk;->getChannelOrderInfo()Ljava/util/Map;

    move-result-object v2

    const-string v3, "channelOrderHeader"

    invoke-static {v3}, Lcom/game91/framework/impl/TagUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    new-instance v4, Lcom/game91/framework/impl/DelegateSdk$13$1$1;

    invoke-direct {v4, p0, p1}, Lcom/game91/framework/impl/DelegateSdk$13$1$1;-><init>(Lcom/game91/framework/impl/DelegateSdk$13$1;Lcom/game91/framework/callback/OrderInfo;)V

    new-instance v5, Lcom/game91/framework/impl/DelegateSdk$13$1$2;

    invoke-direct {v5, p0}, Lcom/game91/framework/impl/DelegateSdk$13$1$2;-><init>(Lcom/game91/framework/impl/DelegateSdk$13$1;)V

    invoke-interface/range {v0 .. v5}, Lcom/game91/framework/core/IHttp;->notify(Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallString;Lcom/game91/framework/core/IHttp$CallError;)V

    .line 588
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 572
    check-cast p1, Lcom/game91/framework/callback/OrderInfo;

    invoke-virtual {p0, p1}, Lcom/game91/framework/impl/DelegateSdk$13$1;->call(Lcom/game91/framework/callback/OrderInfo;)V

    return-void
.end method
