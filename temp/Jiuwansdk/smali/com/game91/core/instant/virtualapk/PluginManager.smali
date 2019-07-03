.class public Lcom/game91/core/instant/virtualapk/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/core/instant/virtualapk/PluginManager$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PluginManager"

.field private static volatile sInstance:Lcom/game91/core/instant/virtualapk/PluginManager;


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game91/core/instant/virtualapk/PluginManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentsHandler:Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

.field private mContext:Landroid/content/Context;

.field private mIContentProvider:Landroid/content/IContentProvider;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field private mPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/game91/core/instant/virtualapk/PluginManager;->sInstance:Lcom/game91/core/instant/virtualapk/PluginManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    .line 87
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    .local v0, "app":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 103
    iput-object p1, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    .line 107
    .end local v0    # "app":Landroid/content/Context;
    :goto_0
    invoke-direct {p0}, Lcom/game91/core/instant/virtualapk/PluginManager;->prepare()V

    .line 108
    return-void

    .line 105
    .restart local v0    # "app":Landroid/content/Context;
    :cond_0
    check-cast v0, Landroid/app/Application;

    .end local v0    # "app":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/game91/core/instant/virtualapk/PluginManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/game91/core/instant/virtualapk/PluginManager;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/game91/core/instant/virtualapk/PluginManager;->doInWorkThread()V

    return-void
.end method

