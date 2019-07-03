.class final Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$1;
.super Landroid/content/res/Resources;
.source "LoadedPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->createResources(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/AssetManager;
    .param p2, "x1"    # Landroid/util/DisplayMetrics;
    .param p3, "x2"    # Landroid/content/res/Configuration;

    .prologue
    .line 118
    iput-object p4, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$1;->val$packageName:Ljava/lang/String;

    invoke-super {p0, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
