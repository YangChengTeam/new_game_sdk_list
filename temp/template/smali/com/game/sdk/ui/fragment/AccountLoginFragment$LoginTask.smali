.class Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;
.super Landroid/os/AsyncTask;
.source "AccountLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/AccountLoginFragment;
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
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment;Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;)V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;-><init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)V

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;)Lcom/game/sdk/ui/fragment/AccountLoginFragment;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 531
    new-instance v0, Lcom/game/sdk/engin/LoginEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v0, v1}, Lcom/game/sdk/engin/LoginEngin;-><init>(Landroid/content/Context;)V

    .line 532
    .local v0, "loginEngin":Lcom/game/sdk/engin/LoginEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/LoginEngin;->run()Lcom/game/sdk/domain/LoginResult;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/LoginResult;)V
    .locals 8
    .param p1, "loginResult"    # Lcom/game/sdk/domain/LoginResult;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 537
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 539
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/LoginInDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/LoginInDialog;->dismiss()V

    .line 543
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 544
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 547
    :cond_1
    iget-boolean v2, p1, Lcom/game/sdk/domain/LoginResult;->result:Z

    if-eqz v2, :cond_c

    .line 548
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v2, v2, Lcom/game/sdk/domain/InItInfo;->isPostToToutiaoSdk:I

    if-ne v2, v3, :cond_2

    .line 549
    const-string v2, "normal_login"

    invoke-static {v2, v3}, Lcom/ss/android/common/lib/EventUtils;->setLogin(Ljava/lang/String;Z)V

    .line 552
    :cond_2
    const-string v2, "\u767b\u5f55\u6210\u529f----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 554
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 555
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 556
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    .line 557
    new-instance v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment$ReInitInfoTaskByUserId;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$ReInitInfoTaskByUserId;-><init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment;Lcom/game/sdk/ui/fragment/AccountLoginFragment$ReInitInfoTaskByUserId;)V

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$ReInitInfoTaskByUserId;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 576
    :cond_3
    :goto_0
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v2, :cond_a

    .line 577
    sput-boolean v3, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 578
    new-instance v1, Lcom/game/sdk/domain/LogincallBack;

    invoke-direct {v1}, Lcom/game/sdk/domain/LogincallBack;-><init>()V

    .line 580
    .local v1, "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    iget v2, p1, Lcom/game/sdk/domain/LoginResult;->newSdkReg:I

    if-nez v2, :cond_7

    .line 581
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 582
    iget v2, p1, Lcom/game/sdk/domain/LoginResult;->cpNotice:I

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->fixName:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 583
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->fixName:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 589
    :cond_4
    :goto_1
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->userId:Ljava/lang/String;

    .line 590
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v2, v2, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_2
    iput-boolean v2, v1, Lcom/game/sdk/domain/LogincallBack;->isBindPhone:Z

    .line 591
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v6, v2, Lcom/game/sdk/domain/UserInfo;->logintime:J

    iput-wide v6, v1, Lcom/game/sdk/domain/LogincallBack;->logintime:J

    .line 592
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->sign:Ljava/lang/String;

    .line 595
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v2, v2, Lcom/game/sdk/domain/UserInfo;->isAuthenticated:I

    if-nez v2, :cond_9

    :goto_3
    iput-boolean v4, v1, Lcom/game/sdk/domain/LogincallBack;->isAuthenticated:Z

    .line 596
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->birthday:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->birthday:Ljava/lang/String;

    .line 598
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v1}, Lcom/game/sdk/domain/OnLoginListener;->loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V

    .line 603
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :goto_4
    const/4 v2, 0x2

    sput v2, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 605
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v2}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v3, v3, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v3}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 606
    sget v4, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 605
    invoke-virtual {v2, v3, v4}, Lcom/game/sdk/utils/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    .line 608
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 609
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    new-instance v3, Lcom/game/sdk/view/NoticeDialog;

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/game/sdk/view/NoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    .line 610
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/NoticeDialog;->show()V

    .line 612
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    new-instance v3, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask$1;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask$1;-><init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;)V

    invoke-virtual {v2, v3}, Lcom/game/sdk/view/NoticeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 635
    :goto_5
    return-void

    .line 560
    :cond_5
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v5, "agent_game_logo_image"

    invoke-static {v2, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 561
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v5, v5, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    .line 562
    const-string v6, "agent_game_logo_image"

    .line 561
    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    .line 563
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    .line 564
    const-string v6, "game_logo_image"

    .line 563
    invoke-static {v2, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 567
    :cond_6
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v5, "agent_game_init_image"

    invoke-static {v2, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 568
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v5, v5, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    .line 569
    const-string v6, "agent_game_init_image"

    .line 568
    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    .line 570
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    .line 571
    const-string v6, "game_init_image"

    .line 570
    invoke-static {v2, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 586
    .restart local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_7
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    move v2, v4

    .line 590
    goto/16 :goto_2

    :cond_9
    move v4, v3

    .line 595
    goto/16 :goto_3

    .line 600
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_a
    sput-boolean v4, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    goto/16 :goto_4

    .line 619
    :cond_b
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_5

    .line 623
    :cond_c
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_d

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v2, v2, Lcom/game/sdk/domain/InItInfo;->isPostToToutiaoSdk:I

    if-ne v2, v3, :cond_d

    .line 624
    const-string v2, "normal_login"

    invoke-static {v2, v4}, Lcom/ss/android/common/lib/EventUtils;->setLogin(Ljava/lang/String;Z)V

    .line 626
    :cond_d
    const-string v2, "\u767b\u5f55\u5931\u8d25----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 628
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v3, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    :goto_6
    invoke-static {v3, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 630
    new-instance v0, Lcom/game/sdk/domain/LoginErrorMsg;

    const/4 v3, -0x1

    .line 631
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    .line 630
    :goto_7
    invoke-direct {v0, v3, v2}, Lcom/game/sdk/domain/LoginErrorMsg;-><init>(ILjava/lang/String;)V

    .line 632
    .local v0, "loginErrorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v0}, Lcom/game/sdk/domain/OnLoginListener;->loginError(Lcom/game/sdk/domain/LoginErrorMsg;)V

    goto/16 :goto_5

    .line 628
    .end local v0    # "loginErrorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    :cond_e
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    goto :goto_6

    .line 631
    :cond_f
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    goto :goto_7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/LoginResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->onPostExecute(Lcom/game/sdk/domain/LoginResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 526
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 527
    return-void
.end method
