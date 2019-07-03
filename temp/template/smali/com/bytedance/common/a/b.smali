.class public Lcom/bytedance/common/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/common/a/b$b;,
        Lcom/bytedance/common/a/b$a;
    }
.end annotation


# static fields
.field static final a:Lcom/bytedance/common/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 47
    new-instance v0, Lcom/bytedance/common/a/b$b;

    invoke-direct {v0, v2}, Lcom/bytedance/common/a/b$b;-><init>(Lcom/bytedance/common/a/c;)V

    sput-object v0, Lcom/bytedance/common/a/b;->a:Lcom/bytedance/common/a/b$a;

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Lcom/bytedance/common/a/b$a;

    invoke-direct {v0, v2}, Lcom/bytedance/common/a/b$a;-><init>(Lcom/bytedance/common/a/c;)V

    sput-object v0, Lcom/bytedance/common/a/b;->a:Lcom/bytedance/common/a/b$a;

    goto :goto_0
.end method

.method public static a(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/bytedance/common/a/b;->a:Lcom/bytedance/common/a/b$a;

    invoke-virtual {v0, p0}, Lcom/bytedance/common/a/b$a;->a(Landroid/app/ActivityManager$MemoryInfo;)J

    move-result-wide v0

    return-wide v0
.end method
