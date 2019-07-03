.class Lcom/game91/framework/impl/DelegateSdk$9$1$1;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Lcom/game91/framework/core/IHttp$CallLogin;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk$9$1;->call(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/game91/framework/impl/DelegateSdk$9$1;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk$9$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/game91/framework/impl/DelegateSdk$9$1;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$9$1$1;->this$2:Lcom/game91/framework/impl/DelegateSdk$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Lcom/game91/framework/http/UserBean;)V
    .locals 4
    .param p1, "userBean"    # Lcom/game91/framework/http/UserBean;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$9$1$1;->this$2:Lcom/game91/framework/impl/DelegateSdk$9$1;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$9$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$9;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$9;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$9$1$1;->this$2:Lcom/game91/framework/impl/DelegateSdk$9$1;

    iget-object v1, v1, Lcom/game91/framework/impl/DelegateSdk$9$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$9;

    iget-object v1, v1, Lcom/game91/framework/impl/DelegateSdk$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->hideLoginSuccessDialog(Landroid/app/Activity;)V

    .line 460
    invoke-virtual {p1}, Lcom/game91/framework/http/UserBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/game91/framework/http/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$9$1$1;->this$2:Lcom/game91/framework/impl/DelegateSdk$9$1;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$9$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$9;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$9;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk;->mSaveUser:Lcom/game91/framework/core/ISaveUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$9$1$1;->this$2:Lcom/game91/framework/impl/DelegateSdk$9$1;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$9$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$9;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$9;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk;->mSaveUser:Lcom/game91/framework/core/ISaveUser;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$9$1$1;->this$2:Lcom/game91/framework/impl/DelegateSdk$9$1;

    iget-object v1, v1, Lcom/game91/framework/impl/DelegateSdk$9$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$9;

    iget-object v1, v1, Lcom/game91/framework/impl/DelegateSdk$9;->val$activity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1}, Lcom/game91/framework/core/ISaveUser;->saveUser(Landroid/content/Context;Lcom/game91/framework/http/UserBean;)V

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u805a\u5408\u767b\u5f55\u6210\u529f    uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game91/framework/http/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "---token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game91/framework/http/UserBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$9$1$1;->this$2:Lcom/game91/framework/impl/DelegateSdk$9$1;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$9$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$9;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$9;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    new-instance v1, Lcom/game91/framework/callback/UserInfo;

    invoke-virtual {p1}, Lcom/game91/framework/http/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/game91/framework/http/UserBean;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/game91/framework/callback/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->access$502(Lcom/game91/framework/impl/DelegateSdk;Lcom/game91/framework/callback/UserInfo;)Lcom/game91/framework/callback/UserInfo;

    .line 464
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$9$1$1;->this$2:Lcom/game91/framework/impl/DelegateSdk$9$1;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$9$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$9;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$9;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/game91/framework/callback/Callback;->call(Ljava/lang/Object;)V

    .line 475
    :goto_0
    return-void

    .line 466
    :cond_1
    invoke-virtual {p1}, Lcom/game91/framework/http/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    const-string v0, "userId\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 469
    :cond_2
    invoke-virtual {p1}, Lcom/game91/framework/http/UserBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    const-string v0, "token\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 472
    :cond_3
    const-string v0, "\u805a\u5408\u767b\u5f55\u5931\u8d25"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$9$1$1;->this$2:Lcom/game91/framework/impl/DelegateSdk$9$1;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$9$1;->this$1:Lcom/game91/framework/impl/DelegateSdk$9;

    iget-object v0, v0, Lcom/game91/framework/impl/DelegateSdk$9;->val$onError:Lcom/game91/framework/callback/Callback;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "\u805a\u5408\u767b\u5f55\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/game91/framework/callback/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0
.end method
