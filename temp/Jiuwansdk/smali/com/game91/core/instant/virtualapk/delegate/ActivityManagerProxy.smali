.class public Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;
.super Ljava/lang/Object;
.source "ActivityManagerProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field public static final INTENT_SENDER_ACTIVITY:I = 0x2

.field public static final INTENT_SENDER_ACTIVITY_RESULT:I = 0x3

.field public static final INTENT_SENDER_BROADCAST:I = 0x1

.field public static final INTENT_SENDER_SERVICE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "IActivityManagerProxy"


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;


# direct methods
.method public constructor <init>(Lcom/game91/core/instant/virtualapk/PluginManager;Landroid/app/IActivityManager;)V
    .locals 0
    .param p1, "pluginManager"    # Lcom/game91/core/instant/virtualapk/PluginManager;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    .line 63
    iput-object p2, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    .line 64
    return-void
.end method

.method private bindService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 176
    const/4 v3, 0x2

    aget-object v2, p3, v3

    check-cast v2, Landroid/content/Intent;

    .line 177
    .local v2, "target":Landroid/content/Intent;
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 178
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_1

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 187
    :goto_0
    return-object v3

    .line 183
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "sc"

    aget-object v3, p3, v5

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v0, v4, v3}, Lcom/game91/core/instant/virtualapk/utils/PluginUtil;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 185
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v4, 0x3

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    .line 186
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v3}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v4

    aget-object v3, p3, v5

    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {v4, v3, v2}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->remberIServiceConnection(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 187
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method private getIntentSender(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 229
    iget-object v5, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v5}, Lcom/game91/core/instant/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "hostPackageName":Ljava/lang/String;
    aput-object v0, p2, v8

    .line 232
    aget-object v5, p2, v9

    check-cast v5, [Landroid/content/Intent;

    check-cast v5, [Landroid/content/Intent;

    aget-object v3, v5, v7

    .line 233
    .local v3, "target":Landroid/content/Intent;
    aget-object v5, p2, v7

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 234
    .local v1, "intentSenderType":I
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    .line 235
    iget-object v5, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v5}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->transformIntentToExplicitAsNeeded(Landroid/content/Intent;)Landroid/content/Intent;

    .line 236
    iget-object v5, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v5}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->markIntentIfNeeded(Landroid/content/Intent;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    const/4 v5, 0x4

    if-ne v1, v5, :cond_2

    .line 238
    iget-object v5, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v5, v3, v7}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 239
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    .line 241
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6, v8}, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->wrapperTargetIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/Intent;

    move-result-object v4

    .line 242
    .local v4, "wrapperIntent":Landroid/content/Intent;
    aget-object v5, p2, v9

    check-cast v5, [Landroid/content/Intent;

    check-cast v5, [Landroid/content/Intent;

    aput-object v4, v5, v7

    goto :goto_0

    .line 244
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "wrapperIntent":Landroid/content/Intent;
    :cond_2
    if-ne v1, v8, :cond_0

    goto :goto_0
.end method

.method public static newInstance(Lcom/game91/core/instant/virtualapk/PluginManager;Landroid/app/IActivityManager;)Landroid/app/IActivityManager;
    .locals 4
    .param p0, "pluginManager"    # Lcom/game91/core/instant/virtualapk/PluginManager;
    .param p1, "activityManager"    # Landroid/app/IActivityManager;

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/app/IActivityManager;

    aput-object v3, v1, v2

    new-instance v2, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;

    invoke-direct {v2, p0, p1}, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;-><init>(Lcom/game91/core/instant/virtualapk/PluginManager;Landroid/app/IActivityManager;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method private overridePendingTransition(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 250
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "hostPackageName":Ljava/lang/String;
    const/4 v1, 0x1

    aput-object v0, p2, v1

    .line 252
    return-void
.end method

.method private startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;
    .locals 2
    .param p1, "target"    # Landroid/content/Intent;
    .param p2, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "command"    # I

    .prologue
    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->wrapperTargetIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/Intent;

    move-result-object v0

    .line 205
    .local v0, "wrapperIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private startService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 139
    aget-object v0, p3, v4

    check-cast v0, Landroid/app/IApplicationThread;

    .line 140
    .local v0, "appThread":Landroid/app/IApplicationThread;
    aget-object v2, p3, v5

    check-cast v2, Landroid/content/Intent;

    .line 141
    .local v2, "target":Landroid/content/Intent;
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v3, v2, v4}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 142
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_1

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 147
    :goto_0
    return-object v3

    :cond_1
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_0
.end method

.method private stopService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 151
    aget-object v1, p3, v5

    check-cast v1, Landroid/content/Intent;

    .line 152
    .local v1, "target":Landroid/content/Intent;
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 153
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_1

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 159
    :goto_0
    return-object v2

    .line 158
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    .line 159
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method private stopServiceToken(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 163
    aget-object v0, p3, v4

    check-cast v0, Landroid/content/ComponentName;

    .line 164
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 165
    .local v2, "target":Landroid/content/Intent;
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v3, v2, v4}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 166
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_1

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 172
    :goto_0
    return-object v3

    .line 171
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    .line 172
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method private unbindService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 191
    aget-object v0, p3, v4

    check-cast v0, Landroid/os/IBinder;

    .line 192
    .local v0, "iServiceConnection":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v3}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->forgetIServiceConnection(Landroid/os/IBinder;)Landroid/content/Intent;

    move-result-object v2

    .line 193
    .local v2, "target":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 195
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 200
    :goto_0
    return-object v3

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v3, v2, v4}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 199
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->startDelegateServiceForTarget(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/ComponentName;

    .line 200
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method private wrapperTargetIntent(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;Landroid/os/Bundle;I)Landroid/content/Intent;
    .locals 7
    .param p1, "target"    # Landroid/content/Intent;
    .param p2, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "command"    # I

    .prologue
    .line 210
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 211
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "pluginLocation":Ljava/lang/String;
    invoke-static {p2}, Lcom/game91/core/instant/virtualapk/utils/PluginUtil;->isLocalService(Landroid/content/pm/ServiceInfo;)Z

    move-result v2

    .line 215
    .local v2, "local":Z
    if-eqz v2, :cond_1

    const-class v0, Lcom/game91/core/instant/virtualapk/delegate/LocalService;

    .line 216
    .local v0, "delegate":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-virtual {v4}, Lcom/game91/core/instant/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 218
    const-string v4, "target"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    const-string v4, "command"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    const-string v4, "plugin_location"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    if-eqz p3, :cond_0

    .line 222
    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 225
    :cond_0
    return-object v1

    .line 215
    .end local v0    # "delegate":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-class v0, Lcom/game91/core/instant/virtualapk/delegate/RemoteService;

    goto :goto_0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 68
    const-string v6, "startService"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 70
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->startService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 114
    :goto_0
    return-object v6

    .line 71
    :catch_0
    move-exception v4

    .line 72
    .local v4, "e":Ljava/lang/Throwable;
    const-string v6, "IActivityManagerProxy"

    const-string v7, "Start service error"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p2, v6, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v6

    goto :goto_0

    .line 74
    :cond_1
    const-string v6, "stopService"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 76
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->stopService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    goto :goto_0

    .line 77
    :catch_1
    move-exception v4

    .line 78
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string v6, "IActivityManagerProxy"

    const-string v7, "Stop Service error"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 80
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_2
    const-string v6, "stopServiceToken"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 82
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->stopServiceToken(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v6

    goto :goto_0

    .line 83
    :catch_2
    move-exception v4

    .line 84
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string v6, "IActivityManagerProxy"

    const-string v7, "Stop service token error"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 86
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_3
    const-string v6, "bindService"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 88
    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->bindService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v6

    goto :goto_0

    .line 89
    :catch_3
    move-exception v4

    .line 90
    .restart local v4    # "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 92
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_4
    const-string v6, "unbindService"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 94
    :try_start_5
    invoke-direct {p0, p1, p2, p3}, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->unbindService(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v6

    goto :goto_0

    .line 95
    :catch_4
    move-exception v4

    .line 96
    .restart local v4    # "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 98
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_5
    const-string v6, "getIntentSender"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 100
    :try_start_6
    invoke-direct {p0, p2, p3}, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->getIntentSender(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1

    .line 101
    :catch_5
    move-exception v4

    .line 102
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 104
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v6, "overridePendingTransition"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    :try_start_7
    invoke-direct {p0, p2, p3}, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->overridePendingTransition(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_1

    .line 107
    :catch_6
    move-exception v4

    .line 108
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 115
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v5

    .line 116
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 117
    .local v2, "c":Ljava/lang/Throwable;
    if-eqz v2, :cond_7

    instance-of v6, v2, Landroid/os/DeadObjectException;

    if-eqz v6, :cond_7

    .line 119
    const-string v6, "activity"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 120
    .local v1, "ams":Landroid/os/IBinder;
    if-eqz v1, :cond_7

    .line 121
    invoke-static {v1}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 122
    .local v0, "am":Landroid/app/IActivityManager;
    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->mActivityManager:Landroid/app/IActivityManager;

    .line 126
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "ams":Landroid/os/IBinder;
    :cond_7
    move-object v3, v5

    .line 128
    .local v3, "cause":Ljava/lang/Throwable;
    :cond_8
    instance-of v6, v3, Landroid/os/RemoteException;

    if-eqz v6, :cond_9

    .line 129
    throw v3

    .line 131
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_8

    .line 133
    if-eqz v2, :cond_a

    .end local v2    # "c":Ljava/lang/Throwable;
    :goto_2
    throw v2

    .restart local v2    # "c":Ljava/lang/Throwable;
    :cond_a
    move-object v2, v5

    goto :goto_2
.end method
