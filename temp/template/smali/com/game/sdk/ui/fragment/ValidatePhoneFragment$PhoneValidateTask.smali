.class Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$PhoneValidateTask;
.super Landroid/os/AsyncTask;
.source "ValidatePhoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneValidateTask"
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
.field mobileNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "mobileNumber"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 259
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$PhoneValidateTask;->mobileNumber:Ljava/lang/String;

    .line 260
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 269
    new-instance v0, Lcom/game/sdk/engin/QuickLoginEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->access$0(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;)Lcom/game/sdk/ui/LoginActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$PhoneValidateTask;->mobileNumber:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/game/sdk/engin/QuickLoginEngin;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 270
    .local v0, "quickLoginEngin":Lcom/game/sdk/engin/QuickLoginEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/QuickLoginEngin;->run()Lcom/game/sdk/domain/LoginResult;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$PhoneValidateTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/LoginResult;)V
    .locals 2
    .param p1, "loginResult"    # Lcom/game/sdk/domain/LoginResult;

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->access$4(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;)Lcom/game/sdk/view/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 277
    iget-boolean v0, p1, Lcom/game/sdk/domain/LoginResult;->result:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->access$0(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;)Lcom/game/sdk/ui/LoginActivity;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    .line 283
    :goto_0
    return-void

    .line 280
    :cond_0
    const-string v0, "\u624b\u673a\u53f7-\u9a8c\u8bc1\u5931\u8d25----"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;->access$0(Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;)Lcom/game/sdk/ui/LoginActivity;

    move-result-object v1

    iget-object v0, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u624b\u673a\u53f7\u9a8c\u8bc1\u5931\u8d25"

    :goto_1
    invoke-static {v1, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/LoginResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment$PhoneValidateTask;->onPostExecute(Lcom/game/sdk/domain/LoginResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 265
    return-void
.end method
