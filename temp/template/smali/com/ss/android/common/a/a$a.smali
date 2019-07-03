.class public Lcom/ss/android/common/a/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/common/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/ss/android/common/a/a$a;->a:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/ss/android/common/a/a$a;->b:Ljava/lang/String;

    .line 110
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ss/android/common/a/a$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/common/a/a$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ss/android/common/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 115
    return-void
.end method
