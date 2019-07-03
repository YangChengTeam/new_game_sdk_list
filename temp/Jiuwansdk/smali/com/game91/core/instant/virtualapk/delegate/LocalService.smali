.class public Lcom/game91/core/instant/virtualapk/delegate/LocalService;
.super Landroid/app/Service;
.source "LocalService.java"


# static fields
.field public static final EXTRA_COMMAND:Ljava/lang/String; = "command"

.field public static final EXTRA_COMMAND_BIND_SERVICE:I = 0x3

.field public static final EXTRA_COMMAND_START_SERVICE:I = 0x1

.field public static final EXTRA_COMMAND_STOP_SERVICE:I = 0x2

.field public static final EXTRA_COMMAND_UNBIND_SERVICE:I = 0x4

.field public static final EXTRA_PLUGIN_LOCATION:Ljava/lang/String; = "plugin_location"

.field public static final EXTRA_TARGET:Ljava/lang/String; = "target"

.field private static final TAG:Ljava/lang/String; = "LocalService"


# instance fields
.field private mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 69
    invoke-static {}, Lcom/game91/core/instant/virtualapk/PluginManager;->getInstance()Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    .line 70
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 26
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 74
    if-eqz p1, :cond_0

    const-string v20, "target"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, "command"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 75
    :cond_0
    const/16 v20, 0x1

    .line 184
    :goto_0
    return v20

    .line 78
    :cond_1
    const-string v20, "target"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 79
    .local v18, "target":Landroid/content/Intent;
    const-string v20, "command"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 80
    .local v9, "command":I
    if-eqz v18, :cond_2

    if-gtz v9, :cond_3

    .line 81
    :cond_2
    const/16 v20, 0x1

    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 85
    .local v10, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v14

    .line 87
    .local v14, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v14}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 88
    packed-switch v9, :pswitch_data_0

    .line 184
    :goto_1
    const/16 v20, 0x1

    goto :goto_0

    .line 90
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getActivityThread(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityThread;

    .line 91
    .local v13, "mainThread":Landroid/app/ActivityThread;
    invoke-virtual {v13}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v6

    .line 94
    .local v6, "appThread":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->isServiceAvailable(Landroid/content/ComponentName;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->getService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v15

    .line 113
    .local v15, "service":Landroid/app/Service;
    :goto_2
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->getServiceCounter(Landroid/app/Service;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    goto :goto_1

    .line 98
    .end local v15    # "service":Landroid/app/Service;
    :cond_4
    :try_start_0
    invoke-virtual {v14}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/Service;

    .line 100
    .restart local v15    # "service":Landroid/app/Service;
    invoke-virtual {v14}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getApplication()Landroid/app/Application;

    move-result-object v5

    .line 101
    .local v5, "app":Landroid/app/Application;
    invoke-interface {v6}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 102
    .local v19, "token":Landroid/os/IBinder;
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    const-string v21, "attach"

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, Landroid/content/Context;

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-class v24, Landroid/app/ActivityThread;

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-class v24, Ljava/lang/String;

    aput-object v24, v22, v23

    const/16 v23, 0x3

    const-class v24, Landroid/os/IBinder;

    aput-object v24, v22, v23

    const/16 v23, 0x4

    const-class v24, Landroid/app/Application;

    aput-object v24, v22, v23

    const/16 v23, 0x5

    const-class v24, Ljava/lang/Object;

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 103
    .local v7, "attach":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/game91/core/instant/virtualapk/PluginManager;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v4

    .line 105
    .local v4, "am":Landroid/app/IActivityManager;
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v14}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v13, v20, v21

    const/16 v21, 0x2

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    aput-object v19, v20, v21

    const/16 v21, 0x4

    aput-object v5, v20, v21

    const/16 v21, 0x5

    aput-object v4, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v7, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {v15}, Landroid/app/Service;->onCreate()V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v15}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->rememberService(Landroid/content/ComponentName;Landroid/app/Service;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 108
    .end local v4    # "am":Landroid/app/IActivityManager;
    .end local v5    # "app":Landroid/app/Application;
    .end local v7    # "attach":Ljava/lang/reflect/Method;
    .end local v15    # "service":Landroid/app/Service;
    .end local v19    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v17

    .line 109
    .local v17, "t":Ljava/lang/Throwable;
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 117
    .end local v6    # "appThread":Landroid/app/IApplicationThread;
    .end local v13    # "mainThread":Landroid/app/ActivityThread;
    .end local v17    # "t":Ljava/lang/Throwable;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getActivityThread(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityThread;

    .line 118
    .restart local v13    # "mainThread":Landroid/app/ActivityThread;
    invoke-virtual {v13}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v6

    .line 119
    .restart local v6    # "appThread":Landroid/app/IApplicationThread;
    const/4 v15, 0x0

    .line 121
    .restart local v15    # "service":Landroid/app/Service;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->isServiceAvailable(Landroid/content/ComponentName;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->getService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v15

    .line 140
    :goto_3
    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v8

    .line 141
    .local v8, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "sc"

    invoke-static/range {v20 .. v21}, Lcom/game91/core/instant/virtualapk/utils/PluginUtil;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    .line 142
    .local v16, "serviceConnection":Landroid/os/IBinder;
    invoke-static/range {v16 .. v16}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v12

    .line 143
    .local v12, "iServiceConnection":Landroid/app/IServiceConnection;
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x1a

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    .line 144
    const-class v20, Landroid/app/IServiceConnection;

    const-string v21, "connected"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, Landroid/content/ComponentName;

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-class v24, Landroid/os/IBinder;

    aput-object v24, v22, v23

    const/16 v23, 0x2

    sget-object v24, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v24, v22, v23

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v10, v23, v24

    const/16 v24, 0x1

    aput-object v8, v23, v24

    const/16 v24, 0x2

    const/16 v25, 0x0

    .line 146
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    aput-object v25, v23, v24

    .line 144
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-static {v0, v12, v1, v2, v3}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->invokeNoException(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 150
    .end local v8    # "binder":Landroid/os/IBinder;
    .end local v12    # "iServiceConnection":Landroid/app/IServiceConnection;
    .end local v16    # "serviceConnection":Landroid/os/IBinder;
    :catch_1
    move-exception v11

    .line 151
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 125
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_2
    invoke-virtual {v14}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Landroid/app/Service;

    move-object v15, v0

    .line 127
    invoke-virtual {v14}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getApplication()Landroid/app/Application;

    move-result-object v5

    .line 128
    .restart local v5    # "app":Landroid/app/Application;
    invoke-interface {v6}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 129
    .restart local v19    # "token":Landroid/os/IBinder;
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    const-string v21, "attach"

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, Landroid/content/Context;

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-class v24, Landroid/app/ActivityThread;

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-class v24, Ljava/lang/String;

    aput-object v24, v22, v23

    const/16 v23, 0x3

    const-class v24, Landroid/os/IBinder;

    aput-object v24, v22, v23

    const/16 v23, 0x4

    const-class v24, Landroid/app/Application;

    aput-object v24, v22, v23

    const/16 v23, 0x5

    const-class v24, Ljava/lang/Object;

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 130
    .restart local v7    # "attach":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/game91/core/instant/virtualapk/PluginManager;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v4

    .line 132
    .restart local v4    # "am":Landroid/app/IActivityManager;
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v14}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v13, v20, v21

    const/16 v21, 0x2

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    aput-object v19, v20, v21

    const/16 v21, 0x4

    aput-object v5, v20, v21

    const/16 v21, 0x5

    aput-object v4, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v7, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {v15}, Landroid/app/Service;->onCreate()V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v15}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->rememberService(Landroid/content/ComponentName;Landroid/app/Service;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 135
    .end local v4    # "am":Landroid/app/IActivityManager;
    .end local v5    # "app":Landroid/app/Application;
    .end local v7    # "attach":Ljava/lang/reflect/Method;
    .end local v19    # "token":Landroid/os/IBinder;
    :catch_2
    move-exception v17

    .line 136
    .restart local v17    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 148
    .end local v17    # "t":Ljava/lang/Throwable;
    .restart local v8    # "binder":Landroid/os/IBinder;
    .restart local v12    # "iServiceConnection":Landroid/app/IServiceConnection;
    .restart local v16    # "serviceConnection":Landroid/os/IBinder;
    :cond_6
    :try_start_3
    invoke-interface {v12, v10, v8}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 156
    .end local v6    # "appThread":Landroid/app/IApplicationThread;
    .end local v8    # "binder":Landroid/os/IBinder;
    .end local v12    # "iServiceConnection":Landroid/app/IServiceConnection;
    .end local v13    # "mainThread":Landroid/app/ActivityThread;
    .end local v15    # "service":Landroid/app/Service;
    .end local v16    # "serviceConnection":Landroid/os/IBinder;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->forgetService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v15

    .line 157
    .restart local v15    # "service":Landroid/app/Service;
    if-eqz v15, :cond_7

    .line 159
    :try_start_4
    invoke-virtual {v15}, Landroid/app/Service;->onDestroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 160
    :catch_3
    move-exception v11

    .line 161
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v20, "LocalService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unable to stop service "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 164
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v20, "LocalService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " not found"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 169
    .end local v15    # "service":Landroid/app/Service;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/delegate/LocalService;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->forgetService(Landroid/content/ComponentName;)Landroid/app/Service;

    move-result-object v15

    .line 170
    .restart local v15    # "service":Landroid/app/Service;
    if-eqz v15, :cond_8

    .line 172
    :try_start_5
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 173
    invoke-virtual {v15}, Landroid/app/Service;->onDestroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 174
    :catch_4
    move-exception v11

    .line 175
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v20, "LocalService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unable to unbind service "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 178
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_8
    const-string v20, "LocalService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " not found"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
