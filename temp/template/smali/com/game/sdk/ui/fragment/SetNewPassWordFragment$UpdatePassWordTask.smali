.class Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;
.super Landroid/os/AsyncTask;
.source "SetNewPassWordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdatePassWordTask"
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
.field newPassWord:Ljava/lang/String;

.field oldPassWord:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "oldPassWord"    # Ljava/lang/String;
    .param p4, "newPassWord"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 156
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;->userName:Ljava/lang/String;

    .line 157
    iput-object p3, p0, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;->oldPassWord:Ljava/lang/String;

    .line 158
    iput-object p4, p0, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;->newPassWord:Ljava/lang/String;

    .line 159
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/UpdateInfoResult;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;

    new-instance v1, Lcom/game/sdk/engin/UpdatePassWordEngin;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;->access$0(Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;)Lcom/game/sdk/ui/LoginActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;->userName:Ljava/lang/String;

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;->oldPassWord:Ljava/lang/String;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;->newPassWord:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/game/sdk/engin/UpdatePassWordEngin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;->access$1(Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;Lcom/game/sdk/engin/UpdatePassWordEngin;)V

    .line 169
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;->access$2(Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;)Lcom/game/sdk/engin/UpdatePassWordEngin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/engin/UpdatePassWordEngin;->run()Lcom/game/sdk/domain/UpdateInfoResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/UpdateInfoResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/UpdateInfoResult;)V
    .locals 2
    .param p1, "updateInfoResult"    # Lcom/game/sdk/domain/UpdateInfoResult;

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 176
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/game/sdk/domain/UpdateInfoResult;->result:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;->access$0(Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;)Lcom/game/sdk/ui/LoginActivity;

    move-result-object v0

    const-string v1, "\u4fee\u6539\u5bc6\u7801\u6210\u529f"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;->access$0(Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;)Lcom/game/sdk/ui/LoginActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;->access$0(Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;)Lcom/game/sdk/ui/LoginActivity;

    move-result-object v0

    const-string v1, "\u4fee\u6539\u5bc6\u7801\u5931\u8d25,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/UpdateInfoResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment$UpdatePassWordTask;->onPostExecute(Lcom/game/sdk/domain/UpdateInfoResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 164
    return-void
.end method
