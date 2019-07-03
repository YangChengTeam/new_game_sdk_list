.class Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;
.super Landroid/content/pm/PackageManager;
.source "LoadedPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginPackageManager"
.end annotation


# instance fields
.field private mHostPackageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;


# direct methods
.method private constructor <init>(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)V
    .locals 1

    .prologue
    .line 513
    iput-object p1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    .line 515
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$400(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .param p2, "x1"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$1;

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;-><init>(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)V

    return-void
.end method


# virtual methods
.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPackageToPreferred(Ljava/lang/String;)V

    .line 1205
    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;

    .prologue
    .line 664
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v0

    return v0
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v0

    return v0
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1220
    return-void
.end method

.method public canRequestPackageInstalls()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    return v0
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkSignatures(II)I
    .locals 1
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I

    .prologue
    .line 684
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    return v0
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public clearInstantAppCookie()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 729
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->clearInstantAppCookie()V

    .line 730
    return-void
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1225
    return-void
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public extendVerificationTimeout(IIJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "verificationCodeAtTimeout"    # I
    .param p3, "millisecondsToDelay"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->extendVerificationTimeout(IIJ)V

    .line 1180
    return-void
.end method

.method public getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 971
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 972
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 973
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$600(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->banner:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 976
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 982
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 983
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 984
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 985
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->banner:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 988
    .end local v0    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 949
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 950
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 951
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$600(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 954
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 959
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 960
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 961
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 962
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 965
    .end local v0    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 608
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 609
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 610
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$600(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 613
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1040
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1041
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 1042
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$600(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->logo:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1045
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1050
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1051
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 1052
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1053
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->logo:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1056
    .end local v0    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 1019
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1020
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 1021
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->banner:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1024
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1030
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1031
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 1032
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->banner:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1035
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 998
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 999
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 1000
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1003
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1008
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1009
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 1010
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1013
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 598
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 599
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 603
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1129
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1130
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 1132
    :try_start_0
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1138
    :goto_0
    return-object v1

    .line 1133
    :catch_0
    move-exception v1

    .line 1138
    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1061
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1062
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_1

    .line 1063
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v2

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->logo:I

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->logo:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1066
    :goto_1
    return-object v1

    .line 1063
    :cond_0
    const v1, 0x1080093

    goto :goto_0

    .line 1066
    :cond_1
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method

.method public getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1071
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1072
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_1

    .line 1073
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->logo:I

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->logo:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1076
    :goto_1
    return-object v1

    .line 1073
    :cond_0
    const v1, 0x1080093

    goto :goto_0

    .line 1076
    :cond_1
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method

.method public getChangedPackages(I)Landroid/content/pm/ChangedPackages;
    .locals 1
    .param p1, "i"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getChangedPackages(I)Landroid/content/pm/ChangedPackages;

    move-result-object v0

    return-object v0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 939
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 940
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 941
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 944
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1194
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1195
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$400(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1199
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getInstantAppCookie()[B
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 723
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getInstantAppCookie()[B

    move-result-object v0

    return-object v0
.end method

.method public getInstantAppCookieMaxBytes()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 717
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getInstantAppCookieMaxBytes()I

    move-result v0

    return v0
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 924
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 925
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 926
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1000(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/InstrumentationInfo;

    .line 929
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 552
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 553
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    .line 557
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method public getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 563
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 564
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getLeanbackLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    .line 568
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 694
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getPackageGids(Ljava/lang/String;I)[I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "i"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 532
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 533
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 534
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$500(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 537
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 520
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 521
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 522
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$500(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 525
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getPackageInstaller()Landroid/content/pm/PackageInstaller;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1281
    const-class v1, Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "getPackageUid"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    .line 1282
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1281
    invoke-static {v1, v2, v3, v4, v5}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->invokeNoException(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1283
    .local v0, "uid":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1284
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "uid":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1286
    .restart local v0    # "uid":Ljava/lang/Object;
    :cond_0
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 689
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 1
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1229
    .local p1, "outFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPreferredPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 638
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 639
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 640
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$900(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 643
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 618
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 619
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 620
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$700(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 623
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1143
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1144
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 1145
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1148
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1153
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1154
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 1155
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1158
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 2
    .param p1, "appPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1163
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1164
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 1165
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1168
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 628
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 629
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 630
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$800(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 633
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getSharedLibraries(I)Ljava/util/List;
    .locals 1
    .param p1, "i"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getSharedLibraries(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1109
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1110
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 1111
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1114
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "density"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 1088
    :try_start_0
    const-class v2, Landroid/content/pm/PackageManager;

    const-string v3, "getUserBadgeForDensity"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/UserHandle;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1089
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1090
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "badgeLocation"    # Landroid/graphics/Rect;
    .param p4, "badgeDensity"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1119
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1120
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 1121
    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$1100(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 1124
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    goto :goto_0
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 762
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInstantApp()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    return v0
.end method

.method public isInstantApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 711
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->isInstantApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 1292
    const/4 v0, 0x0

    return v0
.end method

.method public isSafeMode()Z
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    return v0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 9
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
    .line 819
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 820
    .local v2, "component":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 821
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 822
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 823
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 827
    :cond_0
    if-eqz v2, :cond_2

    .line 828
    iget-object v7, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v7}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v4

    .line 829
    .local v4, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v4, :cond_2

    .line 830
    invoke-virtual {v4, v2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getReceiverInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 831
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 832
    new-instance v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {v6}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 833
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iput-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 834
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/content/pm/ResolveInfo;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 851
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_0
    return-object v1

    .line 839
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .local v1, "all":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v7}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/game91/core/instant/virtualapk/PluginManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 842
    .local v5, "pluginResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 843
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 846
    :cond_3
    iget-object v7, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, p1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 847
    .local v3, "hostResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 848
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 919
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 934
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 9
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
    .line 777
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 778
    .local v2, "component":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 779
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 780
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 781
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 785
    :cond_0
    if-eqz v2, :cond_2

    .line 786
    iget-object v7, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v7}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v4

    .line 787
    .local v4, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v4, :cond_2

    .line 788
    invoke-virtual {v4, v2}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 789
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 790
    new-instance v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {v6}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 791
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iput-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 792
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/content/pm/ResolveInfo;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 809
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_0
    return-object v1

    .line 797
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v1, "all":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v7}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/game91/core/instant/virtualapk/PluginManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 800
    .local v5, "pluginResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 801
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 804
    :cond_3
    iget-object v7, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 805
    .local v3, "hostResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 806
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .param p1, "caller"    # Landroid/content/ComponentName;
    .param p2, "specifics"    # [Landroid/content/Intent;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 814
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

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
    .line 904
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 9
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
    .line 866
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 867
    .local v1, "component":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 868
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 869
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 870
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 874
    :cond_0
    if-eqz v1, :cond_2

    .line 875
    iget-object v7, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v7}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v3

    .line 876
    .local v3, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v3, :cond_2

    .line 877
    invoke-virtual {v3, v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v6

    .line 878
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v6, :cond_2

    .line 879
    new-instance v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 880
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iput-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 881
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/content/pm/ResolveInfo;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 898
    .end local v3    # "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    :goto_0
    return-object v0

    .line 886
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 888
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v7}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/game91/core/instant/virtualapk/PluginManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 889
    .local v4, "pluginResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 890
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 893
    :cond_3
    iget-object v7, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 894
    .local v2, "hostResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 895
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->removePackageFromPreferred(Ljava/lang/String;)V

    .line 1210
    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 674
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->removePermission(Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 767
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 768
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 772
    .end local v0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v0

    .restart local v0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 909
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 910
    .local v0, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    .line 914
    .end local v0    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :goto_0
    return-object v0

    .restart local v0    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 856
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/game91/core/instant/virtualapk/PluginManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 857
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 861
    .end local v0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v0

    .restart local v0    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public setApplicationCategoryHint(Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->setApplicationCategoryHint(Ljava/lang/String;I)V

    .line 1261
    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1245
    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1235
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;

    .prologue
    .line 1184
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/core/instant/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    move-result-object v0

    .line 1185
    .local v0, "plugin":Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;
    if-eqz v0, :cond_0

    .line 1190
    :goto_0
    return-void

    .line 1189
    :cond_0
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateInstantAppCookie([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 735
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->updateInstantAppCookie([B)V

    .line 736
    return-void
.end method

.method public verifyPendingInstall(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "verificationCode"    # I

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$PluginPackageManager;->mHostPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->verifyPendingInstall(II)V

    .line 1174
    return-void
.end method
