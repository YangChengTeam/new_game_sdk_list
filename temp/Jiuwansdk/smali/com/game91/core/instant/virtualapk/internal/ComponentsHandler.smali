.class public Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;
.super Ljava/lang/Object;
.source "ComponentsHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PluginManager"


# instance fields
.field private mBoundServices:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game91/core/instant/virtualapk/utils/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

.field private mServiceCounters:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game91/core/instant/virtualapk/utils/ArrayMap",
            "<",
            "Landroid/app/Service;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private mServices:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game91/core/instant/virtualapk/utils/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private mStubActivityInfo:Lcom/game91/core/instant/virtualapk/internal/StubActivityInfo;


# direct methods
.method public constructor <init>(Lcom/game91/core/instant/virtualapk/PluginManager;)V
    .locals 1
    .param p1, "pluginManager"    # Lcom/game91/core/instant/virtualapk/PluginManager;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/game91/core/instant/virtualapk/internal/StubActivityInfo;

    invoke-direct {v0}, Lcom/game91/core/instant/virtualapk/internal/StubActivityInfo;-><init>()V

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mStubActivityInfo:Lcom/game91/core/instant/virtualapk/internal/StubActivityInfo;

    .line 47
    new-instance v0, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    invoke-direct {v0}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mServices:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    .line 48
    new-instance v0, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    invoke-direct {v0}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mBoundServices:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    .line 49
    new-instance v0, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    invoke-direct {v0}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mServiceCounters:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    .line 52
    iput-object p1, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    .line 53
    invoke-virtual {p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private dispatchStubActivity(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    .line 90
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 91
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "targetClassName":Ljava/lang/String;
    iget-object v7, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v7, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/Intent;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v3

    .line 93
    .local v3, "loadedPlugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v3, v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 94
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_0

    .line 95
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can not find "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 97
    :cond_0
    iget v2, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 98
    .local v2, "launchMode":I
    invoke-virtual {v3}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 99
    .local v6, "themeObj":Landroid/content/res/Resources$Theme;
    iget v7, v1, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v6, v7, v11}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 100
    iget-object v7, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mStubActivityInfo:Lcom/game91/core/instant/virtualapk/internal/StubActivityInfo;

    invoke-virtual {v7, v5, v2, v6}, Lcom/game91/core/instant/virtualapk/internal/StubActivityInfo;->getStubActivity(Ljava/lang/String;ILandroid/content/res/Resources$Theme;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "stubActivity":Ljava/lang/String;
    const-string v7, "PluginManager"

    const-string v8, "dispatchStubActivity,[%s -> %s]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    aput-object v4, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v7, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    return-void
.end method


# virtual methods
.method public forgetIServiceConnection(Landroid/os/IBinder;)Landroid/content/Intent;
    .locals 3
    .param p1, "iServiceConnection"    # Landroid/os/IBinder;

    .prologue
    .line 155
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mBoundServices:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    monitor-enter v2

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mBoundServices:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    monitor-exit v2

    return-object v0

    .line 158
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forgetService(Landroid/content/ComponentName;)Landroid/app/Service;
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 141
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mServices:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    monitor-enter v2

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mServices:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 143
    .local v0, "service":Landroid/app/Service;
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mServiceCounters:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    invoke-virtual {v1, v0}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-exit v2

    return-object v0

    .line 145
    .end local v0    # "service":Landroid/app/Service;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getService(Landroid/content/ComponentName;)Landroid/app/Service;
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mServices:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    return-object v0
.end method

.method public getServiceCounter(Landroid/app/Service;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p1, "service"    # Landroid/app/Service;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mServiceCounters:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public isServiceAvailable(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mServices:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public markIntentIfNeeded(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "targetPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "targetClassName":Ljava/lang/String;
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v2, v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "isPlugin"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    const-string v2, "target.package"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v2, "target.activity"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-direct {p0, p1}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->dispatchStubActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public remberIServiceConnection(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 2
    .param p1, "iServiceConnection"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mBoundServices:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mBoundServices:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    monitor-exit v1

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rememberService(Landroid/content/ComponentName;Landroid/app/Service;)V
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/app/Service;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mServices:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mServices:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mServiceCounters:Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v0, p2, v2}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public transformIntentToExplicitAsNeeded(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 61
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v2, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 64
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    .line 65
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .restart local v0    # "component":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 70
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object p1
.end method
