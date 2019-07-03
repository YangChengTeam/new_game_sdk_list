.class public Lcom/game91/framework/impl/DelegateSdk;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Lcom/game91/framework/core/GameSdk;


# static fields
.field static sDelegateImpl:Lcom/game91/framework/impl/DelegateSdk;


# instance fields
.field private DEMO_DESC:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field mActivityImpl:Lcom/game91/framework/core/IActivity;

.field mDialogImpl:Lcom/game91/framework/core/IDialog;

.field mExitImpl:Lcom/game91/framework/core/IExit;

.field private mHandler:Landroid/os/Handler;

.field mInitImpl:Lcom/game91/framework/core/IInit;

.field private mInternalInitSuccess:Z

.field mInterpolatorImpl:Lcom/game91/framework/core/IInterpolator;

.field mPayImpl:Lcom/game91/framework/core/IPayChannel;

.field mRoleInfoImpl:Lcom/game91/framework/core/IRoleInfo;

.field mSaveUser:Lcom/game91/framework/core/ISaveUser;

.field mSplashImpl:Lcom/game91/framework/core/ISplash;

.field mTagImpl:Lcom/game91/framework/core/ITag;

.field mUserImpl:Lcom/game91/framework/core/ILogin;

.field private mUserInfo:Lcom/game91/framework/callback/UserInfo;

