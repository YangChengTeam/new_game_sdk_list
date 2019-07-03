.class Lcom/game91/framework/impl/DelegateSdk$13$1$2;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Lcom/game91/framework/core/IHttp$CallError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk$13$1;->call(Lcom/game91/framework/callback/OrderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/game91/framework/impl/DelegateSdk$13$1;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk$13$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/game91/framework/impl/DelegateSdk$13$1;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$13$1$2;->this$2:Lcom/game91/framework/impl/DelegateSdk$13$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$13$1$2;->this$2:Lcom/game91/framework/impl/DelegateSdk$13$1;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$13$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$13;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$13;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$13$1$2;->this$2:Lcom/game91/framework/impl/DelegateSdk$13$1;

    iget-object v1, v1, Lcom/game91/framework/impl/DelegateSdk$13$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$13;

    iget-object v1, v1, Lcom/game91/framework/impl/DelegateSdk$13;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->hideOrderNotifyDialog(Landroid/app/Activity;)V

    .line 585
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$13$1$2;->this$2:Lcom/game91/framework/impl/DelegateSdk$13$1;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$13$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$13;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$13;->val$onError:Lcom/game91/framework/callback/Callback;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/game91/framework/callback/Callback;->call(Ljava/lang/Object;)V

    .line 586
    return-void
.end method
