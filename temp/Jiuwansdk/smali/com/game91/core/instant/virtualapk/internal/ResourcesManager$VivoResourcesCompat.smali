.class final Lcom/game91/core/instant/virtualapk/internal/ResourcesManager$VivoResourcesCompat;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game91/core/instant/virtualapk/internal/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VivoResourcesCompat"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/res/Resources;
    .param p2, "x2"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p0, p1, p2}, Lcom/game91/core/instant/virtualapk/internal/ResourcesManager$VivoResourcesCompat;->createResources(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private static createResources(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .locals 9
    .param p0, "hostContext"    # Landroid/content/Context;
    .param p1, "hostResources"    # Landroid/content/res/Resources;
    .param p2, "assetManager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 130
    const-string v3, "android.content.res.VivoResources"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 131
    .local v1, "resourcesClazz":Ljava/lang/Class;
    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Landroid/content/res/AssetManager;

    aput-object v4, v3, v7

    const-class v4, Landroid/util/DisplayMetrics;

    aput-object v4, v3, v6

    const-class v4, Landroid/content/res/Configuration;

    aput-object v4, v3, v8

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p2, v4, v7

    .line 133
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    aput-object v5, v4, v8

    .line 131
    invoke-static {v1, v3, v4}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->invokeConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 134
    .local v0, "newResources":Landroid/content/res/Resources;
    const-string v3, "init"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    new-array v5, v6, [Ljava/lang/Object;

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 134
    invoke-static {v1, v0, v3, v4, v5}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->invokeNoException(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v3, "mThemeValues"

    invoke-static {v1, p1, v3}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getFieldNoException(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 137
    .local v2, "themeValues":Ljava/lang/Object;
    const-string v3, "mThemeValues"

    invoke-static {v1, v0, v3, v2}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->setFieldNoException(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    return-object v0
.end method