.field mWindowImpl:Lcom/game91/framework/core/IWindow;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "ActivityListener"

    invoke-static {v0}, Lcom/game91/framework/impl/Clazz;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IActivity;

    iput-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivityImpl:Lcom/game91/framework/core/IActivity;

    .line 68
    const-string v0, "InitListener"

    invoke-static {v0}, Lcom/game91/framework/impl/Clazz;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IInit;

    iput-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mInitImpl:Lcom/game91/framework/core/IInit;

    .line 69
    const-string v0, "UserListener"

    invoke-static {v0}, Lcom/game91/framework/impl/Clazz;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/ILogin;

    iput-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mUserImpl:Lcom/game91/framework/core/ILogin;

    .line 70
    const-string v0, "WindowListener"

    invoke-static {v0}, Lcom/game91/framework/impl/Clazz;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IWindow;

    iput-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mWindowImpl:Lcom/game91/framework/core/IWindow;

    .line 72
    const-string v0, "SaveUserListener"

    invoke-static {v0}, Lcom/game91/framework/impl/Clazz;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/ISaveUser;

    iput-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mSaveUser:Lcom/game91/framework/core/ISaveUser;

    .line 73
    const-string v0, "PayChannelListener"

    invoke-static {v0}, Lcom/game91/framework/impl/Clazz;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IPayChannel;

    iput-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mPayImpl:Lcom/game91/framework/core/IPayChannel;

    .line 74
    const-string v0, "RoleInfoListener"

    invoke-static {v0}, Lcom/game91/framework/impl/Clazz;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IRoleInfo;

    iput-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mRoleInfoImpl:Lcom/game91/framework/core/IRoleInfo;

    .line 75
    const-string v0, "TagListener"

    invoke-static {v0}, Lcom/game91/framework/impl/Clazz;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/ITag;

    iput-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mTagImpl:Lcom/game91/framework/core/ITag;

    .line 76
    const-string v0, "InterpolatorListener"

    invoke-static {v0}, Lcom/game91/framework/impl/Clazz;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IInterpolator;

    iput-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mInterpolatorImpl:Lcom/game91/framework/core/IInterpolator;

    .line 77
    const-string v0, "ExitListener"

    invoke-static {v0}, Lcom/game91/framework/impl/Clazz;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IExit;

    iput-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mExitImpl:Lcom/game91/framework/core/IExit;

    .line 78
    const-string v0, "SplashListener"

    invoke-static {v0}, Lcom/game91/framework/impl/Clazz;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/ISplash;

    iput-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mSplashImpl:Lcom/game91/framework/core/ISplash;

    .line 79
    const-string v0, "DialogListener"

    invoke-static {v0}, Lcom/game91/framework/impl/Clazz;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IDialog;

    iput-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mDialogImpl:Lcom/game91/framework/core/IDialog;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mHandler:Landroid/os/Handler;

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mInternalInitSuccess:Z

    .line 226
    const-string v0, "\u65b0\u589e\n\u4e2d\u79cb\u8282\u6d3b\u52a8\u5f00\u542f\n-\u62dc\u8bbf\u7389\u5154\uff1a\u6bcf\u5929\u7cfb\u7edf\u65f6\u95f400:00\uff0c08:00\uff0c16:00\u5728\u4e16\u754c\u5730\u56fe\u4e0a\u4f1a\u51fa\u73b0\u4e00\u53ea\u53ef\u7231\u7684\u7389\u5154\uff0c\u524d\u53bb\u62dc\u8bbf\u53ef\u83b7\u5f97\u4e30\u539a\u5956\u52b1\uff0c\u66f4\u6709\u673a\u4f1a\u83b7\u5f97\u795e\u79d8\u7684\u5b54\u660e\u706f\u9053\u5177\uff0c\u5206\u4eab\u540e\u83b7\u5f97\u5de8\u91cf\u5956\u52b1\n-\u8282\u65e5\u72c2\u6b22\u5546\u5e97\uff1a\u5546\u5e97\u5185\u53ef\u4f7f\u7528\u62dc\u8bbf\u7389\u5154\u83b7\u5f97\u7684\u6842\u82b1\u9053\u5177\uff0c\u5151\u6362\u5956\u52b1\n-\u7b54\u9898\u6d3b\u52a8\uff1a\u60f3\u4e86\u89e3\u66f4\u591a\u4e2d\u79cb\u8282\u7684\u77e5\u8bc6\u5c31\u5feb\u6765\u53c2\u52a0\u7b54\u9898\u6d3b\u52a8\u5427\n\n\u82f1\u96c4\u566c\u9b42\n-\u82f1\u96c4\u4ecb\u7ecd\uff1a\u566c\u9b42\u62e5\u6709\u5f3a\u5927\u7684\u4f24\u8f6c\u6b7b\u80fd\u529b\uff0c\u653b\u57ce\u80dc\u5229\u8fd8\u53ef\u4ee5\u6740\u6b7b\u4e00\u5b9a\u6570\u91cf\u7684\u533b\u9662\u4e2d\u4f24\u5175\uff08\u6cbb\u7597\u4e2d\u7684\u4e0d\u53d7\u5f71\u54cd\uff09\uff0c\u662f\u6218\u6597\u4e2d\u6781\u5bcc\u6218\u672f\u4ef7\u503c\u7684\u82f1\u96c4\u3002\u5929\u8d4b\u6811\u5728\u523a\u8475\u7684\u57fa\u7840\u4e0a\u589e\u52a0\u4e86\u4f24\u8f6c\u6b7b\u548c\u653b\u57ce\u4f24\u5bb3\u3002\n-\u9650\u65f6\u83b7\u53d6\uff1a\u8be5\u82f1\u96c4\u901a\u8fc7\u9ad8\u7ea7\u62db\u52df\u83b7\u53d6\uff0c\u53ea\u6709\u5728\u6d3b\u52a8\u671f\u95f4\u53ef\u4ee5\u4ece\u9ad8\u7ea7\u82f1\u96c4\u62db\u52df\u4e2d\u83b7\u53d6\uff0c\u6d3b\u52a8\u7ed3\u675f\u540e\u5c06\u4ece\u5956\u6c60\u4e2d\u6d88\u5931\u3002\u6d3b\u52a8\u6301\u7eed7\u5929\u3002\n\n\u5dc5\u5cf0\u5c5e\u6027\u6392\u884c\u699c\n-\u6392\u884c\u699c\u754c\u9762\u65b0\u589e\u5168\u7403\u5175\u79cd\u653b\u51fb\u3001\u9632\u5fa1\u3001\u751f\u547d\u5c5e\u6027\u6392\u884c\u699c\n-\u5c5e\u6027\u6392\u884c\u699c\u663e\u793a\u9886\u4e3b\u5c5e\u6027\u9ad8\u7684\u5175\u79cd\u5c5e\u6027\n-\u5c5e\u6027\u6392\u884c\u699c\u6bcf28\u5929\u7ed3\u7b97\u5e76\u53d1\u653e\u5956\u52b1\n-\u5175\u79cd\u5c5e\u6027\u9700\u8981\u8fbe\u5230\u4e00\u5b9a\u6570\u503c\u624d\u4f1a\u4e0a\u699c\n\n\u4f18\u5316\u548c\u8c03\u6574\n\u8fdc\u53e4\u6218\u573a\u9884\u544a\n-\u8fdc\u53e4\u6218\u573a\u7684\u5956\u52b1\u5373\u5c06\u8fdb\u884c\u8c03\u6574\uff0c\u5956\u52b1\u5185\u5bb9\u6781\u5176\u4e30\u539a\uff01\u656c\u8bf7\u671f\u5f85\u3002\n\n\u9f99\u4e4b\u9988\u793c\u4f18\u5316\n-\u589e\u52a0\u9f99\u4e4b\u9988\u793c\u6d3b\u52a8\u671f\u95f4\u9053\u5177\u5c55\u793a\u6548\u679c"

    iput-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->DEMO_DESC:Ljava/lang/String;

    .line 88
    sput-object p0, Lcom/game91/framework/impl/DelegateSdk;->sDelegateImpl:Lcom/game91/framework/impl/DelegateSdk;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/game91/framework/impl/DelegateSdk;)Z
    .locals 1
    .param p0, "x0"    # Lcom/game91/framework/impl/DelegateSdk;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mInternalInitSuccess:Z

    return v0
