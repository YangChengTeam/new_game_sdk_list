.class public Lcom/ss/android/common/applog/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/common/applog/af;->a:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/ss/android/common/applog/af;->a:Landroid/content/Context;

    const-string v1, "applog_stats"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    const-string v1, "last_wifi_bssid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/common/applog/af;->b:Ljava/lang/String;

    .line 38
    const-string v1, "last_check_bssid_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/common/applog/af;->c:J

    .line 39
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 42
    iget-object v2, p0, Lcom/ss/android/common/applog/af;->a:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 47
    iget-wide v4, p0, Lcom/ss/android/common/applog/af;->c:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 51
    iget-object v4, p0, Lcom/ss/android/common/applog/af;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/common/utility/NetworkUtils;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/ss/android/common/applog/af;->c()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/ss/android/common/applog/af;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 58
    iput-boolean v1, p0, Lcom/ss/android/common/applog/af;->d:Z

    .line 59
    iput-object v4, p0, Lcom/ss/android/common/applog/af;->e:Ljava/lang/String;

    .line 60
    iput-wide v2, p0, Lcom/ss/android/common/applog/af;->f:J

    move v0, v1

    .line 61
    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-boolean v0, p0, Lcom/ss/android/common/applog/af;->d:Z

    if-eqz v0, :cond_0

    .line 69
    iput-boolean v2, p0, Lcom/ss/android/common/applog/af;->d:Z

    .line 70
    iget-object v0, p0, Lcom/ss/android/common/applog/af;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/common/applog/af;->b:Ljava/lang/String;

    .line 71
    iget-wide v0, p0, Lcom/ss/android/common/applog/af;->f:J

    iput-wide v0, p0, Lcom/ss/android/common/applog/af;->c:J

    .line 72
    iget-object v0, p0, Lcom/ss/android/common/applog/af;->a:Landroid/content/Context;

    const-string v1, "applog_stats"

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    const-string v1, "last_wifi_bssid"

    iget-object v2, p0, Lcom/ss/android/common/applog/af;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    const-string v1, "last_check_bssid_time"

    iget-wide v2, p0, Lcom/ss/android/common/applog/af;->c:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-static {v0}, Lcom/bytedance/common/utility/c/a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 78
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/ss/android/common/applog/af;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 95
    :goto_0
    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/ss/android/common/applog/af;->a:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 85
    if-nez v0, :cond_1

    move-object v0, v1

    .line 86
    goto :goto_0

    .line 89
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    .line 95
    goto :goto_0
.end method
