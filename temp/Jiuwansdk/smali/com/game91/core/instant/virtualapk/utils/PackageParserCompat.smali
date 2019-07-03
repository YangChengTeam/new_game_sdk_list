.class public final Lcom/game91/core/instant/virtualapk/utils/PackageParserCompat;
.super Ljava/lang/Object;
.source "PackageParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/core/instant/virtualapk/utils/PackageParserCompat$PackageParserLegacy;,
        Lcom/game91/core/instant/virtualapk/utils/PackageParserCompat$PackageParserLollipop;,
        Lcom/game91/core/instant/virtualapk/utils/PackageParserCompat$PackageParserV24;,
        Lcom/game91/core/instant/virtualapk/utils/PackageParserCompat$PackageParserPPreview;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apk"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 32
    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-nez v0, :cond_0

    .line 33
    invoke-static {p0, p1, p2}, Lcom/game91/core/instant/virtualapk/utils/PackageParserCompat$PackageParserV24;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 35
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/game91/core/instant/virtualapk/utils/PackageParserCompat$PackageParserPPreview;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 38
    invoke-static {p0, p1, p2}, Lcom/game91/core/instant/virtualapk/utils/PackageParserCompat$PackageParserLollipop;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/game91/core/instant/virtualapk/utils/PackageParserCompat$PackageParserLegacy;->parsePackage(Landroid/content/Context;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    goto :goto_0
.end method
