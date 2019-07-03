.class Lcom/game91/framework/impl/DelegateSdk$15$2;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Lcom/game91/framework/core/IHttp$CallError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game91/framework/impl/DelegateSdk$15;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/game91/framework/impl/DelegateSdk$15;

    .prologue
    .line 693
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$15$2;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 696
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$15$2;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$15;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$15$2;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v1, v1, Lcom/game91/framework/impl/DelegateSdk$15;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->hidePayDialog(Landroid/app/Activity;)V

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MgGameSdk\u805a\u5408\u652f\u4ed8\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$15$2;->this$1:Lcom/game91/framework/impl/DelegateSdk$15;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$15;->val$onError:Lcom/game91/framework/callback/Callback;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/game91/framework/callback/Callback;->call(Ljava/lang/Object;)V

    .line 699
    return-void
.end method
