.class Lcom/game91/framework/impl/DelegateSdk$3;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Lcom/game91/framework/core/IHttp$CallError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk;->checkUpdate(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/impl/DelegateSdk;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$onError:Lcom/game91/framework/callback/Callback;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/impl/DelegateSdk;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$3;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iput-object p2, p0, Lcom/game91/framework/impl/DelegateSdk$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game91/framework/impl/DelegateSdk$3;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u76d1\u6d4b\u66f4\u65b0\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$3;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->hideSplash(Landroid/app/Activity;)V

    .line 308
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$3;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->hideInitDialog(Landroid/app/Activity;)V

    .line 309
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$3;->val$onError:Lcom/game91/framework/callback/Callback;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/game91/framework/callback/Callback;->call(Ljava/lang/Object;)V

    .line 310
    return-void
.end method
