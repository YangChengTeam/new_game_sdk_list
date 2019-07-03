.class Lcom/game91/framework/impl/DelegateSdk$1;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk;->doInit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
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


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/impl/DelegateSdk;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$1;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iput-object p2, p0, Lcom/game91/framework/impl/DelegateSdk$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game91/framework/impl/DelegateSdk$1;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iput-object p4, p0, Lcom/game91/framework/impl/DelegateSdk$1;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$1;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->showSplash(Landroid/app/Activity;)V

    .line 202
    const-string v0, "\u663e\u793a\u521d\u59cb\u5316\u5bf9\u8bdd\u6846"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$1;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->showInitDialog(Landroid/app/Activity;)V

    .line 205
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$1;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    invoke-static {v0}, Lcom/game91/framework/impl/DelegateSdk;->access$000(Lcom/game91/framework/impl/DelegateSdk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$1;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$1;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk$1;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-static {v0, v1, v2, v3}, Lcom/game91/framework/impl/DelegateSdk;->access$100(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    .line 222
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$1;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk;->mInitImpl:Lcom/game91/framework/core/IInit;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$1;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/game91/framework/impl/DelegateSdk$1$1;

    invoke-direct {v2, p0}, Lcom/game91/framework/impl/DelegateSdk$1$1;-><init>(Lcom/game91/framework/impl/DelegateSdk$1;)V

    new-instance v3, Lcom/game91/framework/impl/DelegateSdk$1$2;

    invoke-direct {v3, p0}, Lcom/game91/framework/impl/DelegateSdk$1$2;-><init>(Lcom/game91/framework/impl/DelegateSdk$1;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/game91/framework/core/IInit;->doInit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    goto :goto_0
.end method
