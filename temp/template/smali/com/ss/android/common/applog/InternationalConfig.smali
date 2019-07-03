.class public Lcom/ss/android/common/applog/InternationalConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private googleId:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private region:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ss/android/common/applog/InternationalConfig;->googleId:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/ss/android/common/applog/InternationalConfig;->language:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/ss/android/common/applog/InternationalConfig;->region:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getGoogleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ss/android/common/applog/InternationalConfig;->googleId:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ss/android/common/applog/InternationalConfig;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ss/android/common/applog/InternationalConfig;->region:Ljava/lang/String;

    return-object v0
.end method
