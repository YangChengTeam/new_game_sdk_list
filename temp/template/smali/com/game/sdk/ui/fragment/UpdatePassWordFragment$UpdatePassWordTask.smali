.class Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;
.super Landroid/os/AsyncTask;
.source "UpdatePassWordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;
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

.field final synthetic this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "oldPassWord"    # Ljava/lang/String;
    .param p4, "newPassWord"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 155
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->userName:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->oldPassWord:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->newPassWord:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/UpdateInfoResult;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    new-instance v1, Lcom/game/sdk/engin/UpdatePassWordEngin;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    invoke-static {v2}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->access$0(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->userName:Ljava/lang/String;

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->oldPassWord:Ljava/lang/String;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->newPassWord:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/game/sdk/engin/UpdatePassWordEngin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->access$1(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;Lcom/game/sdk/engin/UpdatePassWordEngin;)V

    .line 168
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->access$2(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Lcom/game/sdk/engin/UpdatePassWordEngin;

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

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/UpdateInfoResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/UpdateInfoResult;)V
    .locals 2
    .param p1, "updateInfoResult"    # Lcom/game/sdk/domain/UpdateInfoResult;

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 175
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/game/sdk/domain/UpdateInfoResult;->result:Z

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->access$0(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    iget-object v0, p1, Lcom/game/sdk/domain/UpdateInfoResult;->pointMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/game/sdk/domain/UpdateInfoResult;->pointMessage:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->access$0(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 181
    :goto_1
    return-void

    .line 176
    :cond_0
    const-string v0, "\u4fee\u6539\u5bc6\u7801\u6210\u529f"

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->access$0(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v0

    const-string v1, "\u4fee\u6539\u5bc6\u7801\u5931\u8d25,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/UpdateInfoResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->onPostExecute(Lcom/game/sdk/domain/UpdateInfoResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 163
    return-void
.end method
