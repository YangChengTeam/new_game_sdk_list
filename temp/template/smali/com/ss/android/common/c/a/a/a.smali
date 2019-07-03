.class public Lcom/ss/android/common/c/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/common/c/a/a/c;


# static fields
.field private static b:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/common/c/a/a/a;->a:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/ss/android/common/c/a/a/a;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ss/android/common/c/a/a/a;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 25
    sget-object v0, Lcom/ss/android/common/c/a/a/a;->b:[Ljava/lang/String;

    .line 37
    :goto_0
    return-object v0

    .line 28
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/c/a/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/c/b/a;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 32
    :cond_1
    sput-object v0, Lcom/ss/android/common/c/a/a/a;->b:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    const/4 v0, 0x0

    goto :goto_0
.end method
