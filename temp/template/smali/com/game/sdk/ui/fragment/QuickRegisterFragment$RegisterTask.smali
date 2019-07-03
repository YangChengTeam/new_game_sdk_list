.class Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;
.super Landroid/os/AsyncTask;
.source "QuickRegisterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/QuickRegisterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterTask"
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
.field private password:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/fragment/QuickRegisterFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 299
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->userName:Ljava/lang/String;

    .line 300
    iput-object p3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->password:Ljava/lang/String;

    .line 301
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 310
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v1}, Lcom/game/sdk/utils/Util;->reInitChannel(Landroid/content/Context;)V

    .line 311
    new-instance v0, Lcom/game/sdk/engin/RegisterAccountEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/game/sdk/engin/RegisterAccountEngin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .local v0, "loginEngin":Lcom/game/sdk/engin/RegisterAccountEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/RegisterAccountEngin;->run()Lcom/game/sdk/domain/LoginResult;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/LoginResult;)V
    .locals 3
    .param p1, "loginResult"    # Lcom/game/sdk/domain/LoginResult;

    .prologue
    const/4 v1, 0x1

    .line 317
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 321
    iget-boolean v0, p1, Lcom/game/sdk/domain/LoginResult;->result:Z

    if-eqz v0, :cond_3

    .line 322
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v0, v0, Lcom/game/sdk/domain/InItInfo;->isPostToToutiaoSdk:I

    if-ne v0, v1, :cond_0

    .line 323
    const-string v0, "quick_register"

    invoke-static {v0, v1}, Lcom/ss/android/common/lib/EventUtils;->setRegister(Ljava/lang/String;Z)V

    .line 324
    const-string v0, "TeaAgent quick_register success--->"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v1, "agent_game_logo_image"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 328
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v2, "agent_game_logo_image"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    .line 329
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    const-string v2, "game_logo_image"

    invoke-static {v0, v1, v2}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v1, "agent_game_init_image"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 333
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v2, "agent_game_init_image"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    .line 334
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    const-string v2, "game_init_image"

    invoke-static {v0, v1, v2}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 337
    :cond_2
    const-string v0, "\u6ce8\u518c\u8d26\u53f7\u6210\u529f----"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    .line 350
    :goto_0
    return-void

    .line 343
    :cond_3
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v0, v0, Lcom/game/sdk/domain/InItInfo;->isPostToToutiaoSdk:I

    if-ne v0, v1, :cond_4

    .line 344
    const-string v0, "quick_register"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ss/android/common/lib/EventUtils;->setRegister(Ljava/lang/String;Z)V

    .line 345
    const-string v0, "TeaAgent quick_register fail--->"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 347
    :cond_4
    const-string v0, "\u6ce8\u518c\u8d26\u53f7\u5931\u8d25----"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v1, "\u6ce8\u518c\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/LoginResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->onPostExecute(Lcom/game/sdk/domain/LoginResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 305
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 306
    return-void
.end method
