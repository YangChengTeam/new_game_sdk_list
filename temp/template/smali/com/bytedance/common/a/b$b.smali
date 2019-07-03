.class Lcom/bytedance/common/a/b$b;
.super Lcom/bytedance/common/a/b$a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/common/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/common/a/b$a;-><init>(Lcom/bytedance/common/a/c;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/common/a/c;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/bytedance/common/a/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method
