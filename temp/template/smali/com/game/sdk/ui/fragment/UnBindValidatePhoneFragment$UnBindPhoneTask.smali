.class Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;
.super Landroid/os/AsyncTask;
.source "UnBindValidatePhoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnBindPhoneTask"
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
.field code:Ljava/lang/String;

.field mobileNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "mobileNumber"    # Ljava/lang/String;
    .param p4, "code"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;->this$0:Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 262
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;->userName:Ljava/lang/String;

    .line 263
    iput-object p3, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;->mobileNumber:Ljava/lang/String;

    .line 264
    iput-object p4, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;->code:Ljava/lang/String;

    .line 265
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/ResultInfo;
    .locals 5
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
    .line 274
    new-instance v0, Lcom/game/sdk/engin/UnBindPhoneEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;->this$0:Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;

    invoke-static {v1}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->access$0(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;->userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;->mobileNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;->code:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/game/sdk/engin/UnBindPhoneEngin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .local v0, "unBindPhoneEngin":Lcom/game/sdk/engin/UnBindPhoneEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/UnBindPhoneEngin;->run()Lcom/game/sdk/domain/ResultInfo;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/ResultInfo;)V
    .locals 2
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
    const/4 v1, 0x1

    .line 280
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;->this$0:Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->access$4(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)Lcom/game/sdk/view/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 282
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v0, v1, :cond_0

    .line 283
    sput v1, Lcom/game/sdk/domain/GoagalInfo;->bindMobileFrom:I

    .line 284
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;->this$0:Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->access$0(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 289
    :goto_0
    return-void

    .line 286
    :cond_0
    const-string v0, "\u89e3\u7ed1\u5931\u8d25----"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;->this$0:Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;->access$0(Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v0

    const-string v1, "\u89e3\u7ed1\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/ResultInfo;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/UnBindValidatePhoneFragment$UnBindPhoneTask;->onPostExecute(Lcom/game/sdk/domain/ResultInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 270
    return-void
.end method
