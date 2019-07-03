.class Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;
.super Landroid/os/AsyncTask;
.source "PhoneLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/PhoneLoginFragment;
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

.field final synthetic this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "mobileNumber"    # Ljava/lang/String;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 709
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->mobileNumber:Ljava/lang/String;

    .line 710
    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;)Lcom/game/sdk/ui/fragment/PhoneLoginFragment;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 719
    new-instance v0, Lcom/game/sdk/engin/QuickLoginEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->mobileNumber:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/game/sdk/engin/QuickLoginEngin;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 720
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

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/LoginResult;)V
    .locals 8
    .param p1, "loginResult"    # Lcom/game/sdk/domain/LoginResult;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 725
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 726
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 727
    iget-boolean v2, p1, Lcom/game/sdk/domain/LoginResult;->result:Z

    if-eqz v2, :cond_8

    .line 729
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 730
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 731
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    .line 732
    new-instance v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ReInitInfoTaskByUserId;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ReInitInfoTaskByUserId;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ReInitInfoTaskByUserId;)V

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ReInitInfoTaskByUserId;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 747
    :cond_0
    :goto_0
    sput-boolean v3, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 749
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v2}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v2

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 751
    new-instance v1, Lcom/game/sdk/domain/LogincallBack;

    invoke-direct {v1}, Lcom/game/sdk/domain/LogincallBack;-><init>()V

    .line 753
    .local v1, "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    iget v2, p1, Lcom/game/sdk/domain/LoginResult;->newSdkReg:I

    if-nez v2, :cond_4

    .line 754
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 755
    iget v2, p1, Lcom/game/sdk/domain/LoginResult;->cpNotice:I

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->fixName:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 756
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->fixName:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 762
    :cond_1
    :goto_1
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->userId:Ljava/lang/String;

    .line 763
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v2, v2, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, v1, Lcom/game/sdk/domain/LogincallBack;->isBindPhone:Z

    .line 764
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v6, v2, Lcom/game/sdk/domain/UserInfo;->logintime:J

    iput-wide v6, v1, Lcom/game/sdk/domain/LogincallBack;->logintime:J

    .line 765
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->sign:Ljava/lang/String;

    .line 768
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v2, v2, Lcom/game/sdk/domain/UserInfo;->isAuthenticated:I

    if-nez v2, :cond_6

    :goto_3
    iput-boolean v4, v1, Lcom/game/sdk/domain/LogincallBack;->isAuthenticated:Z

    .line 769
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->birthday:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->birthday:Ljava/lang/String;

    .line 771
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v1}, Lcom/game/sdk/domain/OnLoginListener;->loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V

    .line 773
    const/4 v2, 0x2

    sput v2, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 775
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v2}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v3, v3, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v3}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 776
    sget v4, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 775
    invoke-virtual {v2, v3, v4}, Lcom/game/sdk/utils/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    .line 778
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 779
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    new-instance v3, Lcom/game/sdk/view/NoticeDialog;

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/game/sdk/view/NoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    .line 780
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/NoticeDialog;->show()V

    .line 782
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    new-instance v3, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask$1;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask$1;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;)V

    invoke-virtual {v2, v3}, Lcom/game/sdk/view/NoticeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 803
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :goto_4
    return-void

    .line 735
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v5, "agent_game_logo_image"

    invoke-static {v2, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 736
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v5, v5, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v6, "agent_game_logo_image"

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    .line 737
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    const-string v6, "game_logo_image"

    invoke-static {v2, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 740
    :cond_3
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v5, "agent_game_init_image"

    invoke-static {v2, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 741
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v5, v5, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v6, "agent_game_init_image"

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    .line 742
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    const-string v6, "game_init_image"

    invoke-static {v2, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 759
    .restart local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_4
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 763
    goto/16 :goto_2

    :cond_6
    move v4, v3

    .line 768
    goto/16 :goto_3

    .line 789
    :cond_7
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_4

    .line 794
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_8
    sput-boolean v4, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 796
    const-string v2, "\u624b\u673a\u53f7-\u9a8c\u8bc1\u7801\u65b9\u5f0f-\u767b\u5f55\u5931\u8d25----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 797
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v3, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    .line 798
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "\u624b\u673a\u53f7\u6216\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5"

    .line 797
    :goto_5
    invoke-static {v3, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 799
    new-instance v0, Lcom/game/sdk/domain/LoginErrorMsg;

    const/4 v3, -0x1

    .line 800
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "\u624b\u673a\u53f7\u6216\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5"

    .line 799
    :goto_6
    invoke-direct {v0, v3, v2}, Lcom/game/sdk/domain/LoginErrorMsg;-><init>(ILjava/lang/String;)V

    .line 801
    .local v0, "errorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v0}, Lcom/game/sdk/domain/OnLoginListener;->loginError(Lcom/game/sdk/domain/LoginErrorMsg;)V

    goto/16 :goto_4

    .line 798
    .end local v0    # "errorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    :cond_9
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    goto :goto_5

    .line 800
    :cond_a
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    goto :goto_6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/LoginResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->onPostExecute(Lcom/game/sdk/domain/LoginResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 714
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 715
    return-void
.end method
