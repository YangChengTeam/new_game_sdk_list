.class public Lcom/ss/android/common/applog/TeaAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TeaAgent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activeUser(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-static {p0}, Lcom/ss/android/common/applog/AppLog;->activeUser(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public static getAbTestConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {p0, p1}, Lcom/ss/android/common/applog/AbtestConfig;->getConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getAbTestConfig(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {p0, p1, p2}, Lcom/ss/android/common/applog/AbtestConfig;->getConfig(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getAbTestConfigs()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/ss/android/common/applog/AbtestConfig;->getConfigs()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getInstallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->getInstallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSSIDs(Ljava/util/Map;)V
    .locals 0
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
    .line 108
    invoke-static {p0}, Lcom/ss/android/common/applog/AppLog;->getSSIDs(Ljava/util/Map;)V

    .line 109
    return-void
.end method

.method public static getServerDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->getServerDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->getServerSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->getUserUniqueID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/ss/android/common/applog/TeaConfig;)V
    .locals 0

    .prologue
    .line 22
    invoke-static {p0}, Lcom/ss/android/common/applog/TeaAgentHelper;->init(Lcom/ss/android/common/applog/TeaConfig;)V

    .line 23
    return-void
.end method

.method public static onActivityCreate(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/ss/android/common/applog/AppLog;->onActivityCreate(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public static onActivityCreate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0}, Lcom/ss/android/common/applog/AppLog;->onActivityCreate(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 69
    const-string v1, "umeng"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v6, v4

    move-object v9, v3

    invoke-static/range {v0 .. v9}, Lcom/ss/android/common/applog/TeaAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLorg/json/JSONObject;)V

    .line 70
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 65
    const-string v1, "umeng"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, v4

    invoke-static/range {v0 .. v9}, Lcom/ss/android/common/applog/TeaAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLorg/json/JSONObject;)V

    .line 66
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 10

    .prologue
    .line 61
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lcom/ss/android/common/applog/TeaAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLorg/json/JSONObject;)V

    .line 62
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .locals 10

    .prologue
    .line 51
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/ss/android/common/applog/TeaAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLorg/json/JSONObject;)V

    .line 52
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 10

    .prologue
    .line 56
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/ss/android/common/applog/TeaAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLorg/json/JSONObject;)V

    .line 57
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 74
    invoke-static/range {p0 .. p9}, Lcom/ss/android/common/applog/AppLog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLorg/json/JSONObject;)V

    .line 75
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0}, Lcom/ss/android/common/applog/AppLog;->onPause(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public static onQuit()V
    .locals 0

    .prologue
    .line 38
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->onQuit()V

    .line 39
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-static {p0}, Lcom/ss/android/common/applog/AppLog;->onResume(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public static registerCrashHandler(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 116
    invoke-static {p0}, Lcom/ss/android/common/applog/AppLog;->a(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public static setConfigUpdateListener(Lcom/ss/android/common/applog/AppLog$ConfigUpdateListener;)V
    .locals 0

    .prologue
    .line 87
    invoke-static {p0}, Lcom/ss/android/common/applog/AppLog;->setConfigUpdateListener(Lcom/ss/android/common/applog/AppLog$ConfigUpdateListener;)V

    .line 88
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .prologue
    .line 121
    invoke-static {p0}, Lcom/ss/android/common/applog/AppLog;->setDebug(Z)V

    .line 122
    return-void
.end method

.method public static setExternalVersions(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    invoke-static {p0}, Lcom/ss/android/common/applog/AbtestConfig;->setExternalVersions(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static setHeaderInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {p0}, Lcom/ss/android/common/applog/AppLog;->setHeaderInfo(Ljava/util/Map;)V

    .line 80
    return-void
.end method

.method public static setSenderAddress(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/ss/android/common/util/EventsSender;->inst()Lcom/ss/android/common/util/EventsSender;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/common/util/EventsSender;->setHost(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static setSenderEnable(Z)V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/ss/android/common/util/EventsSender;->inst()Lcom/ss/android/common/util/EventsSender;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/common/util/EventsSender;->setSenderEnable(Z)V

    .line 130
    return-void
.end method

.method public static setUserUniqueID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    invoke-static {p0}, Lcom/ss/android/common/applog/AppLog;->setUserUniqueID(Ljava/lang/String;)V

    .line 84
    return-void
.end method
