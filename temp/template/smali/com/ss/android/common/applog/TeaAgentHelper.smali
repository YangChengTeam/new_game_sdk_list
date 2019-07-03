.class public Lcom/ss/android/common/applog/TeaAgentHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static init(Lcom/ss/android/common/applog/TeaConfig;)V
    .locals 4

    .prologue
    .line 26
    const-string v0, "TeaConfig"

    invoke-static {p0, v0}, Lcom/ss/android/common/applog/ac;->ensureNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/ss/android/common/applog/TeaConfig;->check()V

    .line 30
    invoke-virtual {p0}, Lcom/ss/android/common/applog/TeaConfig;->getInternationalConfig()Lcom/ss/android/common/applog/InternationalConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/common/applog/TeaAgentHelper;->initInternationalConfig(Lcom/ss/android/common/applog/InternationalConfig;)V

    .line 31
    invoke-virtual {p0}, Lcom/ss/android/common/applog/TeaConfig;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/ss/android/common/applog/TeaConfig;->getChannel()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lcom/ss/android/common/applog/TeaConfig;->getAid()I

    move-result v2

    .line 34
    new-instance v3, Lcom/ss/android/common/applog/ab;

    invoke-direct {v3, v0, v1, v2}, Lcom/ss/android/common/applog/ab;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    invoke-virtual {p0}, Lcom/ss/android/common/applog/TeaConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/common/applog/TeaConfig;->isAutoActiveUser()Z

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/ss/android/common/applog/AppLog;->init(Landroid/content/Context;ZLcom/ss/android/common/AppContext;)V

    .line 51
    return-void
.end method

.method private static initInternationalConfig(Lcom/ss/android/common/applog/InternationalConfig;)V
    .locals 2

    .prologue
    .line 14
    if-eqz p0, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/ss/android/common/applog/InternationalConfig;->getGoogleId()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    invoke-static {v0}, Lcom/ss/android/common/applog/AppLog;->setGoogleAId(Ljava/lang/String;)V

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/ss/android/common/applog/InternationalConfig;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/ss/android/common/applog/InternationalConfig;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/ss/android/common/applog/AppLog;->setAppLanguageAndRegion(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_1
    return-void
.end method
