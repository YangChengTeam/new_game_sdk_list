.class Lcom/game91/framework/impl/DelegateSdk$13;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk;->pay1(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/impl/DelegateSdk;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$extra:Ljava/util/Map;

.field final synthetic val$onError:Lcom/game91/framework/callback/Callback;

.field final synthetic val$onSuccess:Lcom/game91/framework/callback/Callback;

.field final synthetic val$payInfo:Lcom/game91/framework/callback/PayInfo;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/impl/DelegateSdk;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$13;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iput-object p2, p0, Lcom/game91/framework/impl/DelegateSdk$13;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game91/framework/impl/DelegateSdk$13;->val$payInfo:Lcom/game91/framework/callback/PayInfo;

    iput-object p4, p0, Lcom/game91/framework/impl/DelegateSdk$13;->val$extra:Ljava/util/Map;

    iput-object p5, p0, Lcom/game91/framework/impl/DelegateSdk$13;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iput-object p6, p0, Lcom/game91/framework/impl/DelegateSdk$13;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 569
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$13;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    invoke-virtual {v0}, Lcom/game91/framework/impl/DelegateSdk;->interceptOrderEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    const-string v0, "\u652f\u4ed8\u5b8c\u6210\u540e\u9700\u8981\u8bf7\u6c42\u670d\u52a1\u5668\u5224\u65ad\u8ba2\u5355\u662f\u5426\u5b8c\u6210"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$13;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$13;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->showOrderNotifyDialog(Landroid/app/Activity;)V

    .line 572
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$13;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk;->mPayImpl:Lcom/game91/framework/core/IPayChannel;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$13;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$13;->val$payInfo:Lcom/game91/framework/callback/PayInfo;

    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk$13;->val$extra:Ljava/util/Map;

    new-instance v4, Lcom/game91/framework/impl/DelegateSdk$13$1;

    invoke-direct {v4, p0}, Lcom/game91/framework/impl/DelegateSdk$13$1;-><init>(Lcom/game91/framework/impl/DelegateSdk$13;)V

    iget-object v5, p0, Lcom/game91/framework/impl/DelegateSdk$13;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-interface/range {v0 .. v5}, Lcom/game91/framework/core/IPayChannel;->pay1(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    .line 593
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$13;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk;->mPayImpl:Lcom/game91/framework/core/IPayChannel;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$13;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$13;->val$payInfo:Lcom/game91/framework/callback/PayInfo;

    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk$13;->val$extra:Ljava/util/Map;

    iget-object v4, p0, Lcom/game91/framework/impl/DelegateSdk$13;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iget-object v5, p0, Lcom/game91/framework/impl/DelegateSdk$13;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-interface/range {v0 .. v5}, Lcom/game91/framework/core/IPayChannel;->pay1(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    goto :goto_0
.end method