.method private doInWorkThread()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public static getInstance()Lcom/game91/core/instant/virtualapk/PluginManager;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/game91/core/instant/virtualapk/PluginManager;->sInstance:Lcom/game91/core/instant/virtualapk/PluginManager;

    if-nez v0, :cond_1

    .line 76
    const-class v1, Lcom/game91/core/instant/virtualapk/PluginManager;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/game91/core/instant/virtualapk/PluginManager;->sInstance:Lcom/game91/core/instant/virtualapk/PluginManager;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-direct {v0}, Lcom/game91/core/instant/virtualapk/PluginManager;-><init>()V

    sput-object v0, Lcom/game91/core/instant/virtualapk/PluginManager;->sInstance:Lcom/game91/core/instant/virtualapk/PluginManager;

    .line 79
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    sget-object v0, Lcom/game91/core/instant/virtualapk/PluginManager;->sInstance:Lcom/game91/core/instant/virtualapk/PluginManager;

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private hookDataBindingUtil()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method private hookIContentProviderAsNeeded()V
    .locals 21

    .prologue
    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->getUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 208
    .local v15, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wakeup"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 210
    const/4 v6, 0x0

    .line 211
    .local v6, "authority":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .line 212
    .local v11, "mProvider":Ljava/lang/reflect/Field;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getActivityThread(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread;

    .line 213
    .local v4, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string v18, "mProviderMap"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v4, v1}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 214
    .local v12, "mProviderMap":Ljava/util/Map;
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 215
    .local v9, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 216
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 217
    .local v8, "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 218
    .local v10, "key":Ljava/lang/Object;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    .line 220
    .local v16, "val":Ljava/lang/Object;
    instance-of v0, v10, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 221
    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 229
    .local v5, "auth":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 230
    if-nez v11, :cond_1

    .line 231
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string v18, "mProvider"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 232
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 234
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/IContentProvider;

    .line 235
    .local v14, "rawProvider":Landroid/content/IContentProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lcom/game91/core/instant/virtualapk/delegate/IContentProviderProxy;->newInstance(Landroid/content/Context;Landroid/content/IContentProvider;)Landroid/content/IContentProvider;

    move-result-object v13

    .line 236
    .local v13, "proxy":Landroid/content/IContentProvider;
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/game91/core/instant/virtualapk/PluginManager;->mIContentProvider:Landroid/content/IContentProvider;

    .line 237
    const-string v17, "PluginManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "hookIContentProvider succeed : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/PluginManager;->mIContentProvider:Landroid/content/IContentProvider;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v4    # "activityThread":Landroid/app/ActivityThread;
    .end local v5    # "auth":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;
    .end local v9    # "iter":Ljava/util/Iterator;
    .end local v10    # "key":Ljava/lang/Object;
    .end local v12    # "mProviderMap":Ljava/util/Map;
    .end local v13    # "proxy":Landroid/content/IContentProvider;
    .end local v14    # "rawProvider":Landroid/content/IContentProvider;
    .end local v16    # "val":Ljava/lang/Object;
    :cond_2
    :goto_1
    return-void

    .line 223
    .restart local v4    # "activityThread":Landroid/app/ActivityThread;
    .restart local v8    # "entry":Ljava/util/Map$Entry;
    .restart local v9    # "iter":Ljava/util/Iterator;
    .restart local v10    # "key":Ljava/lang/Object;
    .restart local v12    # "mProviderMap":Ljava/util/Map;
    .restart local v16    # "val":Ljava/lang/Object;
    :cond_3
    if-nez v6, :cond_4

    .line 224
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string v18, "authority"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 225
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 227
    :cond_4
    invoke-virtual {v6, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v5    # "auth":Ljava/lang/String;
    goto :goto_0

    .line 241
    .end local v4    # "activityThread":Landroid/app/ActivityThread;
    .end local v5    # "auth":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;
    .end local v9    # "iter":Ljava/util/Iterator;
    .end local v10    # "key":Ljava/lang/Object;
    .end local v12    # "mProviderMap":Ljava/util/Map;
    .end local v16    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 242
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private hookInstrumentationAndHandler()V
    .locals 6

    .prologue
    .line 186
    :try_start_0
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getInstrumentation(Landroid/content/Context;)Landroid/app/Instrumentation;

    move-result-object v1

    .line 187
    .local v1, "baseInstrumentation":Landroid/app/Instrumentation;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lbe"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 192
    :cond_0
    invoke-static {}, Lcom/game91/core/instant/virtualapk/Systems;->isHook()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    new-instance v3, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;

    invoke-direct {v3, p0, v1}, Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;-><init>(Lcom/game91/core/instant/virtualapk/PluginManager;Landroid/app/Instrumentation;)V

    .line 194
    .local v3, "instrumentation":Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getActivityThread(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 195
    .local v0, "activityThread":Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->setInstrumentation(Ljava/lang/Object;Landroid/app/Instrumentation;)V

    .line 196
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->setHandlerCallback(Landroid/content/Context;Landroid/os/Handler$Callback;)V

    .line 197
    iput-object v3, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mInstrumentation:Landroid/app/Instrumentation;

    .line 204
    .end local v0    # "activityThread":Ljava/lang/Object;
    .end local v1    # "baseInstrumentation":Landroid/app/Instrumentation;
    .end local v3    # "instrumentation":Lcom/game91/core/instant/virtualapk/internal/VAInstrumentation;
    :goto_0
    return-void

    .line 199
    .restart local v1    # "baseInstrumentation":Landroid/app/Instrumentation;
    :cond_1
    iput-object v1, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v1    # "baseInstrumentation":Landroid/app/Instrumentation;
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private hookSystemServices()V
    .locals 6

    .prologue
    .line 162
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_2

    .line 163
    const-class v3, Landroid/app/ActivityManager;

    const/4 v4, 0x0

    const-string v5, "IActivityManagerSingleton"

    invoke-static {v3, v4, v5}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Singleton;

    .line 167
    .local v1, "defaultSingleton":Landroid/util/Singleton;, "Landroid/util/Singleton<Landroid/app/IActivityManager;>;"
    :goto_0
    invoke-virtual {v1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 169
    .local v0, "activityManagerProxy":Landroid/app/IActivityManager;
    invoke-static {}, Lcom/game91/core/instant/virtualapk/Systems;->isHook()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    invoke-virtual {v1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IActivityManager;

    invoke-static {p0, v3}, Lcom/game91/core/instant/virtualapk/delegate/ActivityManagerProxy;->newInstance(Lcom/game91/core/instant/virtualapk/PluginManager;Landroid/app/IActivityManager;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mInstance"

    invoke-static {v3, v1, v4, v0}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    :cond_0
    invoke-virtual {v1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    .line 177
    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mActivityManager:Landroid/app/IActivityManager;

    .line 182
    .end local v0    # "activityManagerProxy":Landroid/app/IActivityManager;
    .end local v1    # "defaultSingleton":Landroid/util/Singleton;, "Landroid/util/Singleton<Landroid/app/IActivityManager;>;"
    :cond_1
    :goto_1
    return-void

    .line 165
    :cond_2
    const-class v3, Landroid/app/ActivityManagerNative;

    const/4 v4, 0x0

    const-string v5, "gDefault"

    invoke-static {v3, v4, v5}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Singleton;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "defaultSingleton":Landroid/util/Singleton;, "Landroid/util/Singleton<Landroid/app/IActivityManager;>;"
    goto :goto_0

    .line 179
    .end local v1    # "defaultSingleton":Landroid/util/Singleton;, "Landroid/util/Singleton<Landroid/app/IActivityManager;>;"
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private prepare()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/game91/core/instant/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/game91/core/instant/virtualapk/Systems;->sHostContext:Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Lcom/game91/core/instant/virtualapk/PluginManager;->hookInstrumentationAndHandler()V

    .line 113
    invoke-direct {p0}, Lcom/game91/core/instant/virtualapk/PluginManager;->hookSystemServices()V

    .line 114
    invoke-direct {p0}, Lcom/game91/core/instant/virtualapk/PluginManager;->hookDataBindingUtil()V

    .line 115
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/game91/core/instant/virtualapk/PluginManager$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/game91/core/instant/virtualapk/PluginManager$Callback;

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doInit(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    .local v0, "app":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 92
    iput-object p1, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    .line 96
    .end local v0    # "app":Landroid/content/Context;
    :goto_0
    invoke-direct {p0}, Lcom/game91/core/instant/virtualapk/PluginManager;->prepare()V

    .line 97
    invoke-virtual {p0}, Lcom/game91/core/instant/virtualapk/PluginManager;->init()V

    .line 98
    return-void

    .line 94
    .restart local v0    # "app":Landroid/content/Context;
    :cond_0
    check-cast v0, Landroid/app/Application;

    .end local v0    # "app":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public getAllLoadedPlugins()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;>;"
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    return-object v0
.end method

.method public getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mComponentsHandler:Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    return-object v0
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized getIContentProvider()Landroid/content/IContentProvider;
    .locals 1

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mIContentProvider:Landroid/content/IContentProvider;

    if-nez v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/game91/core/instant/virtualapk/PluginManager;->hookIContentProviderAsNeeded()V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mIContentProvider:Landroid/content/IContentProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 281
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    return-object v0
.end method

.method public getLoadedPlugin(Landroid/content/Intent;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 276
    invoke-static {p1}, Lcom/game91/core/instant/virtualapk/utils/PluginUtil;->getComponent(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 277
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v1

    return-object v1
.end method

.method public getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    invoke-direct {v0, p0}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;-><init>(Lcom/game91/core/instant/virtualapk/PluginManager;)V

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mComponentsHandler:Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    .line 119
    invoke-static {}, Lcom/game91/core/instant/virtualapk/utils/RunUtil;->getThreadPool()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/game91/core/instant/virtualapk/PluginManager$1;

    invoke-direct {v1, p0}, Lcom/game91/core/instant/virtualapk/PluginManager$1;-><init>(Lcom/game91/core/instant/virtualapk/PluginManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public loadPlugin(Ljava/io/File;)V
    .locals 5
    .param p1, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "error : apk is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, p1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->create(Lcom/game91/core/instant/virtualapk/PluginManager;Landroid/content/Context;Ljava/io/File;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v1

    .line 261
    .local v1, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v1, :cond_3

    .line 262
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    monitor-enter v3

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game91/core/instant/virtualapk/PluginManager$Callback;

    invoke-interface {v2, v1}, Lcom/game91/core/instant/virtualapk/PluginManager$Callback;->onAddedLoadedPlugin(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-virtual {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->invokeApplication()V

    .line 273
    return-void

    .line 267
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 271
    .end local v0    # "i":I
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load plugin which is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .line 397
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v0, p1, p2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 398
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 399
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 403
    .end local v0    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    return-object v1
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .line 363
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v0, p1, p2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 364
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 365
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 369
    .end local v0    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    return-object v1
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .line 380
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v0, p1, p2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 381
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 382
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 386
    .end local v0    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    return-object v1
.end method

.method public resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 323
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .line 324
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v0, p1, p2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 325
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 330
    .end local v0    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 345
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .line 346
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v0, p1, p2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 347
    .local v1, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_0

    .line 352
    .end local v0    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .end local v1    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 334
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/PluginManager;->mPlugins:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .line 335
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v0, p1, p2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 336
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 341
    .end local v0    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
