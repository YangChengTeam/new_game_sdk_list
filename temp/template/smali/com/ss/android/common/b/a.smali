.class public Lcom/ss/android/common/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/common/b/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/bytedance/common/utility/collection/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/common/utility/collection/a",
            "<",
            "Lcom/ss/android/common/b/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ss/android/common/b/a;->a:Ljava/util/Set;

    .line 25
    new-instance v0, Lcom/bytedance/common/utility/collection/a;

    invoke-direct {v0}, Lcom/bytedance/common/utility/collection/a;-><init>()V

    sput-object v0, Lcom/ss/android/common/b/a;->b:Lcom/bytedance/common/utility/collection/a;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    sget-object v0, Lcom/ss/android/common/b/a;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ss/android/common/b/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    const-string v0, ""

    .line 69
    :goto_0
    return-object v0

    .line 55
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const/4 v0, 0x0

    .line 57
    sget-object v1, Lcom/ss/android/common/b/a;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    sget-object v4, Lcom/ss/android/common/b/a;->a:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 64
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 66
    :catch_0
    move-exception v0

    .line 69
    const-string v0, ""

    goto :goto_0

    .line 65
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 6

    .prologue
    .line 73
    sget-object v0, Lcom/ss/android/common/b/a;->b:Lcom/bytedance/common/utility/collection/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ss/android/common/b/a;->b:Lcom/bytedance/common/utility/collection/a;

    invoke-virtual {v0}, Lcom/bytedance/common/utility/collection/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    const-string v0, ""

    .line 95
    :goto_0
    return-object v0

    .line 77
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    const/4 v0, 0x0

    .line 79
    sget-object v1, Lcom/ss/android/common/b/a;->b:Lcom/bytedance/common/utility/collection/a;

    invoke-virtual {v1}, Lcom/bytedance/common/utility/collection/a;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/common/b/a$a;

    .line 80
    if-eqz v0, :cond_2

    sget-object v4, Lcom/ss/android/common/b/a;->a:Ljava/util/Set;

    .line 81
    invoke-interface {v0}, Lcom/ss/android/common/b/a$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 82
    invoke-interface {v0}, Lcom/ss/android/common/b/a$a;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    sget-object v4, Lcom/ss/android/common/b/a;->b:Lcom/bytedance/common/utility/collection/a;

    invoke-virtual {v4}, Lcom/bytedance/common/utility/collection/a;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_3

    .line 84
    invoke-interface {v0}, Lcom/ss/android/common/b/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 90
    goto :goto_1

    .line 86
    :cond_3
    invoke-interface {v0}, Lcom/ss/android/common/b/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 92
    :catch_0
    move-exception v0

    .line 95
    const-string v0, ""

    goto :goto_0

    .line 91
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method
