.class public Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;
.super Landroid/app/Instrumentation;
.source "VAInstrumentation.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final TAG:Ljava/lang/String; = "VAInstrumentation"


# instance fields
.field private mBase:Landroid/app/Instrumentation;

.field mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;


# direct methods
.method public constructor <init>(Lcom/game91/core/instant/virtualapk/PluginManager;Landroid/app/Instrumentation;)V
    .locals 0
    .param p1, "pluginManager"    # Lcom/game91/core/instant/virtualapk/PluginManager;
    .param p2, "base"    # Landroid/app/Instrumentation;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    .line 53
    iput-object p2, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    .line 54
    return-void
.end method

.method private realExecStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 10
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 78
    const/4 v3, 0x0

    .line 80
    .local v3, "result":Landroid/app/Instrumentation$ActivityResult;
    const/4 v4, 0x7

    :try_start_0
    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-class v5, Landroid/app/Activity;

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-class v5, Landroid/content/Intent;

    aput-object v5, v2, v4

    const/4 v4, 0x5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v2, v4

    .line 82
    .local v2, "parameterTypes":[Ljava/lang/Class;
    const-class v4, Landroid/app/Instrumentation;

    iget-object v5, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    const-string v6, "execStartActivity"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    const/4 v8, 0x4

    aput-object p5, v7, v8

    const/4 v8, 0x5

    .line 84
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    aput-object p7, v7, v8

    .line 82
    invoke-static {v4, v5, v6, v2, v7}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/Instrumentation$ActivityResult;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v2    # "parameterTypes":[Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Landroid/content/ActivityNotFoundException;

    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Landroid/content/ActivityNotFoundException;

    throw v4

    .line 89
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private realExecStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 10
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Fragment;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 117
    const/4 v3, 0x0

    .line 119
    .local v3, "result":Landroid/app/Instrumentation$ActivityResult;
    const/4 v4, 0x7

    :try_start_0
    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-class v5, Landroid/app/Fragment;

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-class v5, Landroid/content/Intent;

    aput-object v5, v2, v4

    const/4 v4, 0x5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v2, v4

    .line 121
    .local v2, "parameterTypes":[Ljava/lang/Class;
    const-class v4, Landroid/app/Instrumentation;

    iget-object v5, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    const-string v6, "execStartActivity"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    const/4 v8, 0x4

    aput-object p5, v7, v8

    const/4 v8, 0x5

    .line 123
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    aput-object p7, v7, v8

    .line 121
    invoke-static {v4, v5, v6, v2, v7}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/Instrumentation$ActivityResult;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v2    # "parameterTypes":[Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Landroid/content/ActivityNotFoundException;

    if-eqz v4, :cond_0

    .line 126
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Landroid/content/ActivityNotFoundException;

    throw v4

    .line 128
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private realExecStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 10
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 137
    const/4 v3, 0x0

    .line 139
    .local v3, "result":Landroid/app/Instrumentation$ActivityResult;
    const/4 v4, 0x7

    :try_start_0
    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-class v5, Landroid/content/Intent;

    aput-object v5, v2, v4

    const/4 v4, 0x5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v2, v4

    .line 141
    .local v2, "parameterTypes":[Ljava/lang/Class;
    const-class v4, Landroid/app/Instrumentation;

    iget-object v5, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    const-string v6, "execStartActivity"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    const/4 v8, 0x4

    aput-object p5, v7, v8

    const/4 v8, 0x5

    .line 143
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    aput-object p7, v7, v8

    .line 141
    invoke-static {v4, v5, v6, v2, v7}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/Instrumentation$ActivityResult;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v2    # "parameterTypes":[Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Landroid/content/ActivityNotFoundException;

    if-eqz v4, :cond_0

    .line 146
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Landroid/content/ActivityNotFoundException;

    throw v4

    .line 148
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 204
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v3}, Lcom/game91/core/instant/virtualapk/utils/PluginUtil;->isIntentFromPlugin(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 207
    .local v1, "base":Landroid/content/Context;
    :try_start_0
    iget-object v5, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v5, v3}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/Intent;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v4

    .line 208
    .local v4, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mResources"

    invoke-virtual {v4}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v5, v1, v6, v7}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    const-class v5, Landroid/content/ContextWrapper;

    const-string v6, "mBase"

    invoke-virtual {v4}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, p1, v6, v7}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    const-class v5, Landroid/app/Activity;

    const-string v6, "mApplication"

    invoke-virtual {v4}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-static {v5, p1, v6, v7}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    const-class v5, Landroid/view/ContextThemeWrapper;

    const-string v6, "mBase"

    invoke-virtual {v4}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, p1, v6, v7}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->setFieldNoException(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    invoke-static {v3}, Lcom/game91/core/instant/virtualapk/utils/PluginUtil;->getComponent(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 215
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v5, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 216
    iget v5, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p1, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    iget v6, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "base":Landroid/content/Context;
    .end local v4    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v5, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 228
    return-void

    .line 221
    .restart local v1    # "base":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 6
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->transformIntentToExplicitAsNeeded(Landroid/content/Intent;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "VAInstrumentation"

    const-string v2, "execStartActivity[%s : %s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 63
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 62
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->markIntentIfNeeded(Landroid/content/Intent;)V

    .line 68
    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->realExecStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 71
    .local v0, "result":Landroid/app/Instrumentation$ActivityResult;
    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 6
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Fragment;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->transformIntentToExplicitAsNeeded(Landroid/content/Intent;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "VAInstrumentation"

    const-string v2, "execStartActivity[%s : %s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 102
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 101
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->markIntentIfNeeded(Landroid/content/Intent;)V

    .line 107
    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->realExecStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 110
    .local v0, "result":Landroid/app/Instrumentation$ActivityResult;
    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 6
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->transformIntentToExplicitAsNeeded(Landroid/content/Intent;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "VAInstrumentation"

    const-string v2, "execStartActivity[%s : %s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 161
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 160
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->markIntentIfNeeded(Landroid/content/Intent;)V

    .line 166
    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->realExecStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 168
    .local v0, "result":Landroid/app/Instrumentation$ActivityResult;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 232
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    .line 234
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    .local v3, "r":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "intent"

    invoke-static {v5, v3, v6}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 237
    .local v2, "intent":Landroid/content/Intent;
    const-class v5, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 238
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "activityInfo"

    invoke-static {v5, v3, v6}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 240
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-static {v2}, Lcom/game91/core/instant/virtualapk/utils/PluginUtil;->isIntentFromPlugin(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 241
    iget-object v5, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v5}, Lcom/game91/core/instant/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/game91/core/instant/virtualapk/utils/PluginUtil;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v4

    .line 242
    .local v4, "theme":I
    if-eqz v4, :cond_0

    .line 243
    const-string v5, "VAInstrumentation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolve theme, current theme:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  after :0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput v4, v0, Landroid/content/pm/ActivityInfo;->theme:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "theme":I
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return v5

    .line 247
    .restart local v3    # "r":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 11
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v6, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {p3}, Lcom/game91/core/instant/virtualapk/utils/PluginUtil;->getComponent(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 177
    .local v1, "component":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v6, v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v4

    .line 178
    .local v4, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, "targetClassName":Ljava/lang/String;
    const-string v6, "VAInstrumentation"

    const-string v7, "newActivity[%s : %s/%s]"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz v4, :cond_0

    .line 183
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v4}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7, v5, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 184
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, p3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 188
    :try_start_1
    const-class v6, Landroid/view/ContextThemeWrapper;

    const-string v7, "mResources"

    invoke-virtual {v4}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v6, v0, v7, v8}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 189
    :catch_1
    move-exception v3

    .line 191
    .local v3, "ignored":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
