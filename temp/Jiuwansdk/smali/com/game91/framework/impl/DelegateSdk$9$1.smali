.class Lcom/game91/framework/impl/DelegateSdk$9$1;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Lcom/game91/framework/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk$9;->run()V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game91/framework/impl/DelegateSdk$9;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/game91/framework/impl/DelegateSdk$9;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$9$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 456
    invoke-static {}, Lcom/game91/framework/HttpManager;->api()Lcom/game91/framework/core/IHttp;

    move-result-object v1

    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$9$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$9;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$9;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    invoke-virtual {v0}, Lcom/game91/framework/impl/DelegateSdk;->getChannelLoginInfo()Ljava/util/Map;

    move-result-object v2

    const-string v0, "channelLoginHeader"

    invoke-static {v0}, Lcom/game91/framework/impl/TagUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v3, Lcom/game91/framework/impl/DelegateSdk$9$1$1;

    invoke-direct {v3, p0}, Lcom/game91/framework/impl/DelegateSdk$9$1$1;-><init>(Lcom/game91/framework/impl/DelegateSdk$9$1;)V

    new-instance v4, Lcom/game91/framework/impl/DelegateSdk$9$1$2;

    invoke-direct {v4, p0}, Lcom/game91/framework/impl/DelegateSdk$9$1$2;-><init>(Lcom/game91/framework/impl/DelegateSdk$9$1;)V

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/game91/framework/core/IHttp;->login(Ljava/util/Map;Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallLogin;Lcom/game91/framework/core/IHttp$CallError;)V

    .line 484
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 453
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/game91/framework/impl/DelegateSdk$9$1;->call(Ljava/lang/Integer;)V

    return-void
.end method
