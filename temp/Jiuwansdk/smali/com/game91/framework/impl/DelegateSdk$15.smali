.class Lcom/game91/framework/impl/DelegateSdk$15;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk;->doPay(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/impl/DelegateSdk;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$onError:Lcom/game91/framework/callback/Callback;

.field final synthetic val$onSuccess:Lcom/game91/framework/callback/Callback;

.field final synthetic val$payInfo:Lcom/game91/framework/callback/PayInfo;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk;Lcom/game91/framework/callback/PayInfo;Lcom/game91/framework/callback/Callback;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/impl/DelegateSdk;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$15;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iput-object p2, p0, Lcom/game91/framework/impl/DelegateSdk$15;->val$payInfo:Lcom/game91/framework/callback/PayInfo;

    iput-object p3, p0, Lcom/game91/framework/impl/DelegateSdk$15;->val$onError:Lcom/game91/framework/callback/Callback;

    iput-object p4, p0, Lcom/game91/framework/impl/DelegateSdk$15;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/game91/framework/impl/DelegateSdk$15;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 654
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$15;->val$payInfo:Lcom/game91/framework/callback/PayInfo;

    invoke-virtual {v0}, Lcom/game91/framework/callback/PayInfo;->canPay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u805a\u5408\u652f\u4ed8\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$15;->val$payInfo:Lcom/game91/framework/callback/PayInfo;

    invoke-virtual {v1}, Lcom/game91/framework/callback/PayInfo;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$15;->val$onError:Lcom/game91/framework/callback/Callback;

    new-instance v1, Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$15;->val$payInfo:Lcom/game91/framework/callback/PayInfo;

    invoke-virtual {v2}, Lcom/game91/framework/callback/PayInfo;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/game91/framework/callback/Callback;->call(Ljava/lang/Object;)V

    .line 701
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$15;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$15;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->showPayDialog(Landroid/app/Activity;)V

    .line 660
    invoke-static {}, Lcom/game91/framework/HttpManager;->api()Lcom/game91/framework/core/IHttp;

    move-result-object v0

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$15;->val$payInfo:Lcom/game91/framework/callback/PayInfo;

    invoke-virtual {v1}, Lcom/game91/framework/callback/PayInfo;->hashMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$15;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    invoke-virtual {v2}, Lcom/game91/framework/impl/DelegateSdk;->getChannelPayInfo()Ljava/util/Map;

    move-result-object v2

    const-string v3, "channelPayHeader"

    invoke-static {v3}, Lcom/game91/framework/impl/TagUtils;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    new-instance v4, Lcom/game91/framework/impl/DelegateSdk$15$1;

    invoke-direct {v4, p0}, Lcom/game91/framework/impl/DelegateSdk$15$1;-><init>(Lcom/game91/framework/impl/DelegateSdk$15;)V

    new-instance v5, Lcom/game91/framework/impl/DelegateSdk$15$2;

    invoke-direct {v5, p0}, Lcom/game91/framework/impl/DelegateSdk$15$2;-><init>(Lcom/game91/framework/impl/DelegateSdk$15;)V

    invoke-interface/range {v0 .. v5}, Lcom/game91/framework/core/IHttp;->pay(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallPay;Lcom/game91/framework/core/IHttp$CallError;)V

    goto :goto_0
.end method
