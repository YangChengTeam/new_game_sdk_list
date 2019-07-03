.class Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;
.super Landroid/os/AsyncTask;
.source "QuickLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/QuickLoginActivity;
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

.field final synthetic this$0:Lcom/game/sdk/ui/QuickLoginActivity;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/QuickLoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 424
    iput-object p2, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->userName:Ljava/lang/String;

    .line 425
    iput-object p3, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->password:Ljava/lang/String;

    .line 426
    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;)Lcom/game/sdk/ui/QuickLoginActivity;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 435
    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-static {v1}, Lcom/game/sdk/utils/Util;->reInitChannel(Landroid/content/Context;)V

    .line 436
    new-instance v0, Lcom/game/sdk/engin/RegisterAccountEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/game/sdk/engin/RegisterAccountEngin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
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

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/LoginResult;)V
    .locals 8
    .param p1, "loginResult"    # Lcom/game/sdk/domain/LoginResult;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 442
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 444
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/QuickLoginActivity;->loginDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 448
    :cond_0
    iget-boolean v2, p1, Lcom/game/sdk/domain/LoginResult;->result:Z

    if-eqz v2, :cond_8

    .line 449
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v2, v2, Lcom/game/sdk/domain/InItInfo;->isPostToToutiaoSdk:I

    if-ne v2, v3, :cond_1

    .line 450
    const-string v2, "quick_sms_play_register"

    invoke-static {v2, v3}, Lcom/ss/android/common/lib/EventUtils;->setRegister(Ljava/lang/String;Z)V

    .line 451
    const-string v2, "TeaAgent quick_register success--->"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 454
    :cond_1
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    const-string v5, "agent_game_logo_image"

    invoke-static {v2, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 455
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    .line 456
    const-string v6, "agent_game_logo_image"

    .line 455
    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    .line 457
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    .line 458
    const-string v6, "game_logo_image"

    .line 457
    invoke-static {v2, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 461
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    const-string v5, "agent_game_init_image"

    invoke-static {v2, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 462
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    .line 463
    const-string v6, "agent_game_init_image"

    .line 462
    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    .line 464
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    .line 465
    const-string v6, "game_init_image"

    .line 464
    invoke-static {v2, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 468
    :cond_3
    const-string v2, "\u6781\u901f\u6ce8\u518c\u8d26\u53f7\u6210\u529f----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 470
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-static {v2}, Lcom/game/sdk/ui/QuickLoginActivity;->access$3(Lcom/game/sdk/ui/QuickLoginActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    iget-object v5, v5, Lcom/game/sdk/ui/QuickLoginActivity;->runnable:Ljava/lang/Runnable;

    sget v6, Lcom/game/sdk/ui/QuickLoginActivity;->SEND_TIME:I

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 472
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v2, :cond_4

    .line 474
    sput-boolean v3, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 476
    new-instance v1, Lcom/game/sdk/domain/LogincallBack;

    invoke-direct {v1}, Lcom/game/sdk/domain/LogincallBack;-><init>()V

    .line 478
    .local v1, "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 479
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->userId:Ljava/lang/String;

    .line 480
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v2, v2, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_0
    iput-boolean v2, v1, Lcom/game/sdk/domain/LogincallBack;->isBindPhone:Z

    .line 481
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v6, v2, Lcom/game/sdk/domain/UserInfo;->logintime:J

    iput-wide v6, v1, Lcom/game/sdk/domain/LogincallBack;->logintime:J

    .line 482
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->sign:Ljava/lang/String;

    .line 485
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v2, v2, Lcom/game/sdk/domain/UserInfo;->isAuthenticated:I

    if-nez v2, :cond_6

    :goto_1
    iput-boolean v4, v1, Lcom/game/sdk/domain/LogincallBack;->isAuthenticated:Z

    .line 486
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->birthday:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->birthday:Ljava/lang/String;

    .line 488
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v1}, Lcom/game/sdk/domain/OnLoginListener;->loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V

    .line 491
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_4
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 492
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    new-instance v3, Lcom/game/sdk/view/NoticeDialog;

    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/game/sdk/view/NoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    .line 493
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/NoticeDialog;->show()V

    .line 495
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    new-instance v3, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask$1;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask$1;-><init>(Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;)V

    invoke-virtual {v2, v3}, Lcom/game/sdk/view/NoticeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 520
    :goto_2
    return-void

    .restart local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_5
    move v2, v4

    .line 480
    goto :goto_0

    :cond_6
    move v4, v3

    .line 485
    goto :goto_1

    .line 502
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_7
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-virtual {v2}, Lcom/game/sdk/ui/QuickLoginActivity;->finish()V

    goto :goto_2

    .line 506
    :cond_8
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v2, v2, Lcom/game/sdk/domain/InItInfo;->isPostToToutiaoSdk:I

    if-ne v2, v3, :cond_9

    .line 507
    const-string v2, "quick_sms_play_register"

    invoke-static {v2, v4}, Lcom/ss/android/common/lib/EventUtils;->setRegister(Ljava/lang/String;Z)V

    .line 508
    const-string v2, "TeaAgent quick_register fail--->"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 510
    :cond_9
    sput-boolean v4, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 511
    const-string v2, "\u6781\u901f\u8bd5\u73a9\u6ce8\u518c\u5931\u8d25----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 512
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    const-string v3, "\u6781\u901f\u8bd5\u73a9\u6ce8\u518c\u5931\u8d25"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 514
    new-instance v0, Lcom/game/sdk/domain/LoginErrorMsg;

    const/4 v2, -0x1

    const-string v3, "\u6781\u901f\u8bd5\u73a9\u6ce8\u518c\u5931\u8d25"

    invoke-direct {v0, v2, v3}, Lcom/game/sdk/domain/LoginErrorMsg;-><init>(ILjava/lang/String;)V

    .line 515
    .local v0, "errorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v0}, Lcom/game/sdk/domain/OnLoginListener;->loginError(Lcom/game/sdk/domain/LoginErrorMsg;)V

    .line 518
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-virtual {v2}, Lcom/game/sdk/ui/QuickLoginActivity;->toLoginActivity()V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/LoginResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/QuickLoginActivity$RegisterTask;->onPostExecute(Lcom/game/sdk/domain/LoginResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 430
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 431
    return-void
.end method
