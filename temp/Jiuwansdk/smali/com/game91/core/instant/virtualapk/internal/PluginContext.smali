.class Lcom/game91/core/instant/virtualapk/internal/PluginContext;
.super Landroid/content/ContextWrapper;
.source "PluginContext.java"


# instance fields
.field private final mPlugin:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;


# direct methods
.method public constructor <init>(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)V
    .locals 1
    .param p1, "plugin"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getPluginManager()Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game91/core/instant/virtualapk/PluginManager;->getHostContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContext;->mPlugin:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .line 37
    return-void
.end method

.method private getHostContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/game91/core/instant/virtualapk/internal/PluginContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContext;->mPlugin:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContext;->mPlugin:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContext;->mPlugin:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;

    invoke-direct {p0}, Lcom/game91/core/instant/virtualapk/internal/PluginContext;->getHostContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/game91/core/instant/virtualapk/internal/PluginContentResolver;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContext;->mPlugin:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getCodePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContext;->mPlugin:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContext;->mPlugin:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContext;->mPlugin:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContext;->mPlugin:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/game91/core/instant/virtualapk/internal/PluginContext;->getHostContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 88
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/game91/core/instant/virtualapk/internal/PluginContext;->getHostContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContext;->mPlugin:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/PluginContext;->mPlugin:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-virtual {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getPluginManager()Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getComponentsHandler()Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;

    move-result-object v0

    .line 113
    .local v0, "componentsHandler":Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;
    invoke-virtual {v0, p1}, Lcom/game91/core/instant/virtualapk/internal/ComponentsHandler;->transformIntentToExplicitAsNeeded(Landroid/content/Intent;)Landroid/content/Intent;

    .line 114
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method
