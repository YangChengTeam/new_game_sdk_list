.class Lu/aly/bs$3;
.super Lorg/json/JSONObject;
.source "StoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/bs;->b(Lu/aly/aw;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/aw;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lu/aly/bs;


# direct methods
.method constructor <init>(Lu/aly/bs;Lu/aly/aw;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 455
    iput-object p1, p0, Lu/aly/bs$3;->c:Lu/aly/bs;

    iput-object p2, p0, Lu/aly/bs$3;->a:Lu/aly/aw;

    iput-object p3, p0, Lu/aly/bs$3;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 457
    iget-object v0, p0, Lu/aly/bs$3;->c:Lu/aly/bs;

    iget-object v1, p0, Lu/aly/bs$3;->a:Lu/aly/aw;

    iget-object v2, p0, Lu/aly/bs$3;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1, p0, v2}, Lu/aly/bs;->b(Lu/aly/bs;Lu/aly/aw;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 458
    return-void
.end method
