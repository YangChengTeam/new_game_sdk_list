.class public Lcom/bytedance/common/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/common/a/a$a;
    }
.end annotation


# static fields
.field static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/common/a/a;->a:Z

    return-void
.end method

.method public static a(Landroid/app/ActivityManager;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 105
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 107
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/common/a/a$a;->a(Landroid/app/ActivityManager;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 108
    :catch_0
    move-exception v1

    goto :goto_0
.end method
