.class Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;
.super Landroid/os/AsyncTask;
.source "QuickLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/QuickLoginActivity;
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
.field final synthetic this$0:Lcom/game/sdk/ui/QuickLoginActivity;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/QuickLoginActivity;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;)Lcom/game/sdk/ui/QuickLoginActivity;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 254
    new-instance v0, Lcom/game/sdk/engin/QuickLoginEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/game/sdk/engin/QuickLoginEngin;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 255
    .local v0, "quickLoginEngin":Lcom/game/sdk/engin/QuickLoginEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/QuickLoginEngin;->quickRun()Lcom/game/sdk/domain/LoginResult;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/LoginResult;)V
    .locals 8
    .param p1, "loginResult"    # Lcom/game/sdk/domain/LoginResult;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 260
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 261
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-virtual {v2}, Lcom/game/sdk/ui/QuickLoginActivity;->closeDialog()V

    .line 262
    iget-boolean v2, p1, Lcom/game/sdk/domain/LoginResult;->result:Z

    if-eqz v2, :cond_9

    .line 263
    const-string v2, "\u77ed\u4fe1\u4e00\u952e\u767b\u5f55\u6210\u529f----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 265
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 267
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    .line 268
    new-instance v2, Lcom/game/sdk/ui/QuickLoginActivity$ReInitInfoTaskByUserId;

    iget-object v5, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/game/sdk/ui/QuickLoginActivity$ReInitInfoTaskByUserId;-><init>(Lcom/game/sdk/ui/QuickLoginActivity;Lcom/game/sdk/ui/QuickLoginActivity$ReInitInfoTaskByUserId;)V

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/game/sdk/ui/QuickLoginActivity$ReInitInfoTaskByUserId;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 287
    :cond_0
    :goto_0
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v2, :cond_2

    .line 288
    new-instance v1, Lcom/game/sdk/domain/LogincallBack;

    invoke-direct {v1}, Lcom/game/sdk/domain/LogincallBack;-><init>()V

    .line 290
    .local v1, "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    iget v2, p1, Lcom/game/sdk/domain/LoginResult;->newSdkReg:I

    if-nez v2, :cond_5

    .line 291
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 292
    iget v2, p1, Lcom/game/sdk/domain/LoginResult;->cpNotice:I

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->fixName:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 293
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->fixName:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 299
    :cond_1
    :goto_1
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->userId:Ljava/lang/String;

    .line 300
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v2, v2, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_2
    iput-boolean v2, v1, Lcom/game/sdk/domain/LogincallBack;->isBindPhone:Z

    .line 301
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v6, v2, Lcom/game/sdk/domain/UserInfo;->logintime:J

    iput-wide v6, v1, Lcom/game/sdk/domain/LogincallBack;->logintime:J

    .line 302
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->sign:Ljava/lang/String;

    .line 305
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v2, v2, Lcom/game/sdk/domain/UserInfo;->isAuthenticated:I

    if-nez v2, :cond_7

    :goto_3
    iput-boolean v4, v1, Lcom/game/sdk/domain/LogincallBack;->isAuthenticated:Z

    .line 306
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->birthday:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->birthday:Ljava/lang/String;

    .line 308
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v1}, Lcom/game/sdk/domain/OnLoginListener;->loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V

    .line 311
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_2
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 312
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    new-instance v3, Lcom/game/sdk/view/NoticeDialog;

    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/game/sdk/view/NoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    .line 313
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/NoticeDialog;->show()V

    .line 315
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    new-instance v3, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask$1;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask$1;-><init>(Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;)V

    invoke-virtual {v2, v3}, Lcom/game/sdk/view/NoticeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 334
    :goto_4
    return-void

    .line 271
    :cond_3
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    const-string v5, "agent_game_logo_image"

    invoke-static {v2, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 272
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    .line 273
    const-string v6, "agent_game_logo_image"

    .line 272
    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    .line 274
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    .line 275
    const-string v6, "game_logo_image"

    .line 274
    invoke-static {v2, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 278
    :cond_4
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    const-string v5, "agent_game_init_image"

    invoke-static {v2, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 279
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    .line 280
    const-string v6, "agent_game_init_image"

    .line 279
    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    .line 281
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    .line 282
    const-string v6, "game_init_image"

    .line 281
    invoke-static {v2, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 296
    .restart local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_5
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    move v2, v4

    .line 300
    goto/16 :goto_2

    :cond_7
    move v4, v3

    .line 305
    goto/16 :goto_3

    .line 322
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_8
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-virtual {v2}, Lcom/game/sdk/ui/QuickLoginActivity;->finish()V

    goto :goto_4

    .line 327
    :cond_9
    const-string v2, "\u77ed\u4fe1\u4e00\u952e\u767b\u5f55\u5931\u8d25----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 328
    new-instance v0, Lcom/game/sdk/domain/LoginErrorMsg;

    const/4 v3, -0x1

    .line 329
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "\u77ed\u4fe1\u4e00\u952e\u767b\u5f55\u5931\u8d25"

    .line 328
    :goto_5
    invoke-direct {v0, v3, v2}, Lcom/game/sdk/domain/LoginErrorMsg;-><init>(ILjava/lang/String;)V

    .line 330
    .local v0, "errorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v0}, Lcom/game/sdk/domain/OnLoginListener;->loginError(Lcom/game/sdk/domain/LoginErrorMsg;)V

    .line 332
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-virtual {v2}, Lcom/game/sdk/ui/QuickLoginActivity;->toLoginActivity()V

    goto :goto_4

    .line 329
    .end local v0    # "errorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    :cond_a
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    goto :goto_5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/LoginResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->onPostExecute(Lcom/game/sdk/domain/LoginResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 250
    return-void
.end method
