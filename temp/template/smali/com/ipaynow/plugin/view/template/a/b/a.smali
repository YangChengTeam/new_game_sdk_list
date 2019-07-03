.class public abstract Lcom/ipaynow/plugin/view/template/a/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/plugin/view/template/a/a/b;


# instance fields
.field protected context:Landroid/content/Context;

.field protected data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/a;->data:Ljava/lang/Object;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/a;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/ipaynow/plugin/view/template/a/b/a;->data:Ljava/lang/Object;

    iput-object p1, p0, Lcom/ipaynow/plugin/view/template/a/b/a;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method
