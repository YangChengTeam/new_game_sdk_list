.class Lcom/game/sdk/ui/UserInfoActivity$UpdateUserBirthTask;
.super Landroid/os/AsyncTask;
.source "UserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/UserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateUserBirthTask"
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

.field uInfo:Lcom/game/sdk/domain/UserInfo;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/UserInfoActivity;Lcom/game/sdk/domain/UserInfo;)V
    .locals 0
    .param p2, "uInfo"    # Lcom/game/sdk/domain/UserInfo;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateUserBirthTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateUserBirthTask;->uInfo:Lcom/game/sdk/domain/UserInfo;

    .line 296
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/UpdateInfoResult;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateUserBirthTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    new-instance v1, Lcom/game/sdk/engin/UpdateUserInfoEngin;

    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateUserBirthTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    iget-object v3, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateUserBirthTask;->uInfo:Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v1, v2, v3}, Lcom/game/sdk/engin/UpdateUserInfoEngin;-><init>(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    invoke-static {v0, v1}, Lcom/game/sdk/ui/UserInfoActivity;->access$15(Lcom/game/sdk/ui/UserInfoActivity;Lcom/game/sdk/engin/UpdateUserInfoEngin;)V

    .line 306
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateUserBirthTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-static {v0}, Lcom/game/sdk/ui/UserInfoActivity;->access$16(Lcom/game/sdk/ui/UserInfoActivity;)Lcom/game/sdk/engin/UpdateUserInfoEngin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo()Lcom/game/sdk/domain/UpdateInfoResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/UserInfoActivity$UpdateUserBirthTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/UpdateInfoResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/UpdateInfoResult;)V
    .locals 2
    .param p1, "updateInfoResult"    # Lcom/game/sdk/domain/UpdateInfoResult;

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateUserBirthTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/UserInfoActivity;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 313
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/game/sdk/domain/UpdateInfoResult;->result:Z

    if-eqz v0, :cond_1

    .line 314
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateUserBirthTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    iget-object v0, p1, Lcom/game/sdk/domain/UpdateInfoResult;->pointMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/game/sdk/domain/UpdateInfoResult;->pointMessage:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 318
    :goto_1
    return-void

    .line 314
    :cond_0
    const-string v0, "\u4fee\u6539\u6210\u529f"

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateUserBirthTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    const-string v1, "\u4fee\u6539\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/UpdateInfoResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/UserInfoActivity$UpdateUserBirthTask;->onPostExecute(Lcom/game/sdk/domain/UpdateInfoResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 300
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 301
    return-void
.end method
