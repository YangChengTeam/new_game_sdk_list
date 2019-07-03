.class public final Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
.super Ljava/lang/Object;
.source "LoadedPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LoadedPlugin"


# instance fields
.field private mActivityInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Landroid/app/Application;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mHostContext:Landroid/content/Context;

.field private mInstrumentationInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocation:Ljava/lang/String;

.field private final mNativeLibDir:Ljava/io/File;

.field private final mPackage:Landroid/content/pm/PackageParser$Package;

.field private final mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageManager:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;

.field private mPluginContext:Landroid/content/Context;

.field private mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

.field private mProviderInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiverInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;

.field private mServiceInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/game91/core/instant/virtualapk/PluginManager;Landroid/content/Context;Ljava/io/File;)V
    .locals 21
    .param p1, "pluginManager"    # Lcom/game91/core/instant/virtualapk/PluginManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    .line 153
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    .line 154
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mLocation:Ljava/lang/String;

    .line 155
    const/16 v17, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/game91/core/instant/virtualapk/utils/PackageParserCompat;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 157
    new-instance v17, Landroid/content/pm/PackageInfo;

    invoke-direct/range {v17 .. v17}, Landroid/content/pm/PackageInfo;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 161
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x1b

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 166
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 168
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "plugin has already been loaded : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 164
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_0

    .line 170
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Landroid/content/pm/PermissionInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 173
    new-instance v17, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;-><init>(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageManager:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;

    .line 174
    new-instance v17, Lcom/game91/core/instant/virtualapk/internal/PluginContext;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/game91/core/instant/virtualapk/internal/PluginContext;-><init>(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    .line 175
    const-string v17, "valibs"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mNativeLibDir:Ljava/io/File;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->createResources(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mNativeLibDir:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->createClassLoader(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mClassLoader:Ljava/lang/ClassLoader;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/game91/core/instant/virtualapk/utils/WebViewResourceHelper;->addChromeResourceIfNeeded(Landroid/content/Context;)Z

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->tryToCopyNativeLib(Ljava/io/File;)V

    .line 185
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v9, "instrumentations":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/pm/InstrumentationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Instrumentation;

    .line 187
    .local v8, "instrumentation":Landroid/content/pm/PackageParser$Instrumentation;
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v18

    iget-object v0, v8, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 189
    .end local v8    # "instrumentation":Landroid/content/pm/PackageParser$Instrumentation;
    :cond_2
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mInstrumentationInfos:Ljava/util/Map;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 193
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v5, "activityInfos":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Activity;

    .line 195
    .local v4, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-virtual {v4}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v18

    iget-object v0, v4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 197
    .end local v4    # "activity":Landroid/content/pm/PackageParser$Activity;
    :cond_3
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 201
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v16, "serviceInfos":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/pm/ServiceInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$Service;

    .line 203
    .local v15, "service":Landroid/content/pm/PackageParser$Service;
    invoke-virtual {v15}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v18

    iget-object v0, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 205
    .end local v15    # "service":Landroid/content/pm/PackageParser$Service;
    :cond_4
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mServiceInfos:Ljava/util/Map;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 209
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v12, "providers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ProviderInfo;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 211
    .local v11, "providerInfos":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageParser$Provider;

    .line 212
    .local v10, "provider":Landroid/content/pm/PackageParser$Provider;
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-virtual {v10}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v18

    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 215
    .end local v10    # "provider":Landroid/content/pm/PackageParser$Provider;
    :cond_5
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mProviders:Ljava/util/Map;

    .line 216
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mProviderInfos:Ljava/util/Map;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Landroid/content/pm/ProviderInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 220
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v14, "receivers":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageParser$Activity;

    .line 222
    .local v13, "receiver":Landroid/content/pm/PackageParser$Activity;
    invoke-virtual {v13}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v18

    iget-object v0, v13, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-class v18, Landroid/content/BroadcastReceiver;

    invoke-virtual/range {p0 .. p0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v19

    invoke-virtual {v13}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/BroadcastReceiver;

    .line 225
    .local v7, "br":Landroid/content/BroadcastReceiver;
    iget-object v0, v13, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 226
    .local v6, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_5

    .line 229
    .end local v6    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v7    # "br":Landroid/content/BroadcastReceiver;
    .end local v13    # "receiver":Landroid/content/pm/PackageParser$Activity;
    :cond_7
    invoke-static {v14}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mReceiverInfos:Ljava/util/Map;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 231
    return-void
.end method

.method static synthetic access$1000(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mInstrumentationInfos:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;Landroid/app/Application;)Landroid/app/Application;
    .locals 0
    .param p0, "x0"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .param p1, "x1"    # Landroid/app/Application;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p0, "x0"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    return-object v0
.end method

.method static synthetic access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;
    .locals 1
    .param p0, "x0"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;ZLandroid/app/Instrumentation;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/app/Instrumentation;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mReceiverInfos:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mServiceInfos:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mProviderInfos:Ljava/util/Map;

    return-object v0
.end method

.method private static chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 128
    .local p3, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public static create(Lcom/game91/core/instant/virtualapk/PluginManager;Landroid/content/Context;Ljava/io/File;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .locals 1
    .param p0, "pluginManager"    # Lcom/game91/core/instant/virtualapk/PluginManager;
    .param p1, "host"    # Landroid/content/Context;
    .param p2, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-direct {v0, p0, p1, p2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;-><init>(Lcom/game91/core/instant/virtualapk/PluginManager;Landroid/content/Context;Ljava/io/File;)V

    return-object v0
.end method

.method private static createAssetManager(Landroid/content/Context;Ljava/io/File;)Landroid/content/res/AssetManager;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apk"    # Ljava/io/File;

    .prologue
    .line 101
    :try_start_0
    const-class v2, Landroid/content/res/AssetManager;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 102
    .local v0, "am":Landroid/content/res/AssetManager;
    const-class v2, Landroid/content/res/AssetManager;

    const-string v3, "addAssetPath"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v0    # "am":Landroid/content/res/AssetManager;
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createClassLoader(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apk"    # Ljava/io/File;
    .param p2, "libsDir"    # Ljava/io/File;
    .param p3, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 84
    const-string v4, "dex"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 85
    .local v0, "dexOutputDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "dexOutputPath":Ljava/lang/String;
    new-instance v3, Ldalvik/system/DexClassLoader;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v1, v5, p3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 90
    .local v3, "loader":Ldalvik/system/DexClassLoader;
    :try_start_0
    invoke-static {v3}, Lcom/game91/core/instant/virtualapk/utils/DexUtil;->insertDex(Ldalvik/system/DexClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-object v3

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static createResources(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apk"    # Ljava/io/File;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 117
    .local v1, "hostResources":Landroid/content/res/Resources;
    invoke-static {p0, p1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->createAssetManager(Landroid/content/Context;Ljava/io/File;)Landroid/content/res/AssetManager;

    move-result-object v0

    .line 118
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    new-instance v2, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$1;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4, p2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$1;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Ljava/lang/String;)V

    return-object v2
.end method

.method private makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;
    .locals 4
    .param p1, "forceDefaultAppClass"    # Z
    .param p2, "instrumentation"    # Landroid/app/Instrumentation;

    .prologue
    .line 377
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    .line 392
    :goto_0
    return-object v2

    .line 381
    :cond_0
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 382
    .local v0, "appClass":Ljava/lang/String;
    if-nez p1, :cond_1

    if-nez v0, :cond_2

    .line 383
    :cond_1
    const-string v0, "android.app.Application"

    .line 387
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2, v2, v0, v3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v2

    iput-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    .line 388
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    invoke-virtual {p2, v2}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 389
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private match(Landroid/content/pm/PackageParser$Component;Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "component"    # Landroid/content/pm/PackageParser$Component;
    .param p2, "target"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x1

    .line 499
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Component;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 500
    .local v0, "source":Landroid/content/ComponentName;
    if-ne v0, p2, :cond_1

    .line 507
    :cond_0
    :goto_0
    return v1

    .line 501
    :cond_1
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 502
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 503
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    .line 504
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 507
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private tryToCopyNativeLib(Ljava/io/File;)V
    .locals 3
    .param p1, "apk"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mNativeLibDir:Ljava/io/File;

    invoke-static {p1, v0, v1, v2}, Lcom/game91/core/instant/virtualapk/utils/PluginUtil;->copyNativeLib(Ljava/io/File;Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 235
    return-void
.end method


# virtual methods
.method public getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mActivityInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mHostContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    .line 306
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 307
    .local v3, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 309
    .local v2, "launcher":Landroid/content/Intent;
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 310
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 311
    .local v1, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v6, 0x0

    const-string v7, "LoadedPlugin"

    invoke-virtual {v1, v3, v2, v6, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 312
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v4}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 317
    .end local v0    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v1    # "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :goto_0
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getLeanbackLaunchIntent()Landroid/content/Intent;
    .locals 9

    .prologue
    .line 321
    iget-object v5, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 322
    .local v4, "resolver":Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 324
    .local v3, "launcher":Landroid/content/Intent;
    iget-object v5, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 325
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 326
    .local v2, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v7, 0x0

    const-string v8, "LoadedPlugin"

    invoke-virtual {v2, v4, v3, v7, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    .line 327
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 329
    const-string v5, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    .end local v0    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackageManager:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 296
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 297
    .local v1, "myUid":I
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 298
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v1, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPluginContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPluginManager()Lcom/game91/core/instant/virtualapk/PluginManager;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/game91/core/instant/virtualapk/PluginManager;

    return-object v0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;)Landroid/content/pm/ProviderInfo;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mProviderInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    return-object v0
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mReceiverInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mServiceInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    .prologue
    .line 363
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 364
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1, v2}, Lcom/game91/core/instant/virtualapk/utils/PluginUtil;->selectDefaultTheme(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 365
    return-object v0
.end method

.method public invokeApplication()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 287
    :cond_0
    new-instance v0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$2;

    invoke-direct {v0, p0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$2;-><init>(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/game91/core/instant/virtualapk/utils/RunUtil;->runOnUiThread(Ljava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 10
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

    .prologue
    .line 469
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 470
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 473
    .local v5, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 474
    .local v2, "receiver":Landroid/content/pm/PackageParser$Activity;
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 475
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 476
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 477
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 478
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v0, :cond_0

    .line 480
    iget-object v7, v2, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 481
    .local v1, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v8, 0x1

    const-string v9, "LoadedPlugin"

    invoke-virtual {v1, v5, p1, v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_2

    .line 482
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 483
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 484
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 491
    .end local v1    # "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v2    # "receiver":Landroid/content/pm/PackageParser$Activity;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-object v4
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 10
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

    .prologue
    .line 407
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 408
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 411
    .local v5, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 412
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-direct {p0, v0, v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->match(Landroid/content/pm/PackageParser$Component;Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 413
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 414
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 415
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v1, :cond_0

    .line 418
    iget-object v7, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 419
    .local v2, "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v8, 0x1

    const-string v9, "LoadedPlugin"

    invoke-virtual {v2, v5, p1, v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_2

    .line 420
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 421
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 422
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
    .end local v0    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v2    # "intentInfo":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-object v4
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 10
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

    .prologue
    .line 443
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 444
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 447
    .local v4, "resolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Service;

    .line 448
    .local v5, "service":Landroid/content/pm/PackageParser$Service;
    invoke-direct {p0, v5, v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->match(Landroid/content/pm/PackageParser$Component;Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 449
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 450
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 451
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v0, :cond_0

    .line 454
    iget-object v7, v5, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 455
    .local v1, "intentInfo":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/4 v8, 0x1

    const-string v9, "LoadedPlugin"

    invoke-virtual {v1, v4, p1, v8, v9}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_2

    .line 456
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 457
    .restart local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 458
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 465
    .end local v1    # "intentInfo":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "service":Landroid/content/pm/PackageParser$Service;
    :cond_3
    return-object v3
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 398
    .local v0, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    :cond_0
    const/4 v2, 0x0

    .line 403
    :goto_0
    return-object v2

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 403
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p2, v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    goto :goto_0
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 495
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    return-object v0
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 434
    .local v0, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    :cond_0
    const/4 v2, 0x0

    .line 439
    :goto_0
    return-object v2

    .line 438
    :cond_1
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 439
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p2, v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 5
    .param p1, "resid"    # I

    .prologue
    .line 370
    :try_start_0
    const-class v1, Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    const-string v3, "mThemeResId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "newResources"    # Landroid/content/res/Resources;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->mResources:Landroid/content/res/Resources;

    .line 259
    return-void
.end method
