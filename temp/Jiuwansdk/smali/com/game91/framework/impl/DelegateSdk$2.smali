.class Lcom/game91/framework/impl/DelegateSdk$2;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Lcom/game91/framework/core/IHttp$CallInit;


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

.field final synthetic val$onSuccess:Lcom/game91/framework/callback/Callback;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/impl/DelegateSdk;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$2;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iput-object p2, p0, Lcom/game91/framework/impl/DelegateSdk$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game91/framework/impl/DelegateSdk$2;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iput-object p4, p0, Lcom/game91/framework/impl/DelegateSdk$2;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Lcom/game91/framework/http/InitBean;)V
    .locals 4
    .param p1, "initBean"    # Lcom/game91/framework/http/InitBean;

    .prologue
    .line 262
    const-string v0, "\u7ed3\u675f\u68c0\u67e5\u6e38\u620f\u66f4\u65b0"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$2;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk;->hideInitDialog(Landroid/app/Activity;)V

    .line 264
    invoke-virtual {p1}, Lcom/game91/framework/http/InitBean;->switchLogin()Z

    move-result v0

    sput-boolean v0, Lcom/game91/framework/impl/InitConfig;->sSwitchLogin:Z

    .line 279
    invoke-virtual {p1}, Lcom/game91/framework/http/InitBean;->getVersionCode()I

    move-result v0

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$2;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game91/framework/util/DeviceUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 280
    const-string v0, "\u53d1\u73b0\u4e86\u4e00\u4e2a\u65b0\u7248\u672c"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672c\u5730\u6e38\u620f\u7248\u672c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$2;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game91/framework/util/DeviceUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "---\u6700\u65b0\u6e38\u620f\u7248\u672c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    invoke-virtual {p1}, Lcom/game91/framework/http/InitBean;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u662f\u5426\u4e3a\u5f3a\u5236\u66f4\u65b0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game91/framework/http/InitBean;->isForceUpdate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 284
    new-instance v0, Lcom/game91/framework/dialog/UpdateDialog;

    invoke-direct {v0}, Lcom/game91/framework/dialog/UpdateDialog;-><init>()V

    .line 285
    invoke-virtual {p1}, Lcom/game91/framework/http/InitBean;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game91/framework/dialog/UpdateDialog;->setName(Ljava/lang/String;)Lcom/game91/framework/dialog/UpdateDialog;

    move-result-object v0

    .line 286
    invoke-virtual {p1}, Lcom/game91/framework/http/InitBean;->isForceUpdate()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/game91/framework/dialog/UpdateDialog;->setForce(Z)Lcom/game91/framework/dialog/UpdateDialog;

    move-result-object v0

    .line 287
    invoke-virtual {p1}, Lcom/game91/framework/http/InitBean;->getUpdateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/game91/framework/http/InitBean;->getVersionCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/game91/framework/dialog/UpdateDialog;->setFileInfo(Ljava/lang/String;I)Lcom/game91/framework/dialog/UpdateDialog;

    move-result-object v0

    .line 288
    invoke-virtual {p1}, Lcom/game91/framework/http/InitBean;->getUpdateInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/game91/framework/http/InitBean;->getUpdateFileSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/game91/framework/dialog/UpdateDialog;->setInfo(Ljava/lang/String;J)Lcom/game91/framework/dialog/UpdateDialog;

    move-result-object v0

    new-instance v1, Lcom/game91/framework/impl/DelegateSdk$2$1;

    invoke-direct {v1, p0, p1}, Lcom/game91/framework/impl/DelegateSdk$2$1;-><init>(Lcom/game91/framework/impl/DelegateSdk$2;Lcom/game91/framework/http/InitBean;)V

    .line 289
    invoke-virtual {v0, v1}, Lcom/game91/framework/dialog/UpdateDialog;->setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/game91/framework/dialog/UpdateDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 295
    invoke-virtual {v0, v1}, Lcom/game91/framework/dialog/UpdateDialog;->setCanCancelable(Z)Lcom/game91/framework/dialog/DialogWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$2;->val$activity:Landroid/app/Activity;

    .line 296
    invoke-virtual {v0, v1}, Lcom/game91/framework/dialog/DialogWindow;->show(Landroid/app/Activity;)Lcom/game91/framework/dialog/DialogWindow;

    .line 301
    :goto_0
    return-void

    .line 298
    :cond_0
    const-string v0, "\u6e38\u620f\u65e0\u66f4\u65b0,\u5f00\u59cb\u76d1\u6d4b\u662f\u5426\u6709\u516c\u544a"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk$2;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game91/framework/impl/DelegateSdk$2;->val$onSuccess:Lcom/game91/framework/callback/Callback;

    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk$2;->val$onError:Lcom/game91/framework/callback/Callback;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/game91/framework/impl/DelegateSdk;->access$200(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/http/InitBean;)V

    goto :goto_0
.end method
