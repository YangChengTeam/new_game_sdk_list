.class Lu/aly/bs$a$1;
.super Ljava/lang/Object;
.source "StoreHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/bs$a;->a(Lu/aly/bs$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lu/aly/bs$a;


# direct methods
.method constructor <init>(Lu/aly/bs$a;I)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lu/aly/bs$a$1;->b:Lu/aly/bs$a;

    iput p2, p0, Lu/aly/bs$a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 364
    iget v0, p0, Lu/aly/bs$a$1;->a:I

    if-lez v0, :cond_0

    .line 365
    invoke-static {}, Lu/aly/bs;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v1

    iget v0, p0, Lu/aly/bs$a$1;->a:I

    int-to-long v2, v0

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "__evp_file_of"

    .line 365
    invoke-virtual/range {v1 .. v6}, Lu/aly/m;->a(JJLjava/lang/String;)V

    .line 369
    :cond_0
    return-void
.end method
