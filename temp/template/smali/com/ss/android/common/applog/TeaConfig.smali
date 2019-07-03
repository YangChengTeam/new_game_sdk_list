.class public Lcom/ss/android/common/applog/TeaConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aid:I

.field private appName:Ljava/lang/String;

.field private autoActiveUser:Z

.field private channel:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private internationalConfig:Lcom/ss/android/common/applog/InternationalConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILcom/ss/android/common/applog/InternationalConfig;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ss/android/common/applog/TeaConfig;->context:Landroid/content/Context;

    .line 20
    iput-boolean p2, p0, Lcom/ss/android/common/applog/TeaConfig;->autoActiveUser:Z

    .line 21
    iput-object p3, p0, Lcom/ss/android/common/applog/TeaConfig;->appName:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/ss/android/common/applog/TeaConfig;->channel:Ljava/lang/String;

    .line 23
    iput p5, p0, Lcom/ss/android/common/applog/TeaConfig;->aid:I

    .line 24
    iput-object p6, p0, Lcom/ss/android/common/applog/TeaConfig;->internationalConfig:Lcom/ss/android/common/applog/InternationalConfig;

    .line 25
    return-void
.end method


# virtual methods
.method public check()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ss/android/common/applog/TeaConfig;->context:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v0, v1}, Lcom/ss/android/common/applog/ac;->ensureNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/ss/android/common/applog/TeaConfig;->appName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appName is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/ss/android/common/applog/TeaConfig;->channel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "channel is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    return-void
.end method

.method public getAid()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/ss/android/common/applog/TeaConfig;->aid:I

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ss/android/common/applog/TeaConfig;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ss/android/common/applog/TeaConfig;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ss/android/common/applog/TeaConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getInternationalConfig()Lcom/ss/android/common/applog/InternationalConfig;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ss/android/common/applog/TeaConfig;->internationalConfig:Lcom/ss/android/common/applog/InternationalConfig;

    return-object v0
.end method

.method public isAutoActiveUser()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/ss/android/common/applog/TeaConfig;->autoActiveUser:Z

    return v0
.end method
