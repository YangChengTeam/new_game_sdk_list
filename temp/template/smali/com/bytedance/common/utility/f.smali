.class public Lcom/bytedance/common/utility/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/common/utility/f$a;
    }
.end annotation


# static fields
.field public static final a:Z

.field public static b:Lcom/bytedance/common/utility/f$a;

.field private static c:Ljava/lang/String;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/bytedance/common/utility/f;->a:Z

    .line 259
    const-string v0, ""

    sput-object v0, Lcom/bytedance/common/utility/f;->c:Ljava/lang/String;

    .line 274
    const/4 v0, -0x1

    sput v0, Lcom/bytedance/common/utility/f;->d:I

    .line 556
    new-instance v0, Lcom/bytedance/common/utility/f$a;

    invoke-direct {v0}, Lcom/bytedance/common/utility/f$a;-><init>()V

    sput-object v0, Lcom/bytedance/common/utility/f;->b:Lcom/bytedance/common/utility/f$a;

    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 221
    if-nez p0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public static final b(Landroid/content/Context;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 250
    if-nez p0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    sget-object v0, Lcom/bytedance/common/utility/f;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    if-eqz p0, :cond_0

    .line 264
    invoke-static {p0}, Lcom/bytedance/common/utility/f;->a(Landroid/content/Context;)I

    move-result v0

    .line 265
    invoke-static {p0}, Lcom/bytedance/common/utility/f;->b(Landroid/content/Context;)I

    move-result v1

    .line 266
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/common/utility/f;->c:Ljava/lang/String;

    .line 271
    :cond_0
    sget-object v0, Lcom/bytedance/common/utility/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 277
    sget v0, Lcom/bytedance/common/utility/f;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 278
    if-eqz p0, :cond_0

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/bytedance/common/utility/f;->d:I

    .line 282
    :cond_0
    sget v0, Lcom/bytedance/common/utility/f;->d:I

    return v0
.end method
