.class Lcom/game/sdk/FYGameSDK$LoginTask;
.super Landroid/os/AsyncTask;
.source "FYGameSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/FYGameSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/game/sdk/domain/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/FYGameSDK;


# direct methods
.method private constructor <init>(Lcom/game/sdk/FYGameSDK;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK$LoginTask;->this$0:Lcom/game/sdk/FYGameSDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/game/sdk/FYGameSDK;Lcom/game/sdk/FYGameSDK$LoginTask;)V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/game/sdk/FYGameSDK$LoginTask;-><init>(Lcom/game/sdk/FYGameSDK;)V

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/FYGameSDK$LoginTask;)Lcom/game/sdk/FYGameSDK;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK$LoginTask;->this$0:Lcom/game/sdk/FYGameSDK;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 453
    new-instance v0, Lcom/game/sdk/engin/LoginEngin;

    iget-object v1, p0, Lcom/game/sdk/FYGameSDK$LoginTask;->this$0:Lcom/game/sdk/FYGameSDK;

    invoke-static {v1}, Lcom/game/sdk/FYGameSDK;->access$0(Lcom/game/sdk/FYGameSDK;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/game/sdk/engin/LoginEngin;-><init>(Landroid/content/Context;)V

    .line 454
    .local v0, "loginEngin":Lcom/game/sdk/engin/LoginEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/LoginEngin;->run()Lcom/game/sdk/domain/LoginResult;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/FYGameSDK$LoginTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/LoginResult;)V
    .locals 6
    .param p1, "loginResult"    # Lcom/game/sdk/domain/LoginResult;

    .prologue
    const/4 v5, 0x0

    .line 459
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 461
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK$LoginTask;->this$0:Lcom/game/sdk/FYGameSDK;

    invoke-static {v2}, Lcom/game/sdk/FYGameSDK;->access$1(Lcom/game/sdk/FYGameSDK;)Lcom/game/sdk/view/LoginInDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/game/sdk/FYGameSDK$LoginTask;->this$0:Lcom/game/sdk/FYGameSDK;

    invoke-static {v2}, Lcom/game/sdk/FYGameSDK;->access$1(Lcom/game/sdk/FYGameSDK;)Lcom/game/sdk/view/LoginInDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/view/LoginInDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK$LoginTask;->this$0:Lcom/game/sdk/FYGameSDK;

    invoke-static {v2}, Lcom/game/sdk/FYGameSDK;->access$1(Lcom/game/sdk/FYGameSDK;)Lcom/game/sdk/view/LoginInDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/view/LoginInDialog;->dismiss()V

    .line 464
    :cond_0
    sget-boolean v2, Lcom/game/sdk/domain/GoagalInfo;->isChangeAccount:Z

    if-nez v2, :cond_2

    .line 465
    iget-boolean v2, p1, Lcom/game/sdk/domain/LoginResult;->result:Z

    if-eqz v2, :cond_4

    .line 466
    const-string v2, "\u767b\u5f55\u6210\u529f----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 467
    const/4 v2, 0x1

    sput-boolean v2, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 470
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 471
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 472
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    .line 473
    new-instance v2, Lcom/game/sdk/FYGameSDK$ReInitInfoTaskByUserId;

    iget-object v3, p0, Lcom/game/sdk/FYGameSDK$LoginTask;->this$0:Lcom/game/sdk/FYGameSDK;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/game/sdk/FYGameSDK$ReInitInfoTaskByUserId;-><init>(Lcom/game/sdk/FYGameSDK;Lcom/game/sdk/FYGameSDK$ReInitInfoTaskByUserId;)V

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/game/sdk/FYGameSDK$ReInitInfoTaskByUserId;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 477
    :cond_1
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 478
    new-instance v1, Lcom/game/sdk/view/AutoNoticeDialog;

    iget-object v2, p0, Lcom/game/sdk/FYGameSDK$LoginTask;->this$0:Lcom/game/sdk/FYGameSDK;

    invoke-static {v2}, Lcom/game/sdk/FYGameSDK;->access$0(Lcom/game/sdk/FYGameSDK;)Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/game/sdk/view/AutoNoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 479
    .local v1, "noticeDialog":Lcom/game/sdk/view/AutoNoticeDialog;
    invoke-virtual {v1}, Lcom/game/sdk/view/AutoNoticeDialog;->show()V

    .line 480
    new-instance v2, Lcom/game/sdk/FYGameSDK$LoginTask$1;

    invoke-direct {v2, p0}, Lcom/game/sdk/FYGameSDK$LoginTask$1;-><init>(Lcom/game/sdk/FYGameSDK$LoginTask;)V

    invoke-virtual {v1, v2}, Lcom/game/sdk/view/AutoNoticeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 498
    .end local v1    # "noticeDialog":Lcom/game/sdk/view/AutoNoticeDialog;
    :cond_2
    :goto_0
    return-void

    .line 488
    :cond_3
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK$LoginTask;->this$0:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v2}, Lcom/game/sdk/FYGameSDK;->loginSuccess()V

    goto :goto_0

    .line 491
    :cond_4
    sput-boolean v5, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 492
    const-string v2, "\u767b\u5f55\u5931\u8d25----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 493
    new-instance v0, Lcom/game/sdk/domain/LoginErrorMsg;

    const/4 v3, -0x1

    .line 494
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "\u8d26\u53f7\u6216\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5"

    .line 493
    :goto_1
    invoke-direct {v0, v3, v2}, Lcom/game/sdk/domain/LoginErrorMsg;-><init>(ILjava/lang/String;)V

    .line 495
    .local v0, "loginErrorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v0}, Lcom/game/sdk/domain/OnLoginListener;->loginError(Lcom/game/sdk/domain/LoginErrorMsg;)V

    goto :goto_0

    .line 494
    .end local v0    # "loginErrorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    :cond_5
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/LoginResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/FYGameSDK$LoginTask;->onPostExecute(Lcom/game/sdk/domain/LoginResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 448
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 449
    return-void
.end method
