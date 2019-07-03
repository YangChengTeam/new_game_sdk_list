.class public Lcom/game91/framework/act/PermissionActivity;
.super Landroid/app/Activity;
.source "PermissionActivity.java"


# instance fields
.field mPermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/game91/framework/act/PermissionActivity;->mPermissionMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getGameActivityName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gameMainActivity"

    invoke-static {p0, v2}, Lcom/game91/framework/util/DeviceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/game91/framework/act/PermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 35
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/game91/framework/act/PermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 36
    .local v5, "ps":[Ljava/lang/String;
    array-length v7, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v2, v5, v6

    .line 37
    .local v2, "p":Ljava/lang/String;
    sget-object v8, Lcom/game91/framework/act/PerManifest;->permissionName:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 38
    iget-object v8, p0, Lcom/game91/framework/act/PermissionActivity;->mPermissionMap:Ljava/util/HashMap;

    sget-object v9, Lcom/game91/framework/act/PerManifest;->permissionGroup:Ljava/util/List;

    sget-object v10, Lcom/game91/framework/act/PerManifest;->permissionName:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 41
    .end local v2    # "p":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/game91/framework/act/PermissionActivity;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v3, "permissionItems":Ljava/util/List;, "Ljava/util/List<Lcom/game91/permissions/PermissionItem;>;"
    iget-object v6, p0, Lcom/game91/framework/act/PermissionActivity;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    .local v1, "key":Ljava/lang/String;
    new-instance v8, Lcom/game91/permissions/PermissionItem;

    iget-object v6, p0, Lcom/game91/framework/act/PermissionActivity;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v8, v6, v1}, Lcom/game91/permissions/PermissionItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 75
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "permissionItems":Ljava/util/List;, "Ljava/util/List<Lcom/game91/permissions/PermissionItem;>;"
    .end local v5    # "ps":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 46
    .restart local v3    # "permissionItems":Ljava/util/List;, "Ljava/util/List<Lcom/game91/permissions/PermissionItem;>;"
    .restart local v5    # "ps":[Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/game91/permissions/HiPermission;->create(Landroid/content/Context;)Lcom/game91/permissions/HiPermission;

    move-result-object v6

    const-string v7, "\u6388\u6743\u63d0\u793a"

    .line 47
    invoke-virtual {v6, v7}, Lcom/game91/permissions/HiPermission;->title(Ljava/lang/String;)Lcom/game91/permissions/HiPermission;

    move-result-object v6

    const-string v7, "\u9700\u8981\u83b7\u5f97\u4ee5\u4e0b\u6743\u9650\u624d\u80fd\u5f00\u59cb\u6e38\u620f"

    .line 48
    invoke-virtual {v6, v7}, Lcom/game91/permissions/HiPermission;->msg(Ljava/lang/String;)Lcom/game91/permissions/HiPermission;

    move-result-object v6

    .line 49
    invoke-virtual {v6, v3}, Lcom/game91/permissions/HiPermission;->permissions(Ljava/util/List;)Lcom/game91/permissions/HiPermission;

    move-result-object v6

    new-instance v7, Lcom/game91/framework/act/PermissionActivity$1;

    invoke-direct {v7, p0}, Lcom/game91/framework/act/PermissionActivity$1;-><init>(Lcom/game91/framework/act/PermissionActivity;)V

    .line 50
    invoke-virtual {v6, v7}, Lcom/game91/permissions/HiPermission;->checkMutiPermission(Lcom/game91/permissions/PermissionCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 77
    .end local v3    # "permissionItems":Ljava/util/List;, "Ljava/util/List<Lcom/game91/permissions/PermissionItem;>;"
    .end local v5    # "ps":[Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_2
.end method
