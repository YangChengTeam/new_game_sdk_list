.class public Lcom/bytedance/common/utility/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/common/utility/c/a$c;,
        Lcom/bytedance/common/utility/c/a$a;,
        Lcom/bytedance/common/utility/c/a$b;
    }
.end annotation


# static fields
.field static final a:Lcom/bytedance/common/utility/c/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 37
    new-instance v0, Lcom/bytedance/common/utility/c/a$c;

    invoke-direct {v0}, Lcom/bytedance/common/utility/c/a$c;-><init>()V

    sput-object v0, Lcom/bytedance/common/utility/c/a;->a:Lcom/bytedance/common/utility/c/a$b;

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/bytedance/common/utility/c/a$a;

    invoke-direct {v0}, Lcom/bytedance/common/utility/c/a$a;-><init>()V

    sput-object v0, Lcom/bytedance/common/utility/c/a;->a:Lcom/bytedance/common/utility/c/a$b;

    goto :goto_0
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    sget-object v0, Lcom/bytedance/common/utility/c/a;->a:Lcom/bytedance/common/utility/c/a$b;

    invoke-interface {v0, p0}, Lcom/bytedance/common/utility/c/a$b;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method
