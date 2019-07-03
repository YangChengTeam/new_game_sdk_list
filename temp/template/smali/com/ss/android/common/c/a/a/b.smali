.class public Lcom/ss/android/common/c/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ss/android/common/c/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ss/android/common/c/a/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 16
    sget-object v0, Lcom/ss/android/common/c/a/a/b;->a:Lcom/ss/android/common/c/a/a/c;

    if-nez v0, :cond_2

    .line 17
    const-class v1, Lcom/ss/android/common/c/a/a/b;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/ss/android/common/c/a/a/b;->a:Lcom/ss/android/common/c/a/a/c;

    if-nez v0, :cond_1

    .line 19
    if-nez p0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "context == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 21
    :cond_0
    :try_start_1
    sget-object v0, Lcom/ss/android/common/c/a/a/b;->a:Lcom/ss/android/common/c/a/a/c;

    if-nez v0, :cond_1

    .line 22
    new-instance v0, Lcom/ss/android/common/c/a/a/a;

    invoke-direct {v0, p0}, Lcom/ss/android/common/c/a/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ss/android/common/c/a/a/b;->a:Lcom/ss/android/common/c/a/a/c;

    .line 25
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :cond_2
    sget-object v0, Lcom/ss/android/common/c/a/a/b;->a:Lcom/ss/android/common/c/a/a/c;

    return-object v0
.end method