.end method

.method static synthetic access$002(Lcom/game91/framework/impl/DelegateSdk;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/game91/framework/impl/DelegateSdk;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/game91/framework/impl/DelegateSdk;->mInternalInitSuccess:Z

    return p1
.end method

.method static synthetic access$100(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/game91/framework/impl/DelegateSdk;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/game91/framework/callback/Callback;
    .param p3, "x3"    # Lcom/game91/framework/callback/Callback;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/game91/framework/impl/DelegateSdk;->checkUpdate(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/http/InitBean;)V
    .locals 0
    .param p0, "x0"    # Lcom/game91/framework/impl/DelegateSdk;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/game91/framework/callback/Callback;
    .param p3, "x3"    # Lcom/game91/framework/callback/Callback;
    .param p4, "x4"    # Lcom/game91/framework/http/InitBean;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/game91/framework/impl/DelegateSdk;->callInit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/http/InitBean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/http/InitBean;)V
    .locals 0
    .param p0, "x0"    # Lcom/game91/framework/impl/DelegateSdk;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/game91/framework/callback/Callback;
    .param p3, "x3"    # Lcom/game91/framework/callback/Callback;
    .param p4, "x4"    # Lcom/game91/framework/http/InitBean;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/game91/framework/impl/DelegateSdk;->loadPlugins(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/http/InitBean;)V

    return-void
.end method

.method static synthetic access$400(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/http/InitBean$Plugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/game91/framework/impl/DelegateSdk;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/game91/framework/http/InitBean$Plugin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/game91/framework/impl/DelegateSdk;->loadPlugin(Landroid/app/Activity;Lcom/game91/framework/http/InitBean$Plugin;)V

    return-void
.end method

.method static synthetic access$502(Lcom/game91/framework/impl/DelegateSdk;Lcom/game91/framework/callback/UserInfo;)Lcom/game91/framework/callback/UserInfo;
    .locals 0
    .param p0, "x0"    # Lcom/game91/framework/impl/DelegateSdk;
    .param p1, "x1"    # Lcom/game91/framework/callback/UserInfo;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk;->mUserInfo:Lcom/game91/framework/callback/UserInfo;

    return-object p1
.end method

.method private callInit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/http/InitBean;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p4, "initBean"    # Lcom/game91/framework/http/InitBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/game91/framework/http/InitBean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 316
    .local p2, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Integer;>;"
    .local p3, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    invoke-virtual {p4}, Lcom/game91/framework/http/InitBean;->getNoticeInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u73b0\u4e86\u4e00\u4e2a\u65b0\u7684\u516c\u544a:\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Lcom/game91/framework/http/InitBean;->getNoticeInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 318
    new-instance v0, Lcom/game91/framework/dialog/NoticeDialog;

    invoke-direct {v0}, Lcom/game91/framework/dialog/NoticeDialog;-><init>()V

    .line 319
    invoke-virtual {p4}, Lcom/game91/framework/http/InitBean;->getNoticeInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game91/framework/dialog/NoticeDialog;->setNotice(Ljava/lang/String;)Lcom/game91/framework/dialog/NoticeDialog;

    move-result-object v6

    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/game91/framework/impl/DelegateSdk$4;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/http/InitBean;)V

    .line 320
    invoke-virtual {v6, v0}, Lcom/game91/framework/dialog/NoticeDialog;->setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/game91/framework/dialog/NoticeDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 326
    invoke-virtual {v0, v1}, Lcom/game91/framework/dialog/NoticeDialog;->setCanCancelable(Z)Lcom/game91/framework/dialog/DialogWindow;

    move-result-object v0

    .line 327
    invoke-virtual {v0, p1}, Lcom/game91/framework/dialog/DialogWindow;->show(Landroid/app/Activity;)Lcom/game91/framework/dialog/DialogWindow;

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/game91/framework/impl/DelegateSdk;->loadPlugins(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/http/InitBean;)V

    goto :goto_0
.end method

.method private checkUpdate(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p2, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Integer;>;"
    .local p3, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    const-string v0, "\u5f00\u59cb\u68c0\u67e5\u6e38\u620f\u66f4\u65b0"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/game91/framework/HttpManager;->api()Lcom/game91/framework/core/IHttp;

    move-result-object v0

    .line 252
    invoke-static {}, Lcom/game91/framework/util/MapUtils;->create()Lcom/game91/framework/util/MapUtils;

    move-result-object v1

    const-string v2, "deviceUuid"

    .line 253
    invoke-static {p1}, Lcom/game91/framework/util/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/game91/framework/util/MapUtils;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;

    move-result-object v1

    const-string v2, "appId"

    .line 254
    invoke-static {p1}, Lcom/game91/framework/util/DeviceUtils;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/game91/framework/util/MapUtils;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;

    move-result-object v1

    const-string v2, "versionCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    invoke-static {p1}, Lcom/game91/framework/util/DeviceUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/game91/framework/util/MapUtils;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;

    move-result-object v1

    const-string v2, "channelId"

    .line 256
    invoke-static {p1}, Lcom/game91/framework/util/DeviceUtils;->getChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/game91/framework/util/MapUtils;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/game91/framework/util/MapUtils;

    move-result-object v1

    .line 257
    invoke-virtual {v1, p1}, Lcom/game91/framework/util/MapUtils;->putDevicesInfo(Landroid/content/Context;)Lcom/game91/framework/util/MapUtils;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Lcom/game91/framework/util/MapUtils;->buildBody()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/game91/framework/impl/DelegateSdk$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/game91/framework/impl/DelegateSdk$2;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    new-instance v3, Lcom/game91/framework/impl/DelegateSdk$3;

    invoke-direct {v3, p0, p1, p3}, Lcom/game91/framework/impl/DelegateSdk$3;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;)V

    .line 251
    invoke-interface {v0, v1, v2, v3}, Lcom/game91/framework/core/IHttp;->init(Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallInit;Lcom/game91/framework/core/IHttp$CallError;)V

    .line 313
    return-void
.end method

.method public static delegate()Lcom/game91/framework/core/GameSdk;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/game91/framework/impl/DelegateSdk;->sDelegateImpl:Lcom/game91/framework/impl/DelegateSdk;

    return-object v0
.end method

.method private loadPlugin(Landroid/app/Activity;Lcom/game91/framework/http/InitBean$Plugin;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "plugin"    # Lcom/game91/framework/http/InitBean$Plugin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    const/4 v3, 0x0

    .line 386
    .local v3, "exists":Z
    const-string v8, "support_apk"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "dir":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/game91/framework/http/InitBean$Plugin;->getName()Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, "name":Ljava/lang/String;
    const-string v8, "plugins/"

    invoke-static {p1, v8, v6}, Lcom/game91/framework/util/AssetsUtils;->releaseFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 390
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .local v0, "apk":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 392
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/game91/framework/util/ApkUtils;->getApkVersionCode(Ljava/lang/String;Landroid/content/Context;)I

    move-result v8

    invoke-virtual {p2}, Lcom/game91/framework/http/InitBean$Plugin;->getVersion()I

    move-result v9

    if-lt v8, v9, :cond_0

    .line 393
    const/4 v3, 0x1

    .line 397
    :cond_0
    if-nez v3, :cond_1

    .line 398
    invoke-virtual {p2}, Lcom/game91/framework/http/InitBean$Plugin;->getDownload()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/game91/framework/util/DownloadUtils;->download(Ljava/lang/String;Ljava/io/File;)V

    .line 400
    :cond_1
    invoke-static {p1, v0}, Lcom/game91/framework/multidex/Multidex;->install(Landroid/content/Context;Ljava/io/File;)V

    .line 402
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/game91/framework/util/ApkUtils;->getApkPackageName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 403
    .local v7, "packageName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 404
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".PackageApplication"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "invokePackage":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 406
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/game91/framework/core/IPackage;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/game91/framework/core/IPackage;

    .line 407
    .local v4, "iPackage":Lcom/game91/framework/core/IPackage;
    new-instance v8, Lcom/game91/framework/impl/DelegateSdk$6;

    invoke-direct {v8, p0, v4}, Lcom/game91/framework/impl/DelegateSdk$6;-><init>(Lcom/game91/framework/impl/DelegateSdk;Lcom/game91/framework/core/IPackage;)V

    invoke-direct {p0, v8}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/game91/framework/core/IPackage;>;"
    .end local v4    # "iPackage":Lcom/game91/framework/core/IPackage;
    .end local v5    # "invokePackage":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private loadPlugins(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/http/InitBean;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p4, "initBean"    # Lcom/game91/framework/http/InitBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/game91/framework/http/InitBean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 334
    .local p2, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Integer;>;"
    .local p3, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$5;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/game91/framework/impl/DelegateSdk$5;-><init>(Lcom/game91/framework/impl/DelegateSdk;Lcom/game91/framework/http/InitBean;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 381
    invoke-virtual {v0, v1}, Lcom/game91/framework/impl/DelegateSdk$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 382
    return-void
.end method

.method private runUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 744
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 745
    return-void
.end method


# virtual methods
.method public doExit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 534
    .local p2, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Integer;>;"
    .local p3, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    const-string v0, "\u6267\u884c\u9000\u51fa\u6e38\u620f"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 535
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/game91/framework/impl/DelegateSdk$12;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    invoke-direct {p0, v0}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V

    .line 547
    return-void
.end method

.method public doInit(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p2, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Integer;>;"
    .local p3, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    const-string v0, "MgGameSdk\u521d\u59cb\u5316"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/game91/framework/impl/DelegateSdk$1;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    invoke-direct {p0, v0}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method public doLogin(Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p2, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Integer;>;"
    .local p3, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    const-string v0, "\u5f00\u59cb\u6267\u884c\u767b\u5f55"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 447
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/game91/framework/impl/DelegateSdk$9;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    invoke-direct {p0, v0}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V

    .line 492
    return-void
.end method

.method public doLogout(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 496
    const-string v0, "\u8c03\u7528\u767b\u51fa\u6e38\u620f"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 497
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$10;

    invoke-direct {v0, p0, p1}, Lcom/game91/framework/impl/DelegateSdk$10;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V

    .line 503
    return-void
.end method

.method public doPay(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "payInfo"    # Lcom/game91/framework/callback/PayInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/game91/framework/callback/PayInfo;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Lcom/game91/framework/callback/OrderInfo;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 649
    .local p3, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Lcom/game91/framework/callback/OrderInfo;>;"
    .local p4, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lcom/game91/framework/impl/DelegateSdk;->interceptPayEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    const-string v0, "\u8c03\u7528MgGameSdk\u805a\u5408\u652f\u4ed8"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 651
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$15;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/game91/framework/impl/DelegateSdk$15;-><init>(Lcom/game91/framework/impl/DelegateSdk;Lcom/game91/framework/callback/PayInfo;Lcom/game91/framework/callback/Callback;Landroid/app/Activity;Lcom/game91/framework/callback/Callback;)V

    invoke-direct {p0, v0}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V

    .line 711
    :goto_0
    return-void

    .line 704
    :cond_0
    invoke-virtual {p2}, Lcom/game91/framework/callback/PayInfo;->canPay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/game91/framework/impl/DelegateSdk;->pay1(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    goto :goto_0

    .line 707
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u652f\u4ed8\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/game91/framework/callback/PayInfo;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 708
    new-instance v0, Ljava/lang/Throwable;

    invoke-virtual {p2}, Lcom/game91/framework/callback/PayInfo;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/game91/framework/callback/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getChannelLoginInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mUserImpl:Lcom/game91/framework/core/ILogin;

    invoke-interface {v0}, Lcom/game91/framework/core/ILogin;->getChannelLoginInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getChannelOrderInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mPayImpl:Lcom/game91/framework/core/IPayChannel;

    invoke-interface {v0}, Lcom/game91/framework/core/IPayChannel;->getChannelOrderInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getChannelPayInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mPayImpl:Lcom/game91/framework/core/IPayChannel;

    invoke-interface {v0}, Lcom/game91/framework/core/IPayChannel;->getChannelPayInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLogoutListener()Lcom/game91/framework/callback/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 725
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mUserImpl:Lcom/game91/framework/core/ILogin;

    invoke-interface {v0}, Lcom/game91/framework/core/ILogin;->getLogoutListener()Lcom/game91/framework/callback/Callback;

    move-result-object v0

    return-object v0
.end method

.method public getRoleInfo()Lcom/game91/framework/callback/RoleInfo;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mRoleInfoImpl:Lcom/game91/framework/core/IRoleInfo;

    invoke-interface {v0}, Lcom/game91/framework/core/IRoleInfo;->getRoleInfo()Lcom/game91/framework/callback/RoleInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/game91/framework/callback/UserInfo;
    .locals 1

    .prologue
    .line 514
    const-string v0, "\u83b7\u53d6\u7528\u6237\u4fe1\u606f"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mUserInfo:Lcom/game91/framework/callback/UserInfo;

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mUserImpl:Lcom/game91/framework/core/ILogin;

    invoke-interface {v0}, Lcom/game91/framework/core/ILogin;->getUserInfo()Lcom/game91/framework/callback/UserInfo;

    move-result-object v0

    .line 518
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mUserInfo:Lcom/game91/framework/callback/UserInfo;

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 644
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mTagImpl:Lcom/game91/framework/core/ITag;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/ITag;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hideInitDialog(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 771
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$17;

    invoke-direct {v0, p0, p1}, Lcom/game91/framework/impl/DelegateSdk$17;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V

    .line 777
    return-void
.end method

.method public hideLoginSuccessDialog(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 791
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$19;

    invoke-direct {v0, p0, p1}, Lcom/game91/framework/impl/DelegateSdk$19;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V

    .line 797
    return-void
.end method

.method public hideOrderNotifyDialog(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 831
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$23;

    invoke-direct {v0, p0, p1}, Lcom/game91/framework/impl/DelegateSdk$23;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V

    .line 837
    return-void
.end method

.method public hidePayDialog(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 811
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$21;

    invoke-direct {v0, p0, p1}, Lcom/game91/framework/impl/DelegateSdk$21;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V

    .line 817
    return-void
.end method

.method public hideSplash(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 755
    const-string v0, "\u5173\u95ed\u95ea\u5c4f"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mSplashImpl:Lcom/game91/framework/core/ISplash;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/ISplash;->hideSplash(Landroid/app/Activity;)V

    .line 757
    return-void
.end method

.method public interceptLoginEvent()Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mInterpolatorImpl:Lcom/game91/framework/core/IInterpolator;

    invoke-interface {v0}, Lcom/game91/framework/core/IInterpolator;->interceptLoginEvent()Z

    move-result v0

    return v0
.end method

.method public interceptOrderEvent()Z
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mInterpolatorImpl:Lcom/game91/framework/core/IInterpolator;

    invoke-interface {v0}, Lcom/game91/framework/core/IInterpolator;->interceptOrderEvent()Z

    move-result v0

    return v0
.end method

.method public interceptPayEvent()Z
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mInterpolatorImpl:Lcom/game91/framework/core/IInterpolator;

    invoke-interface {v0}, Lcom/game91/framework/core/IInterpolator;->interceptPayEvent()Z

    move-result v0

    return v0
.end method

.method public isLogin()Z
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mUserImpl:Lcom/game91/framework/core/ILogin;

    invoke-interface {v0}, Lcom/game91/framework/core/ILogin;->isLogin()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 178
    const-string v1, "DelegateSdk::onActivityResult"

    invoke-static {v1}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivityImpl:Lcom/game91/framework/core/IActivity;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/game91/framework/core/IActivity;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 180
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 181
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/game91/framework/core/IGameActivity;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0

    .line 183
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 169
    const-string v1, "DelegateSdk::onConfigurationChanged"

    invoke-static {v1}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivityImpl:Lcom/game91/framework/core/IActivity;

    invoke-interface {v1, p1, p2}, Lcom/game91/framework/core/IActivity;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 171
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 172
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0, p1, p2}, Lcom/game91/framework/core/IGameActivity;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 174
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 93
    const-string v1, "DelegateSdk::onCreate"

    invoke-static {v1}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivity:Landroid/app/Activity;

    .line 95
    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivityImpl:Lcom/game91/framework/core/IActivity;

    invoke-interface {v1, p1}, Lcom/game91/framework/core/IActivity;->onCreate(Landroid/app/Activity;)V

    .line 96
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 97
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0, p1}, Lcom/game91/framework/core/IGameActivity;->onCreate(Landroid/app/Activity;)V

    goto :goto_0

    .line 99
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 151
    const-string v1, "DelegateSdk::onDestroy"

    invoke-static {v1}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivityImpl:Lcom/game91/framework/core/IActivity;

    invoke-interface {v1, p1}, Lcom/game91/framework/core/IActivity;->onDestroy(Landroid/app/Activity;)V

    .line 153
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 154
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0, p1}, Lcom/game91/framework/core/IGameActivity;->onDestroy(Landroid/app/Activity;)V

    goto :goto_0

    .line 156
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    const-string v1, "DelegateSdk::onNewIntent"

    invoke-static {v1}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivityImpl:Lcom/game91/framework/core/IActivity;

    invoke-interface {v1, p1, p2}, Lcom/game91/framework/core/IActivity;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 162
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 163
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0, p1, p2}, Lcom/game91/framework/core/IGameActivity;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 165
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 132
    const-string v1, "DelegateSdk::onPause"

    invoke-static {v1}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 133
    invoke-static {p1}, Lcom/game91/framework/statistics/StatisticsAnalysis;->onPause(Landroid/app/Activity;)V

    .line 134
    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivityImpl:Lcom/game91/framework/core/IActivity;

    invoke-interface {v1, p1}, Lcom/game91/framework/core/IActivity;->onPause(Landroid/app/Activity;)V

    .line 135
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 136
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0, p1}, Lcom/game91/framework/core/IGameActivity;->onPause(Landroid/app/Activity;)V

    goto :goto_0

    .line 138
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "grantResults"    # [I

    .prologue
    .line 187
    const-string v1, "DelegateSdk::onRequestPermissionsResult"

    invoke-static {v1}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivityImpl:Lcom/game91/framework/core/IActivity;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/game91/framework/core/IActivity;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 189
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 190
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/game91/framework/core/IGameActivity;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 192
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_0
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 114
    const-string v1, "DelegateSdk::onRestart"

    invoke-static {v1}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivityImpl:Lcom/game91/framework/core/IActivity;

    invoke-interface {v1, p1}, Lcom/game91/framework/core/IActivity;->onRestart(Landroid/app/Activity;)V

    .line 116
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 117
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0, p1}, Lcom/game91/framework/core/IGameActivity;->onRestart(Landroid/app/Activity;)V

    goto :goto_0

    .line 119
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 103
    const-string v1, "DelegateSdk::onResume"

    invoke-static {v1}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 104
    invoke-static {p1}, Lcom/game91/framework/statistics/StatisticsAnalysis;->onResume(Landroid/app/Activity;)V

    .line 105
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivity:Landroid/app/Activity;

    .line 106
    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivityImpl:Lcom/game91/framework/core/IActivity;

    invoke-interface {v1, p1}, Lcom/game91/framework/core/IActivity;->onResume(Landroid/app/Activity;)V

    .line 107
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 108
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0, p1}, Lcom/game91/framework/core/IGameActivity;->onResume(Landroid/app/Activity;)V

    goto :goto_0

    .line 110
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 123
    const-string v1, "DelegateSdk::onStart"

    invoke-static {v1}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivityImpl:Lcom/game91/framework/core/IActivity;

    invoke-interface {v1, p1}, Lcom/game91/framework/core/IActivity;->onStart(Landroid/app/Activity;)V

    .line 125
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 126
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0, p1}, Lcom/game91/framework/core/IGameActivity;->onStart(Landroid/app/Activity;)V

    goto :goto_0

    .line 128
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_0
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 142
    const-string v1, "DelegateSdk::onStop"

    invoke-static {v1}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivityImpl:Lcom/game91/framework/core/IActivity;

    invoke-interface {v1, p1}, Lcom/game91/framework/core/IActivity;->onStop(Landroid/app/Activity;)V

    .line 144
    invoke-static {}, Lcom/game91/framework/core/GlobalActivityListener;->getActivityListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/core/IGameActivity;

    .line 145
    .local v0, "gameActivity":Lcom/game91/framework/core/IGameActivity;
    invoke-interface {v0, p1}, Lcom/game91/framework/core/IGameActivity;->onStop(Landroid/app/Activity;)V

    goto :goto_0

    .line 147
    .end local v0    # "gameActivity":Lcom/game91/framework/core/IGameActivity;
    :cond_0
    return-void
.end method

.method public onlyActivityEvent()Z
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method public pay1(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "payInfo"    # Lcom/game91/framework/callback/PayInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/game91/framework/callback/PayInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Lcom/game91/framework/callback/OrderInfo;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 566
    .local p3, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Lcom/game91/framework/callback/OrderInfo;>;"
    .local p5, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/game91/framework/impl/DelegateSdk$13;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    invoke-direct {p0, v0}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V

    .line 595
    return-void
.end method

.method public pay3(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "payInfo"    # Lcom/game91/framework/callback/PayInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/game91/framework/callback/PayInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Lcom/game91/framework/callback/OrderInfo;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 599
    .local p3, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "onSuccess":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Lcom/game91/framework/callback/OrderInfo;>;"
    .local p5, "onError":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Throwable;>;"
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$14;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/game91/framework/impl/DelegateSdk$14;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V

    invoke-direct {p0, v0}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V

    .line 605
    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 639
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mTagImpl:Lcom/game91/framework/core/ITag;

    invoke-interface {v0, p1, p2}, Lcom/game91/framework/core/ITag;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 640
    return-void
.end method

.method public setChannelLoginInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 720
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mUserImpl:Lcom/game91/framework/core/ILogin;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/ILogin;->setChannelLoginInfo(Ljava/util/Map;)V

    .line 721
    return-void
.end method

.method public setChannelOrderInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mPayImpl:Lcom/game91/framework/core/IPayChannel;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IPayChannel;->setChannelOrderInfo(Ljava/util/Map;)V

    .line 620
    return-void
.end method

.method public setChannelPayInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mPayImpl:Lcom/game91/framework/core/IPayChannel;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IPayChannel;->setChannelPayInfo(Ljava/util/Map;)V

    .line 610
    return-void
.end method

.method public setLogin(Z)V
    .locals 1
    .param p1, "isLogin"    # Z

    .prologue
    .line 740
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mUserImpl:Lcom/game91/framework/core/ILogin;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/ILogin;->setLogin(Z)V

    .line 741
    return-void
.end method

.method public setLogoutCallback(Lcom/game91/framework/callback/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "onLogout":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Integer;>;"
    const-string v0, "\u6dfb\u52a0\u767b\u51fa\u56de\u8c03"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mUserImpl:Lcom/game91/framework/core/ILogin;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/ILogin;->setLogoutCallback(Lcom/game91/framework/callback/Callback;)V

    .line 509
    invoke-virtual {p0, p1}, Lcom/game91/framework/impl/DelegateSdk;->setLogoutListener(Lcom/game91/framework/callback/Callback;)V

    .line 510
    return-void
.end method

.method public setLogoutListener(Lcom/game91/framework/callback/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 730
    .local p1, "callback":Lcom/game91/framework/callback/Callback;, "Lcom/game91/framework/callback/Callback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mUserImpl:Lcom/game91/framework/core/ILogin;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/ILogin;->setLogoutListener(Lcom/game91/framework/callback/Callback;)V

    .line 731
    return-void
.end method

.method public setRoleInfo(Lcom/game91/framework/callback/RoleInfo;)V
    .locals 1
    .param p1, "roleInfo"    # Lcom/game91/framework/callback/RoleInfo;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mRoleInfoImpl:Lcom/game91/framework/core/IRoleInfo;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/IRoleInfo;->setRoleInfo(Lcom/game91/framework/callback/RoleInfo;)V

    .line 635
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/game91/framework/core/IWindow$WindowType;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/game91/framework/core/IWindow$WindowType;

    .prologue
    .line 523
    const-string v0, "\u663e\u793aUI\u9875\u9762"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 524
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/game91/framework/impl/DelegateSdk$11;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;Lcom/game91/framework/core/IWindow$WindowType;)V

    invoke-direct {p0, v0}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V

    .line 530
    return-void
.end method

.method public showInitDialog(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 761
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$16;

    invoke-direct {v0, p0, p1}, Lcom/game91/framework/impl/DelegateSdk$16;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V

    .line 767
    return-void
.end method

.method public showLoginSuccessDialog(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 781
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$18;

    invoke-direct {v0, p0, p1}, Lcom/game91/framework/impl/DelegateSdk$18;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V

    .line 787
    return-void
.end method

.method public showOrderNotifyDialog(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 821
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$22;

    invoke-direct {v0, p0, p1}, Lcom/game91/framework/impl/DelegateSdk$22;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V

    .line 827
    return-void
.end method

.method public showPayDialog(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 801
    new-instance v0, Lcom/game91/framework/impl/DelegateSdk$20;

    invoke-direct {v0, p0, p1}, Lcom/game91/framework/impl/DelegateSdk$20;-><init>(Lcom/game91/framework/impl/DelegateSdk;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/game91/framework/impl/DelegateSdk;->runUiThread(Ljava/lang/Runnable;)V

    .line 807
    return-void
.end method

.method public showSplash(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 749
    const-string v0, "\u663e\u793a\u95ea\u5c4f"

    invoke-static {v0}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/game91/framework/impl/DelegateSdk;->mSplashImpl:Lcom/game91/framework/core/ISplash;

    invoke-interface {v0, p1}, Lcom/game91/framework/core/ISplash;->showSplash(Landroid/app/Activity;)V

    .line 751
    return-void
.end method

.method public submitRoleInfo(Lcom/game91/framework/callback/RoleInfo;)V
    .locals 5
    .param p1, "roleInfo"    # Lcom/game91/framework/callback/RoleInfo;

    .prologue
    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u63d0\u4ea4\u7528\u6237\u89d2\u8272\u4fe1\u606f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/game91/framework/callback/RoleInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game91/framework/util/Logger;->log(Ljava/lang/String;)V

    .line 423
    :try_start_0
    invoke-virtual {p1}, Lcom/game91/framework/callback/RoleInfo;->hashMap()Ljava/util/Map;

    move-result-object v1

    .line 424
    .local v1, "map":Ljava/util/Map;
    const-string v2, "appId"

    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/game91/framework/util/DeviceUtils;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v2, "channelId"

    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/game91/framework/util/DeviceUtils;->getChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v2, "deviceUuid"

    iget-object v3, p0, Lcom/game91/framework/impl/DelegateSdk;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/game91/framework/util/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-static {}, Lcom/game91/framework/HttpManager;->api()Lcom/game91/framework/core/IHttp;

    move-result-object v2

    new-instance v3, Lcom/game91/framework/impl/DelegateSdk$7;

    invoke-direct {v3, p0}, Lcom/game91/framework/impl/DelegateSdk$7;-><init>(Lcom/game91/framework/impl/DelegateSdk;)V

    new-instance v4, Lcom/game91/framework/impl/DelegateSdk$8;

    invoke-direct {v4, p0}, Lcom/game91/framework/impl/DelegateSdk$8;-><init>(Lcom/game91/framework/impl/DelegateSdk;)V

    invoke-interface {v2, v1, v3, v4}, Lcom/game91/framework/core/IHttp;->submit(Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallString;Lcom/game91/framework/core/IHttp$CallError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v1    # "map":Ljava/util/Map;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/game91/framework/impl/DelegateSdk;->setRoleInfo(Lcom/game91/framework/callback/RoleInfo;)V

    .line 442
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
