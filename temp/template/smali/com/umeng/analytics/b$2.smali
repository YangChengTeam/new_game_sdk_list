.class Lcom/umeng/analytics/b$2;
.super Lu/aly/br;
.source "InternalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/analytics/b;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/umeng/analytics/b$2;->b:Lcom/umeng/analytics/b;

    iput-object p2, p0, Lcom/umeng/analytics/b$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Lu/aly/br;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/umeng/analytics/b$2;->b:Lcom/umeng/analytics/b;

    iget-object v1, p0, Lcom/umeng/analytics/b$2;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Lcom/umeng/analytics/b;Landroid/content/Context;)V

    .line 177
    return-void
.end method
