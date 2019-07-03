.class public Lcom/game91/core/instant/virtualapk/internal/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final COMBINE_CLASSLOADER:Z = true

.field public static final COMBINE_RESOURCES:Z = false

.field public static DEBUG:Z = false

.field public static final KEY_IS_PLUGIN:Ljava/lang/String; = "isPlugin"

.field public static final KEY_TARGET_ACTIVITY:Ljava/lang/String; = "target.activity"

.field public static final KEY_TARGET_PACKAGE:Ljava/lang/String; = "target.package"

.field public static final NATIVE_DIR:Ljava/lang/String; = "valibs"

.field public static final OPTIMIZE_DIR:Ljava/lang/String; = "dex"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/game91/core/instant/virtualapk/internal/Constants;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
