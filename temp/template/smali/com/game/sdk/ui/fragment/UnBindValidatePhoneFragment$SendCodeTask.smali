.class Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;
.super Landroid/os/AsyncTask;
.source "UnBindValidatePhoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendCodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/game/sdk/domain/ResultInfo",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field mobileNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "mobileNumber"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;->this$0:Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 169
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;->userName:Ljava/lang/String;

    .line 170
    iput-object p3, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;->mobileNumber:Ljava/lang/String;

    .line 171
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/ResultInfo;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/game/sdk/domain/ResultInfo",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/game/sdk/engin/UnBindSendCodeEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;->this$0:Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->access$0(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;->userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;->mobileNumber:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/game/sdk/engin/UnBindSendCodeEngin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v0, "unBindSendCodeEngin":Lcom/game/sdk/engin/UnBindSendCodeEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/UnBindSendCodeEngin;->run()Lcom/game/sdk/domain/ResultInfo;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/ResultInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/domain/ResultInfo",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 186
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;->this$0:Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->access$1(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)Lcom/game/sdk/view/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 188
    if-eqz p1, :cond_1

    iget v0, p1, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v0, v2, :cond_1

    .line 190
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;->this$0:Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->access$0(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v0

    const-string v1, "\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    const-string v0, "\u9a8c\u8bc1\u7801\u53d1\u9001\u6210\u529f----"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;->this$0:Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->access$2(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)V

    .line 193
    sput v2, Lcom/game/sdk/domain/GoagalInfo;->isGetValidate:I

    .line 195
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;->this$0:Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->access$3(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_0
    sget v0, Lcom/game/sdk/domain/GoagalInfo;->isGetValidate:I

    if-ne v0, v2, :cond_0

    .line 202
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;->this$0:Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->access$0(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 204
    :cond_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;->this$0:Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->access$0(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    sput v0, Lcom/game/sdk/domain/GoagalInfo;->isGetValidate:I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/ResultInfo;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$SendCodeTask;->onPostExecute(Lcom/game/sdk/domain/ResultInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 176
    return-void
.end method
