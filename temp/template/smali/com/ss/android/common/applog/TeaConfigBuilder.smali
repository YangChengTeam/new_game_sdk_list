.class public Lcom/ss/android/common/applog/TeaConfigBuilder;
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/common/applog/TeaConfigBuilder;->autoActiveUser:Z

    .line 14
    iput-object p1, p0, Lcom/ss/android/common/applog/TeaConfigBuilder;->context:Landroid/content/Context;

    .line 15
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/ss/android/common/applog/TeaConfigBuilder;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/ss/android/common/applog/TeaConfigBuilder;

    invoke-direct {v0, p0}, Lcom/ss/android/common/applog/TeaConfigBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public createTeaConfig()Lcom/ss/android/common/applog/TeaConfig;
    .locals 7

    .prologue
    .line 47
    new-instance v0, Lcom/ss/android/common/applog/TeaConfig;

    iget-object v1, p0, Lcom/ss/android/common/applog/TeaConfigBuilder;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/ss/android/common/applog/TeaConfigBuilder;->autoActiveUser:Z

    iget-object v3, p0, Lcom/ss/android/common/applog/TeaConfigBuilder;->appName:Ljava/lang/String;

    iget-object v4, p0, Lcom/ss/android/common/applog/TeaConfigBuilder;->channel:Ljava/lang/String;

    iget v5, p0, Lcom/ss/android/common/applog/TeaConfigBuilder;->aid:I

    iget-object v6, p0, Lcom/ss/android/common/applog/TeaConfigBuilder;->internationalConfig:Lcom/ss/android/common/applog/InternationalConfig;

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/common/applog/TeaConfig;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILcom/ss/android/common/applog/InternationalConfig;)V

    return-object v0
.end method

.method public setAid(I)Lcom/ss/android/common/applog/TeaConfigBuilder;
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/ss/android/common/applog/TeaConfigBuilder;->aid:I

    .line 38
    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/ss/android/common/applog/TeaConfigBuilder;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ss/android/common/applog/TeaConfigBuilder;->appName:Ljava/lang/String;

    .line 28
    return-object p0
.end method

.method public setAutoActiveUser(Z)Lcom/ss/android/common/applog/TeaConfigBuilder;
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/ss/android/common/applog/TeaConfigBuilder;->autoActiveUser:Z

    .line 23
    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/ss/android/common/applog/TeaConfigBuilder;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ss/android/common/applog/TeaConfigBuilder;->channel:Ljava/lang/String;

    .line 33
    return-object p0
.end method

.method public setInternationalConfig(Lcom/ss/android/common/applog/InternationalConfig;)Lcom/ss/android/common/applog/TeaConfigBuilder;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ss/android/common/applog/TeaConfigBuilder;->internationalConfig:Lcom/ss/android/common/applog/InternationalConfig;

    .line 43
    return-object p0
.end method
