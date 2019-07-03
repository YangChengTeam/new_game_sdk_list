.class Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;
.super Landroid/os/AsyncTask;
.source "UserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/UserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAvaterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/game/sdk/domain/UpdateInfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/UserInfoActivity;

.field public updateUserInfo:Lcom/game/sdk/domain/UserInfo;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/UserInfoActivity;Lcom/game/sdk/domain/UserInfo;)V
    .locals 0
    .param p2, "uUserInfo"    # Lcom/game/sdk/domain/UserInfo;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 491
    iput-object p2, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    .line 492
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/UpdateInfoResult;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 501
    new-instance v0, Lcom/game/sdk/engin/UpdateAvaterEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/engin/UpdateAvaterEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 502
    .local v0, "acaterEngin":Lcom/game/sdk/engin/UpdateAvaterEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/UpdateAvaterEngin;->updateUserAvater()Lcom/game/sdk/domain/UpdateInfoResult;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/UpdateInfoResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/UpdateInfoResult;)V
    .locals 3
    .param p1, "updateInfoResult"    # Lcom/game/sdk/domain/UpdateInfoResult;

    .prologue
    .line 507
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 508
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/UserInfoActivity;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 509
    if-eqz p1, :cond_0

    iget-boolean v1, p1, Lcom/game/sdk/domain/UpdateInfoResult;->result:Z

    if-eqz v1, :cond_0

    .line 512
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 513
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 514
    iget-object v1, p1, Lcom/game/sdk/domain/UpdateInfoResult;->pointMessage:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 515
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v1}, Lcom/game/sdk/ui/UserInfoActivity;->access$18(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 517
    const-string v1, "\u4fee\u6539\u7528\u6237\u4fe1\u606f\u6210\u529f----"

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 522
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    const-string v2, "\u4fee\u6539\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 520
    const-string v1, "\u4fee\u6539\u7528\u6237\u4fe1\u606f\u5931\u8d25----"

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/UpdateInfoResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->onPostExecute(Lcom/game/sdk/domain/UpdateInfoResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 496
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 497
    return-void
.end method
