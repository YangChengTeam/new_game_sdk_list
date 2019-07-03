.class Lcom/game91/framework/impl/DelegateSdk$9;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk;->doLogin(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
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
    .line 447
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$9;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iput-object p2, p0, Lcom/game91/framework/impl/DelegateSdk$9;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game91/framework/impl/DelegateSdk$9;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iput-object p4, p0, Lcom/game91/framework/impl/DelegateSdk$9;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 450
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$9;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    invoke-virtual {v0}, Lcom/game91/framework/impl/DelegateSdk;->interceptLoginEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const-string v0, "\u5f00\u59cb\u6267\u884c\u805a\u5408\u767b\u5f55"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$9;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->showLoginSuccessDialog(Landroid/app/Activity;)V

    .line 453
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$9;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk;->mUserImpl:Lcom/game91/framework/core/ILogin;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$9;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/game91/framework/impl/DelegateSdk$9$1;

    invoke-direct {v2, p0}, Lcom/game91/framework/impl/DelegateSdk$9$1;-><init>(Lcom/game91/framework/impl/DelegateSdk$9;)V

    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk$9;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-interface {v0, v1, v2, v3}, Lcom/game91/framework/core/ILogin;->doLogin(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    .line 490
    :goto_0
    return-void

    .line 487
    :cond_0
    const-string v0, "\u5f00\u59cb\u6267\u884cMgGameSdk\u767b\u5f55"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$9;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk;->mUserImpl:Lcom/game91/framework/core/ILogin;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$9;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$9;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk$9;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-interface {v0, v1, v2, v3}, Lcom/game91/framework/core/ILogin;->doLogin(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    goto :goto_0
.end method
